# ShivamOS - Product Requirements Document (PRD)

**System Name:** ShivamOS  
**Tagline:** One Hotel. Every Operation. One System.  
**Target Client:** Hotel New Shivam Inn  
**Location:** B.C. Plaza, opposite Jaandar Shoes & Sanjay Opticals, Motijheel, Muzaffarpur, Bihar, India  
**Contact Numbers:** +91 8235045671 / +91 8235045672  
**Document Version:** 1.0.0  
**Status:** Active Production Blueprint  

---

## 1. Executive Summary & Product Identity

Hotel New Shivam Inn currently relies on physical registers, manual paper guest registration cards, carbon-copy paper invoices (historically referenced around Bill #1539), paper salary records, and fragmented offline/online booking channels. 

**ShivamOS** is an integrated, offline-first, cross-platform Hotel Management System (HMS) built specifically for Hotel New Shivam Inn. It targets **Windows Desktop** (optimized for reception desk, accounting, fast keyboard data entry, and thermal/laser invoice printing) and **Android Smartphones & Tablets** (optimized for touch-friendly operations, mobile housekeeping, floor management, and on-the-go manager oversight).

### Product vs. Hotel Branding Separation
- **Software Identity:** ShivamOS.
- **Client Identity:** Hotel New Shivam Inn.
- **Configurable White-Labeling:** The application stores hotel identity, address, phone numbers, email, GSTIN, check-in/out policies, and invoice footers in a persistent configuration table. The owner can update these details without rebuilding or modifying the application source code.
- **GSTIN Handling:** In compliance with audit requirements, the GSTIN is configurable through administrative settings. The system does not invent a fictional GSTIN.

---

## 2. Room Inventory & Tariff Structure

### 2.1 Total Room Inventory: 20 Rooms
The hotel has a total capacity of 20 physical rooms across multiple floors.

### 2.2 Room Categories & Default Tariffs (INR)
| Category | Configured Count | Single Occupancy Tariff (INR) | Double Occupancy Tariff (INR) |
| :--- | :--- | :--- | :--- |
| **Elegant Class** | 9 rooms | ₹1,890 / night | ₹2,190 / night |
| **Royal Class** | 6 rooms | ₹2,200 / night | ₹2,490 / night |
| **Corporate Class** | 4 rooms | ₹2,700 / night | ₹3,390 / night |
| **Suite Room** | 1 room | ₹4,500 / night | ₹5,500 / night |
| **Total** | **20 rooms** | — | — |

### 2.3 Confirmed Physical Room Numbers
- **Confirmed Elegant Class (9 Rooms):**
  - Floor 2: `201`, `204`, `205`
  - Floor 3: `301`, `304`, `305`
  - Floor 4: `401`, `404`, `405`
- **Unconfirmed Rooms (11 Rooms):**
  The remaining 11 physical room numbers (for Royal Class, Corporate Class, and Suite Room) are designated as unassigned inventory slots. The system provides an interactive Room Inventory Configuration UI for the Administrator to register their exact room numbers and floor assignments upon physical verification. **No fictional room numbers are fabricated.**

### 2.4 Tariff Immutability Rule
When room tariffs are modified by an Administrator in settings, all existing historical reservations, active stays, and finalized invoices **must retain the historical tariff agreed upon at the time of booking/check-in**. Historical financial records must never be modified retrospectively.

---

## 3. Operational State Dimensions (Orthogonal Tracking)

To eliminate operational ambiguity, every room tracks three distinct, orthogonal state dimensions:

1. **Occupancy State:**
   - `Available` (Unoccupied, open for check-in)
   - `Reserved` (Allocated for an upcoming confirmed arrival)
   - `Occupied` (Guest currently checked in and residing)
2. **Housekeeping State:**
   - `Clean` (Cleaned and sanitized)
   - `Cleaning Required` (Dirty, e.g. after checkout or morning turnover)
   - `Cleaning In Progress` (Housekeeper currently in room)
   - `Inspection Required` (Cleaned, awaiting supervisor sign-off)
   - `Inspected & Ready` (Fully prepared for guest entry)
3. **Maintenance State:**
   - `Normal` (All appliances and fixtures operational)
   - `Maintenance Required` (Issue logged, minor repair needed)
   - `Out of Service` (Room taken offline for repairs, uninhabitable)

> **Key Rule:** A checked-out room immediately transitions to `Occupancy: Available`, `Housekeeping: Cleaning Required`. It cannot be assigned to a new guest until Housekeeping completes cleaning and transitions it to `Clean` / `Ready`.

---

## 4. User Roles & Permission Matrix

| Module / Action | Administrator | Manager | Receptionist | Accountant / Cashier | Housekeeping |
| :--- | :---: | :---: | :---: | :---: | :---: |
| Hotel Settings & GSTIN Config | Full | View Only | None | None | None |
| Room Inventory & Tariffs | Full | View Only | View Only | View Only | View Only |
| Guest Registration & Stays | Full | Full | Full | View Only | Restricted (Room # only) |
| Check-in / Checkout | Full | Full | Full | None | None |
| Invoice Finalization | Full | Full | Full (Within Limit) | Full | None |
| Discount Approval (>10%) | Full | Full | Requires Approval | None | None |
| Payments & Cash Recording | Full | Full | Full | Full | None |
| Refunds & Adjustments | Full | Full | Restricted | Full | None |
| Employee & Staff Mgmt | Full | View Only | None | None | None |
| Salary Setup & Payroll | Full | View Only | None | Full | None |
| Salary Advances & Recovery | Full | Full | None | Full | None |
| Housekeeping Task Updates | Full | Full | View Only | None | Full |
| Maintenance Issue Reports | Full | Full | Full | None | Full |
| Expense Recording | Full | Full | None | Full | None |
| Financial Reports & Audit Logs | Full | Full | None | Full (Finances) | None |

---

## 5. Core Feature Specifications

### 5.1 Guest Registration & Digital Registration Card (GRC)
- Complies with local police verification and Indian Hospitality norms.
- Captures: Guest Full Name, Mobile, Email, Full Residential Address, Company, Designation, Company GSTIN, Purpose of Visit, Arrival Date & Time, Expected Departure Date & Time, Assigned Room, Category, Occupancy (Single/Double), Number of Adults & Children, Agreed Tariff, Meal Plan (EP/CP/MAP/AP), Payment Mode, ID Proof Type (Aadhaar, Passport, Driving License, Voter ID), ID Reference Number, Passport & Visa details (conditionally enabled only for foreign nationals), and Digital/Physical Signature zone.
- Supports Fast Walk-In registration workflow (completed in under 60 seconds).
- Generates pixel-perfect printable A4 / Letter PDF matching the physical Hotel New Shivam Inn registration card.

### 5.2 Reservation & Booking Engine
- Multi-channel source attribution: Walk-in, Phone call, WhatsApp booking, Direct Website, MakeMyTrip, Goibibo, Booking.com, Agoda.
- Overlap prevention: Transactional database checks guarantee zero double-bookings for the same room and date span.
- Supports unassigned room reservations (category-level reservations) allocated closer to arrival date.
- Explicit cancellation tracking with reason recording; records are never hard-deleted.

### 5.3 Online Booking Reconciliation
- Centralized queue for inbound online bookings.
- Idempotent tracking via `external_booking_reference` and `channel_id` to prevent duplicate imports.
- Booking conflict resolution screen for detecting rate or room inventory disparities before manual confirmation.
- Online bookings **never check in guests automatically**.

### 5.4 Check-In & Checkout Workflows
- **Check-In:** Validates room readiness (`Ready` or `Clean` and `Normal`), records actual timestamp, records advance payment, registers stay record, generates GRC.
- **Checkout:** Calculates billable nights based on local date/time policies, compiles room tariffs + incidentals + restaurant/room service charges - discounts + applicable taxes - payments received = final balance. Unpaid balance triggers mandatory supervisor override or credit tagging. On completion, stay is finalized, room marked `Cleaning Required`, and invoice locked.

### 5.5 Financial Engine & Invoicing
- **Zero Floating-Point Error:** All amounts stored as integer paise (1 INR = 100 paise) or exact decimal representations.
- **Tax Calculation:**
  - Configurable CGST (default 2.5%) and SGST (default 2.5%) for 5% combined intrastate rate.
  - Interstate IGST (5%) support where applicable.
  - Taxable value = Room Charges + Extra Services - Approved Discounts.
- **Invoice Documents:**
  - Unique sequential numbering with configurable initial series (e.g. continuing beyond historical bill 1539).
  - Indian currency formatting (₹ 1,23,456.00).
  - Indian Currency Amount in Words (e.g., "Rupees Two Thousand One Hundred Ninety and Paise Zero Only").
  - Finalized invoices are cryptographically and logically immutable. Any adjustments require credit notes/refund vouchers.

### 5.6 Payroll & Salary Advance Ledger
- Employee profiles: Designation, Mobile, Joining Date, Monthly Fixed Salary, Configured Due Day (e.g. 5th of each month).
- Monthly salary generation with status tracking: `Salary Due`, `Partially Paid`, `Paid`, `Overdue`.
- **Advance Ledger:** Dedicated double-entry advance tracking.
  - When advance is given: Recorded as cash outflow, logged in employee's advance balance.
  - When salary is paid: Deducts advance recovery up to outstanding balance. Net salary = Gross Salary - Advance Recovery - Other Deductions.
  - Advances are never counted twice (i.e. giving ₹5,000 advance on ₹18,000 salary leaves ₹13,000 net payable; the ₹5,000 is not re-expensed).
  - Over-recovery is strictly prevented by database constraints.

### 5.7 Housekeeping & Maintenance
- Real-time room status board.
- Mobile-friendly quick toggles for room attendants.
- Maintenance ticket dispatching with priority levels (`Low`, `Medium`, `High`, `Emergency`).

### 5.8 Expense Tracking
- Categories: Utilities (Electricity, Water), Hotel Supplies (Toiletries, Linens), Maintenance/Repairs, Food & Beverage, Staff Welfare, Miscellaneous.
- Direct link to payment mode (Cash from front desk drawer, Bank account, UPI).

### 5.9 Reporting & Business Analytics
- Daily Police Departure/Arrival Register report.
- Night Audit summary (Revenue, Occupancy %, RevPAR, ADR).
- Monthly GST Filing Report (GSTR-1 format ready: Invoiced amount, Taxable value, CGST, SGST, IGST).
- Cash Drawer Reconciliation (Cash collected vs. Front desk expenses).
- Pending Salary & Advance Aging Report.

### 5.10 Local SQLite Persistence & Supabase Cloud Sync
- Local persistence via **Drift (SQLite)** guarantees uninterrupted offline functionality for reception and mobile devices.
- Bidirectional synchronization with **Supabase (PostgreSQL)** when connectivity is available.
- Durable mutation queue with exponential backoff and idempotency keys prevents duplicate operations or lost records during intermittent connectivity.
