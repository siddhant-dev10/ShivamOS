-- ============================================================================
-- SHIVAMOS - ROW LEVEL SECURITY (RLS) POLICIES
-- CLIENT: HOTEL NEW SHIVAM INN
-- ENGINE: PostgreSQL 15+ (Supabase)
-- ============================================================================

-- Enable RLS across all sensitive tables
ALTER TABLE staff_profiles ENABLE ROW LEVEL SECURITY;
ALTER TABLE hotel_settings ENABLE ROW LEVEL SECURITY;
ALTER TABLE room_categories ENABLE ROW LEVEL SECURITY;
ALTER TABLE rooms ENABLE ROW LEVEL SECURITY;
ALTER TABLE room_status_history ENABLE ROW LEVEL SECURITY;
ALTER TABLE guests ENABLE ROW LEVEL SECURITY;
ALTER TABLE booking_sources ENABLE ROW LEVEL SECURITY;
ALTER TABLE reservations ENABLE ROW LEVEL SECURITY;
ALTER TABLE stays ENABLE ROW LEVEL SECURITY;
ALTER TABLE invoices ENABLE ROW LEVEL SECURITY;
ALTER TABLE invoice_items ENABLE ROW LEVEL SECURITY;
ALTER TABLE payments ENABLE ROW LEVEL SECURITY;
ALTER TABLE refunds ENABLE ROW LEVEL SECURITY;
ALTER TABLE employees ENABLE ROW LEVEL SECURITY;
ALTER TABLE employee_salary_records ENABLE ROW LEVEL SECURITY;
ALTER TABLE salary_advances ENABLE ROW LEVEL SECURITY;
ALTER TABLE salary_advance_recoveries ENABLE ROW LEVEL SECURITY;
ALTER TABLE salary_payments ENABLE ROW LEVEL SECURITY;
ALTER TABLE housekeeping_tasks ENABLE ROW LEVEL SECURITY;
ALTER TABLE maintenance_issues ENABLE ROW LEVEL SECURITY;
ALTER TABLE expense_categories ENABLE ROW LEVEL SECURITY;
ALTER TABLE expenses ENABLE ROW LEVEL SECURITY;
ALTER TABLE audit_logs ENABLE ROW LEVEL SECURITY;

-- ============================================================================
-- HELPER FUNCTIONS FOR ROLE VERIFICATION
-- ============================================================================
CREATE OR REPLACE FUNCTION current_staff_role()
RETURNS VARCHAR AS $$
    SELECT role FROM staff_profiles WHERE id = auth.uid() AND is_active = true;
$$ LANGUAGE sql STABLE SECURITY DEFINER;

CREATE OR REPLACE FUNCTION is_admin()
RETURNS BOOLEAN AS $$
    SELECT current_staff_role() = 'administrator';
$$ LANGUAGE sql STABLE SECURITY DEFINER;

CREATE OR REPLACE FUNCTION is_admin_or_manager()
RETURNS BOOLEAN AS $$
    SELECT current_staff_role() IN ('administrator', 'manager');
$$ LANGUAGE sql STABLE SECURITY DEFINER;

CREATE OR REPLACE FUNCTION is_admin_or_accountant()
RETURNS BOOLEAN AS $$
    SELECT current_staff_role() IN ('administrator', 'accountant');
$$ LANGUAGE sql STABLE SECURITY DEFINER;

CREATE OR REPLACE FUNCTION is_front_desk_authorized()
RETURNS BOOLEAN AS $$
    SELECT current_staff_role() IN ('administrator', 'manager', 'receptionist');
$$ LANGUAGE sql STABLE SECURITY DEFINER;

-- ============================================================================
-- 1. HOTEL SETTINGS POLICIES
-- ============================================================================
-- All authenticated staff can read hotel settings (needed for receipts, UI, branding)
CREATE POLICY "Allow all staff to read hotel settings"
ON hotel_settings FOR SELECT TO authenticated USING (true);

-- Only administrator can update hotel configuration
CREATE POLICY "Allow only admin to update hotel settings"
ON hotel_settings FOR UPDATE TO authenticated USING (is_admin());

-- ============================================================================
-- 2. ROOM INVENTORY POLICIES
-- ============================================================================
-- All authenticated staff can view rooms & categories
CREATE POLICY "Allow all staff to view rooms"
ON rooms FOR SELECT TO authenticated USING (true);

CREATE POLICY "Allow all staff to view room categories"
ON room_categories FOR SELECT TO authenticated USING (true);

-- Only admin can modify room categories & base tariffs
CREATE POLICY "Allow only admin to manage room categories"
ON room_categories FOR ALL TO authenticated USING (is_admin());

-- Admin & Manager can modify room inventory definitions
CREATE POLICY "Allow admin and manager to insert/delete rooms"
ON rooms FOR INSERT TO authenticated WITH CHECK (is_admin_or_manager());

CREATE POLICY "Allow admin and manager to delete rooms"
ON rooms FOR DELETE TO authenticated USING (is_admin_or_manager());

