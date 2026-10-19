# ShivamOS - Security, Privacy & Authorization Architecture

**Target System:** ShivamOS  
**Client:** Hotel New Shivam Inn  
**Compliance Standard:** Indian Digital Personal Data Protection (DPDP) Act & Hospitality Security Norms  

---

## 1. Authentication & Identity Management

1. **Supabase Auth as Identity Provider:**
   - Staff accounts authenticate using email and secure password, or staff PIN on shared desktop terminals.
   - Sessions issue short-lived JWT tokens (1 hour expiry) with automatic refresh via secure local refresh tokens.
2. **Device Credential Security:**
   - Tokens on Windows Desktop are protected via DPAPI (Data Protection API) or encrypted local keystore.
   - Tokens on Android are stored inside the hardware-backed Android Keystore / EncryptedSharedPreferences.
3. **No Embedded Service-Role Secrets:**
   - The ShivamOS client application binary **only** embeds the public `anon` / publishable key and Supabase URL.
   - The Supabase `service_role` master key is strictly prohibited in frontend builds and version control.

---

## 2. Role-Based Access Control (RBAC)

ShivamOS implements 5 distinct operational roles:
1. `administrator`: Owner / General Manager. Full read/write access to all tables, hotel settings, GSTIN configuration, staff accounts, financial ledgers, and raw audit logs.
2. `manager`: Operations Manager. Oversight of front desk, housekeeping, room status, discount approvals (>10%), operational reports, and attendance. Read access to salary summaries, no modification of base pay.
3. `receptionist`: Front Desk Staff. Guest registration, reservations, check-in, checkout, bill generation, and payment recording. Discounts capped at 10%. **Strictly forbidden from viewing employee salaries, payroll, or business profit metrics.**
4. `accountant`: Financial Controller. Invoice audits, payment reconciliation, salary entries, salary advances, advance recoveries, expense logging, and tax reports.
5. `housekeeping`: Floor Attendants. Access restricted to room numbers, occupancy state, and cleaning task updates. **Cannot view guest names, phone numbers, ID proof documents, or invoices.**

---

## 3. Row Level Security (RLS) Matrix

Supabase PostgreSQL enforces RLS at the database engine level. If an unauthorized JWT attempts an operation, PostgreSQL rejects it at the query level:

| Table | `administrator` | `manager` | `receptionist` | `accountant` | `housekeeping` |
| :--- | :---: | :---: | :---: | :---: | :---: |
| `hotel_settings` | SELECT, UPDATE | SELECT | SELECT | SELECT | SELECT |
| `rooms` & `room_categories` | ALL | SELECT, UPDATE | SELECT | SELECT | SELECT, UPDATE (status) |
| `guests` | ALL | ALL | ALL | SELECT | NONE |
| `stays` & `reservations` | ALL | ALL | ALL | SELECT | SELECT (Room & Dates) |
| `invoices` & `payments` | ALL | ALL | SELECT, INSERT | ALL | NONE |
| `employees` | ALL | SELECT | NONE | ALL | NONE |
| `employee_salary_records` | ALL | SELECT (Aggregates) | NONE | ALL | NONE |
| `salary_advances` | ALL | ALL | NONE | ALL | NONE |
| `expenses` | ALL | ALL | NONE | ALL | NONE |
| `audit_logs` | SELECT | NONE | NONE | NONE | NONE |

### Example RLS Policy Definition:
```sql
-- Restrict employee salary records to Administrators and Accountants
ALTER TABLE employee_salary_records ENABLE ROW LEVEL SECURITY;

CREATE POLICY "Allow salary access to admin and accountant only"
ON employee_salary_records
FOR ALL
TO authenticated
USING (
    EXISTS (
        SELECT 1 FROM staff_profiles
        WHERE staff_profiles.id = auth.uid()
        AND staff_profiles.role IN ('administrator', 'accountant')
    )
);
```

---

## 4. Guest Privacy & Data Minimization (DPDP Act Compliance)

1. **Identity Document Retention:**
   - Identity documents (Aadhaar card images, Passport scans) uploaded for police verification are encrypted in transit and stored in a private, non-public Supabase Storage bucket (`guest-identity-docs`).
   - URLs are generated only as signed, expiring URLs (valid for 15 minutes) for authorized staff.
2. **Aadhaar Masking:**
   - Under UIDAI regulations, when Aadhaar numbers are recorded, only the last 4 digits are rendered in UI and reports (e.g., `XXXX-XXXX-1234`).
3. **Foreign National Tracking:**
   - Foreign guest passport and visa fields are rendered **only** when `is_foreign_national == true`. Indian citizens are never prompted for passport or visa details.

---

## 5. Audit Logging Architecture

Every critical action generates a non-repudiable audit event in `audit_logs`:
- Actor User ID & Role
- Action Type (`INVOICE_FINALIZED`, `DISCOUNT_APPLIED`, `SALARY_PAYMENT`, `ADVANCE_ISSUED`, `ROOM_STATUS_CHANGED`, `RESERVATION_CANCELLED`)
- Entity Name & Primary Key
- Snapshot of changes (`old_record` vs `new_record` serialized in JSONB)
- Timestamp in UTC
- Audit log records are append-only. No user—including the Administrator—has permission to delete or alter records in `audit_logs` through the application.
