class HotelDefaults {
  // Identity
  static const String hotelName = 'Hotel New Shivam Inn';
  static const String tagline = 'One Hotel. Every Operation. One System.';
  static const String addressLine1 = 'B.C. Plaza, opposite Jaandar Shoes & Sanjay Opticals';
  static const String addressLine2 = 'Motijheel, Muzaffarpur';
  static const String city = 'Muzaffarpur';
  static const String state = 'Bihar';
  static const String country = 'India';
  static const String pincode = '842001';
  static const String phonePrimary = '8235045671';
  static const String phoneSecondary = '8235045672';
  static const String defaultEmail = 'contact@hotelnewshivaminn.com';

  // Tax Configuration (Intrastate default = 5%)
  static const double defaultCgstRate = 2.50;
  static const double defaultSgstRate = 2.50;
  static const double defaultIgstRate = 5.00;

  // Invoicing
  static const String defaultInvoicePrefix = 'NSI-';
  static const int defaultInitialInvoiceSequence = 1540;

  // Room Inventory Capacity
  static const int totalCapacityRooms = 20;

  // Categories & Tariffs in integer Paise (1 INR = 100 paise)
  static const String catElegant = 'Elegant Class';
  static const int elegantSinglePaise = 189000; // INR 1890
  static const int elegantDoublePaise = 219000; // INR 2190

  static const String catRoyal = 'Royal Class';
  static const int royalSinglePaise = 220000; // INR 2200
  static const int royalDoublePaise = 249000; // INR 2490

  static const String catCorporate = 'Corporate Class';
  static const int corporateSinglePaise = 270000; // INR 2700
  static const int corporateDoublePaise = 339000; // INR 3390

  static const String catSuite = 'Suite Room';
  static const int suiteSinglePaise = 450000; // INR 4500
  static const int suiteDoublePaise = 550000; // INR 5500

  // 9 Confirmed Elegant Class Rooms:
  // Floor 2: 201, 204, 205
  // Floor 3: 301, 304, 305
  // Floor 4: 401, 404, 405
  static const List<Map<String, dynamic>> confirmedElegantRooms = [
    {'roomNumber': '201', 'floor': 2},
    {'roomNumber': '204', 'floor': 2},
    {'roomNumber': '205', 'floor': 2},
    {'roomNumber': '301', 'floor': 3},
    {'roomNumber': '304', 'floor': 3},
    {'roomNumber': '305', 'floor': 3},
    {'roomNumber': '401', 'floor': 4},
    {'roomNumber': '404', 'floor': 4},
    {'roomNumber': '405', 'floor': 4},
  ];
}
