-- ============================================================================
-- SHIVAMOS - SEED DATA FOR HOTEL NEW SHIVAM INN
-- CLIENT: HOTEL NEW SHIVAM INN, MOTIJHEEL, MUZAFFARPUR, BIHAR
-- ============================================================================

-- 1. Initial Hotel Configuration
INSERT INTO hotel_settings (
    id,
    hotel_name,
    tagline,
    address_line1,
    address_line2,
    city,
    state,
    country,
    pincode,
    phone_primary,
    phone_secondary,
    email,
    gstin, -- Left NULL for administrator to enter verified GSTIN
    cgst_rate_percent,
    sgst_rate_percent,
    igst_rate_percent,
    currency_code,
    currency_symbol,
    timezone,
    invoice_prefix,
    next_invoice_number,
    check_in_time_default,
    check_out_time_default,
    invoice_footer_text
) VALUES (
    '00000000-0000-0000-0000-000000000001',
    'Hotel New Shivam Inn',
    'One Hotel. Every Operation. One System.',
    'B.C. Plaza, opposite Jaandar Shoes & Sanjay Opticals',
    'Motijheel, Muzaffarpur',
    'Muzaffarpur',
    'Bihar',
    'India',
    '842001',
    '8235045671',
    '8235045672',
    'contact@hotelnewshivaminn.com',
    NULL,
    2.50,
    2.50,
    5.00,
    'INR',
    '₹',
    'Asia/Kolkata',
    'NSI-',
    1540,
    '12:00:00',
    '11:00:00',
    'Thank you for staying at Hotel New Shivam Inn! Contact: 8235045671 / 8235045672'
) ON CONFLICT (id) DO NOTHING;

-- 2. Room Categories with Tariffs in integer Paise
-- Elegant Class: Single INR 1,890 (189000 paise), Double INR 2,190 (219000 paise)
INSERT INTO room_categories (id, name, description, base_single_tariff_paise, base_double_tariff_paise, extra_bed_tariff_paise, max_occupancy_adults, max_occupancy_children)
VALUES 
    ('11111111-1111-1111-1111-111111111111', 'Elegant Class', 'Comfortable air-conditioned room with premium bedding and work desk', 189000, 219000, 50000, 2, 1),
    ('22222222-2222-2222-2222-222222222222', 'Royal Class', 'Spacious executive room with enhanced amenities and seating lounge', 220000, 249000, 50000, 2, 1),
    ('33333333-3333-3333-3333-333333333333', 'Corporate Class', 'Business executive suite equipped for corporate guests and extended stays', 270000, 339000, 60000, 3, 2),
    ('44444444-4444-4444-4444-444444444444', 'Suite Room', 'Luxury master suite with separate living area, king bed, and deluxe bath', 450000, 550000, 80000, 4, 2)
ON CONFLICT (name) DO NOTHING;

-- 3. Confirmed Elegant Class Rooms (9 Rooms)
-- Floor 2: 201, 204, 205
-- Floor 3: 301, 304, 305
-- Floor 4: 401, 404, 405
-- Note: Remaining 11 rooms are left unconfigured for the hotel administrator to set up.
INSERT INTO rooms (room_number, floor_number, category_id, occupancy_status, housekeeping_status, maintenance_status, is_active, notes)
VALUES
    ('201', 2, '11111111-1111-1111-1111-111111111111', 'available', 'clean', 'normal', true, 'Confirmed Elegant Class room'),
    ('204', 2, '11111111-1111-1111-1111-111111111111', 'available', 'clean', 'normal', true, 'Confirmed Elegant Class room'),
    ('205', 2, '11111111-1111-1111-1111-111111111111', 'available', 'clean', 'normal', true, 'Confirmed Elegant Class room'),
    ('301', 3, '11111111-1111-1111-1111-111111111111', 'available', 'clean', 'normal', true, 'Confirmed Elegant Class room'),
    ('304', 3, '11111111-1111-1111-1111-111111111111', 'available', 'clean', 'normal', true, 'Confirmed Elegant Class room'),
    ('305', 3, '11111111-1111-1111-1111-111111111111', 'available', 'clean', 'normal', true, 'Confirmed Elegant Class room'),
    ('401', 4, '11111111-1111-1111-1111-111111111111', 'available', 'clean', 'normal', true, 'Confirmed Elegant Class room'),
    ('404', 4, '11111111-1111-1111-1111-111111111111', 'available', 'clean', 'normal', true, 'Confirmed Elegant Class room'),
    ('405', 4, '11111111-1111-1111-1111-111111111111', 'available', 'clean', 'normal', true, 'Confirmed Elegant Class room')
ON CONFLICT (room_number) DO NOTHING;

-- 4. Booking Sources
INSERT INTO booking_sources (name, is_ota, commission_percentage, is_active)
VALUES
    ('Walk-in', false, 0.00, true),
    ('Telephone', false, 0.00, true),
    ('WhatsApp', false, 0.00, true),
    ('Direct Website', false, 0.00, true),
    ('MakeMyTrip', true, 18.00, true),
    ('Goibibo', true, 18.00, true),
    ('Booking.com', true, 15.00, true),
    ('Agoda', true, 15.00, true)
ON CONFLICT (name) DO NOTHING;

-- 5. Standard Expense Categories
INSERT INTO expense_categories (name)
VALUES
    ('Utilities (Electricity, Water, Generator Fuel)'),
    ('Housekeeping & Guest Amenities Supplies'),
    ('Property Maintenance & Electrical Repairs'),
    ('Linen & Laundry'),
    ('Staff Refreshments & Welfare'),
    ('Administrative & Office Supplies'),
    ('Miscellaneous Operating Expenses')
ON CONFLICT (name) DO NOTHING;
