# ShivamOS - Deployment, Setup & Disaster Recovery Guide

**Product:** ShivamOS (Unified Hotel Management System)  
**Client:** Hotel New Shivam Inn  
**Target Environments:** Windows 10/11 (64-bit), Android 8.0+ (API 26+)  
**Cloud Backend:** Supabase (Managed PostgreSQL 15+, Auth, Storage, Edge Functions)  

---

## 1. Prerequisites & Toolchain Setup

### Development Environment:
- **Flutter SDK:** 3.x (Dart 3.x)
- **C++ Compiler:** Visual Studio 2022 with "Desktop development with C++" (for Windows Desktop builds) or Xcode Command Line Tools (on macOS)
- **Android SDK:** Platform tools, API 34, Android NDK (for Android APK builds)
- **Supabase CLI:** (Optional for local development / migration deployment)

---

## 2. Supabase Cloud Configuration

### 2.1 Project Creation
1. Log in to [Supabase Dashboard](https://app.supabase.com) and create a new project named `ShivamOS-HotelNewShivamInn`.
2. Select database region closest to Bihar (e.g., `AWS ap-south-1 Mumbai`).
3. Set a strong database master password and store it securely in a password manager.

### 2.2 Applying SQL Migrations
1. Navigate to the **SQL Editor** in the Supabase Dashboard.
2. Run the migration script located at `supabase/migrations/20261019000000_init_shivamos_schema.sql`.
3. Verify that all 22 tables are created with Row Level Security enabled.
4. Execute `supabase/seed.sql` to populate:
   - Initial `hotel_settings` for Hotel New Shivam Inn (address, phone numbers, tax rates).
   - The 4 room categories (Elegant, Royal, Corporate, Suite) and standard tariffs.
   - The 9 confirmed Elegant Class rooms (`201, 204, 205, 301, 304, 305, 401, 404, 405`).
   - Default booking sources (`Walk-in`, `Telephone`, `WhatsApp`, `Direct Website`, `MakeMyTrip`, `Goibibo`, `Booking.com`, `Agoda`).
   - Standard expense categories.

### 2.3 Storage Buckets Configuration
Create the following storage buckets in Supabase Storage:
1. `hotel-branding` (Public): For hotel logo and document headers.
2. `guest-identity-docs` (Private, Restricted): For uploaded guest Aadhaar/Passport scans. Enable RLS to permit access only to authenticated staff profiles.

### 2.4 Environment Configuration (`.env`)
Create an environment configuration file or inject compile-time variables:
```env
SUPABASE_URL=https://<your-supabase-project-id>.supabase.co
SUPABASE_ANON_KEY=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9...
HOTEL_TIMEZONE=Asia/Kolkata
APP_ENV=production
```

---

## 3. Building & Packaging Applications

### 3.1 Windows Desktop Release
```bash
# Fetch Flutter dependencies
flutter pub get

# Generate Drift database code and typed models
dart run build_runner build --delete-conflicting-outputs

# Build Windows executable
flutter build windows --release
```
The compiled output is located at:
`build/windows/x64/runner/Release/`
Distribute this directory with an installer or create an MSIX package using `msix:create`.

### 3.2 Android Release Build (APK / App Bundle)
```bash
# Build standalone APK for reception tablets and staff smartphones
flutter build apk --release --split-per-abi

# Output APKs located at:
# build/app/outputs/flutter-apk/app-arm64-v8a-release.apk
```

---

## 4. Hardware & Printer Configuration

### 4.1 Windows Reception Desk Setup
1. **Invoice & Document Printing:**
   - Standard A4 / Letter Laser Printer: Configured as default Windows system printer.
   - ShivamOS invokes direct printing via Windows Spooler with auto-page sizing and crisp 300 DPI vector text.
2. **Thermal Receipt Printing (Optional):**
   - 80mm ESC/POS Thermal Receipt Printers: ShivamOS supports thermal layout generation for payment receipts.

### 4.2 Android Tablet Front Desk Setup
- Connects to Wi-Fi printer via Android Print Service or shares digital PDF via WhatsApp / Email directly to guest mobile numbers.

---

## 5. Backup, Disaster Recovery & Device Replacement

### 5.1 Cloud Database Backups
- Supabase provides automated daily snapshots with 7-day retention (or Point-In-Time Recovery on Pro tiers).
- **Manual Logical Backup Command:**
  ```bash
  pg_dump -h db.<project-id>.supabase.co -U postgres -d postgres -F c -b -v -f "shivamos_backup_$(date +%Y%m%d).dump"
  ```

### 5.2 Local Device Failure & Replacement
If a reception laptop suffers hardware failure or damage:
1. Obtain a replacement Windows computer or Android tablet.
2. Install the ShivamOS application.
3. Launch ShivamOS and sign in with the Administrator or Receptionist account.
4. ShivamOS automatically initiates initial cloud hydration from Supabase, downloading:
   - Hotel settings and room inventory.
   - Active checked-in stays and upcoming reservations.
   - Invoices, payments, and employee ledger.
5. The front desk is restored and fully operational within minutes without data loss.

### 5.3 Local SQLite Backup
Staff with Administrator privileges can click **Export Database Snapshot** under `Settings -> Data & Backup`. This exports an encrypted SQLite database copy (`.db.bak`) to a designated USB drive or external folder.
