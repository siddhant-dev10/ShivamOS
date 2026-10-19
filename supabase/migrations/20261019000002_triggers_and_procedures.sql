-- ============================================================================
-- SHIVAMOS - DATABASE TRIGGERS, PROCEDURES & TRANSACTIONAL SAFEGUARDS
-- CLIENT: HOTEL NEW SHIVAM INN
-- ENGINE: PostgreSQL 15+ (Supabase)
-- ============================================================================

-- Function: Auto-update updated_at timestamp
CREATE OR REPLACE FUNCTION trigger_set_updated_at()
RETURNS TRIGGER AS $$
BEGIN
    NEW.updated_at = NOW();
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Apply updated_at trigger across all stateful tables
CREATE OR REPLACE TRIGGER set_updated_at_hotel_settings
BEFORE UPDATE ON hotel_settings
FOR EACH ROW EXECUTE FUNCTION trigger_set_updated_at();

CREATE OR REPLACE TRIGGER set_updated_at_rooms
BEFORE UPDATE ON rooms
FOR EACH ROW EXECUTE FUNCTION trigger_set_updated_at();

CREATE OR REPLACE TRIGGER set_updated_at_room_categories
BEFORE UPDATE ON room_categories
FOR EACH ROW EXECUTE FUNCTION trigger_set_updated_at();

CREATE OR REPLACE TRIGGER set_updated_at_guests
BEFORE UPDATE ON guests
FOR EACH ROW EXECUTE FUNCTION trigger_set_updated_at();

CREATE OR REPLACE TRIGGER set_updated_at_reservations
BEFORE UPDATE ON reservations
FOR EACH ROW EXECUTE FUNCTION trigger_set_updated_at();

CREATE OR REPLACE TRIGGER set_updated_at_stays
BEFORE UPDATE ON stays
FOR EACH ROW EXECUTE FUNCTION trigger_set_updated_at();

CREATE OR REPLACE TRIGGER set_updated_at_invoices
BEFORE UPDATE ON invoices
FOR EACH ROW EXECUTE FUNCTION trigger_set_updated_at();

CREATE OR REPLACE TRIGGER set_updated_at_employees
BEFORE UPDATE ON employees
FOR EACH ROW EXECUTE FUNCTION trigger_set_updated_at();

CREATE OR REPLACE TRIGGER set_updated_at_salary_records
BEFORE UPDATE ON employee_salary_records
FOR EACH ROW EXECUTE FUNCTION trigger_set_updated_at();

CREATE OR REPLACE TRIGGER set_updated_at_salary_advances
BEFORE UPDATE ON salary_advances
FOR EACH ROW EXECUTE FUNCTION trigger_set_updated_at();

-- ============================================================================
-- AUDIT LOGGING TRIGGER
-- ============================================================================
CREATE OR REPLACE FUNCTION log_critical_audit_event()
RETURNS TRIGGER AS $$
DECLARE
    v_actor_id UUID;
    v_actor_email VARCHAR(100);
BEGIN
    v_actor_id := auth.uid();
    SELECT email INTO v_actor_email FROM staff_profiles WHERE id = v_actor_id;

    IF TG_OP = 'INSERT' THEN
        INSERT INTO audit_logs (actor_id, actor_email, action, entity_name, entity_id, changes)
        VALUES (v_actor_id, v_actor_email, TG_TABLE_NAME || '_INSERT', TG_TABLE_NAME, NEW.id::text, row_to_json(NEW));
    ELSIF TG_OP = 'UPDATE' THEN
        INSERT INTO audit_logs (actor_id, actor_email, action, entity_name, entity_id, changes)
        VALUES (v_actor_id, v_actor_email, TG_TABLE_NAME || '_UPDATE', TG_TABLE_NAME, NEW.id::text, 
            json_build_object('old', row_to_json(OLD), 'new', row_to_json(NEW)));
    ELSIF TG_OP = 'DELETE' THEN
        INSERT INTO audit_logs (actor_id, actor_email, action, entity_name, entity_id, changes)
        VALUES (v_actor_id, v_actor_email, TG_TABLE_NAME || '_DELETE', TG_TABLE_NAME, OLD.id::text, row_to_json(OLD));
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