-- Front desk and housekeeping can update room operational statuses
CREATE POLICY "Allow authorized staff to update room status"
ON rooms FOR UPDATE TO authenticated USING (
    current_staff_role() IN ('administrator', 'manager', 'receptionist', 'housekeeping')
);

-- ============================================================================
-- 3. GUEST MANAGEMENT POLICIES
-- ============================================================================
-- Housekeeping cannot view guest identities; Front desk, managers, accountants, and admin can
CREATE POLICY "Allow authorized front desk to view guests"
ON guests FOR SELECT TO authenticated USING (
    current_staff_role() IN ('administrator', 'manager', 'receptionist', 'accountant')
);

CREATE POLICY "Allow front desk to register and update guests"
ON guests FOR INSERT TO authenticated WITH CHECK (is_front_desk_authorized());

CREATE POLICY "Allow front desk to modify guests"
ON guests FOR UPDATE TO authenticated USING (is_front_desk_authorized());

-- ============================================================================
-- 4. RESERVATIONS & STAYS POLICIES
-- ============================================================================
CREATE POLICY "Allow front desk to manage reservations"
ON reservations FOR ALL TO authenticated USING (is_front_desk_authorized());

CREATE POLICY "Allow front desk to manage stays"
ON stays FOR ALL TO authenticated USING (is_front_desk_authorized());

-- Housekeeping can only view room numbers and dates for cleaning turnover
CREATE POLICY "Allow housekeeping to view stay schedules"
ON stays FOR SELECT TO authenticated USING (current_staff_role() = 'housekeeping');

-- ============================================================================
-- 5. INVOICES, PAYMENTS & REFUNDS POLICIES
-- ============================================================================
CREATE POLICY "Allow front desk and accountants to read invoices"
ON invoices FOR SELECT TO authenticated USING (
    current_staff_role() IN ('administrator', 'manager', 'receptionist', 'accountant')
);

CREATE POLICY "Allow front desk to create invoices"
ON invoices FOR INSERT TO authenticated WITH CHECK (is_front_desk_authorized() OR is_admin_or_accountant());

-- Finalized invoices are locked and cannot be edited
CREATE POLICY "Allow updating invoices only if not locked"
ON invoices FOR UPDATE TO authenticated USING (
    is_locked = false AND (is_front_desk_authorized() OR is_admin_or_accountant())
);

CREATE POLICY "Allow authorized staff to record payments"
ON payments FOR INSERT TO authenticated WITH CHECK (is_front_desk_authorized() OR is_admin_or_accountant());

CREATE POLICY "Allow authorized staff to read payments"
ON payments FOR SELECT TO authenticated USING (
    current_staff_role() IN ('administrator', 'manager', 'receptionist', 'accountant')
);

-- Refunds require admin or manager authorization
CREATE POLICY "Allow only admin or manager to issue refunds"
ON refunds FOR ALL TO authenticated USING (is_admin_or_manager());

-- ============================================================================
-- 6. EMPLOYEE & SALARY LEDGER POLICIES (CONFIDENTIALITY SAFEGUARD)
-- ============================================================================
-- Receptionists and Housekeeping are strictly prohibited from reading salary data
CREATE POLICY "Allow admin and accountant full access to employees"
ON employees FOR ALL TO authenticated USING (is_admin_or_accountant());

CREATE POLICY "Allow manager read-only access to employees"
ON employees FOR SELECT TO authenticated USING (current_staff_role() = 'manager');

CREATE POLICY "Allow admin and accountant to manage salary records"
ON employee_salary_records FOR ALL TO authenticated USING (is_admin_or_accountant());

CREATE POLICY "Allow admin and accountant to manage salary advances"
ON salary_advances FOR ALL TO authenticated USING (is_admin_or_accountant());

CREATE POLICY "Allow admin and accountant to record salary payments"
ON salary_payments FOR ALL TO authenticated USING (is_admin_or_accountant());

CREATE POLICY "Allow admin and accountant to manage advance recoveries"
ON salary_advance_recoveries FOR ALL TO authenticated USING (is_admin_or_accountant());

-- ============================================================================
-- 7. HOUSEKEEPING & MAINTENANCE POLICIES
-- ============================================================================
CREATE POLICY "Allow all staff to view and update housekeeping tasks"
ON housekeeping_tasks FOR ALL TO authenticated USING (true);

CREATE POLICY "Allow all staff to view and report maintenance issues"
ON maintenance_issues FOR ALL TO authenticated USING (true);

-- ============================================================================
-- 8. EXPENSES & AUDIT LOGS
-- ============================================================================
CREATE POLICY "Allow admin and accountant to manage expenses"
ON expenses FOR ALL TO authenticated USING (is_admin_or_accountant());

CREATE POLICY "Allow manager to view expenses"
ON expenses FOR SELECT TO authenticated USING (current_staff_role() = 'manager');

-- Audit logs are strictly append-only; readable only by administrator
CREATE POLICY "Allow only administrator to view audit logs"
ON audit_logs FOR SELECT TO authenticated USING (is_admin());

CREATE POLICY "Allow system to append audit logs"
ON audit_logs FOR INSERT TO authenticated WITH CHECK (true);