CREATE OR REPLACE TRIGGER audit_invoices
AFTER INSERT OR UPDATE ON invoices
FOR EACH ROW EXECUTE FUNCTION log_critical_audit_event();

CREATE OR REPLACE TRIGGER audit_payments
AFTER INSERT ON payments
FOR EACH ROW EXECUTE FUNCTION log_critical_audit_event();

CREATE OR REPLACE TRIGGER audit_salary_records
AFTER INSERT OR UPDATE ON employee_salary_records
FOR EACH ROW EXECUTE FUNCTION log_critical_audit_event();

CREATE OR REPLACE TRIGGER audit_salary_advances
AFTER INSERT OR UPDATE ON salary_advances
FOR EACH ROW EXECUTE FUNCTION log_critical_audit_event();

CREATE OR REPLACE TRIGGER audit_rooms
AFTER UPDATE OF occupancy_status, housekeeping_status, maintenance_status ON rooms
FOR EACH ROW EXECUTE FUNCTION log_critical_audit_event();

-- ============================================================================
-- ATOMIC INVOICE NUMBER GENERATOR
-- ============================================================================
CREATE OR REPLACE FUNCTION get_next_invoice_number()
RETURNS VARCHAR AS $$
DECLARE
    v_prefix VARCHAR(10);
    v_next_num INT;
    v_formatted VARCHAR(50);
BEGIN
    -- Atomically lock and increment the hotel_settings row
    SELECT invoice_prefix, next_invoice_number 
    INTO v_prefix, v_next_num
    FROM hotel_settings
    FOR UPDATE;

    UPDATE hotel_settings
    SET next_invoice_number = next_invoice_number + 1;

    v_formatted := v_prefix || v_next_num::text;
    RETURN v_formatted;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

-- ============================================================================
-- TRANSACTIONAL CHECKOUT PROCEDURE
-- ============================================================================
CREATE OR REPLACE FUNCTION execute_checkout_transaction(
    p_stay_id UUID,
    p_checkout_time TIMESTAMPTZ,
    p_notes TEXT DEFAULT NULL
)
RETURNS JSON AS $$
DECLARE
    v_room_id UUID;
    v_invoice_id UUID;
    v_balance BIGINT;
BEGIN
    -- 1. Lock and fetch stay
    SELECT room_id INTO v_room_id
    FROM stays
    WHERE id = p_stay_id AND status = 'active'
    FOR UPDATE;

    IF NOT FOUND THEN
        RAISE EXCEPTION 'Active stay not found for id: %', p_stay_id;
    END IF;

    -- 2. Mark stay completed
    UPDATE stays
    SET status = 'completed',
        actual_check_out_time = p_checkout_time,
        updated_at = NOW()
    WHERE id = p_stay_id;

    -- 3. Transition room occupancy to available, housekeeping to cleaning_required
    UPDATE rooms
    SET occupancy_status = 'available',
        housekeeping_status = 'cleaning_required',
        updated_at = NOW()
    WHERE id = v_room_id;

    -- 4. Create housekeeping task
    INSERT INTO housekeeping_tasks (room_id, task_type, status, priority, notes)
    VALUES (v_room_id, 'turnover_clean', 'cleaning_required', 'high', 'Checkout turnover clean');

    -- 5. Lock finalized invoice
    SELECT id, outstanding_balance_paise INTO v_invoice_id, v_balance
    FROM invoices
    WHERE stay_id = p_stay_id;

    IF FOUND THEN
        UPDATE invoices
        SET is_locked = true,
            status = CASE WHEN v_balance <= 0 THEN 'paid' ELSE 'partially_paid' END,
            updated_at = NOW()
        WHERE id = v_invoice_id;
    END IF;

    RETURN json_build_object(
        'success', true,
        'stay_id', p_stay_id,
        'room_id', v_room_id,
        'invoice_id', v_invoice_id,
        'outstanding_balance_paise', v_balance
    );
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;
