import 'dart:io';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

part 'app_database.g.dart';

// 1. Hotel Settings Table
class LocalHotelSettings extends Table {
  TextColumn get id => text()();
  TextColumn get hotelName => text().withDefault(const Constant('Hotel New Shivam Inn'))();
  TextColumn get tagline => text().withDefault(const Constant('One Hotel. Every Operation. One System.'))();
  TextColumn get addressLine1 => text()();
  TextColumn get addressLine2 => text().nullable()();
  TextColumn get city => text()();
  TextColumn get state => text()();
  TextColumn get country => text().withDefault(const Constant('India'))();
  TextColumn get pincode => text().nullable()();
  TextColumn get phonePrimary => text()();
  TextColumn get phoneSecondary => text().nullable()();
  TextColumn get email => text().nullable()();
  TextColumn get gstin => text().nullable()();
  RealColumn get cgstRatePercent => real().withDefault(const Constant(2.50))();
  RealColumn get sgstRatePercent => real().withDefault(const Constant(2.50))();
  RealColumn get igstRatePercent => real().withDefault(const Constant(5.00))();
  TextColumn get invoicePrefix => text().withDefault(const Constant('NSI-'))();
  IntColumn get nextInvoiceNumber => integer().withDefault(const Constant(1540))();
  TextColumn get invoiceFooterText => text().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}

// 2. Room Categories Table
class LocalRoomCategories extends Table {
  TextColumn get id => text()();
  TextColumn get name => text().unique()();
  IntColumn get baseSingleTariffPaise => integer()();
  IntColumn get baseDoubleTariffPaise => integer()();
  IntColumn get extraBedTariffPaise => integer().withDefault(const Constant(50000))();
  IntColumn get maxAdults => integer().withDefault(const Constant(2))();
  IntColumn get maxChildren => integer().withDefault(const Constant(1))();

  @override
  Set<Column> get primaryKey => {id};
}

// 3. Rooms Table
class LocalRooms extends Table {
  TextColumn get id => text()();
  TextColumn get roomNumber => text().unique()();
  IntColumn get floorNumber => integer()();
  TextColumn get categoryName => text()();
  TextColumn get occupancyStatus => text().withDefault(const Constant('available'))();
  TextColumn get housekeepingStatus => text().withDefault(const Constant('clean'))();
  TextColumn get maintenanceStatus => text().withDefault(const Constant('normal'))();
  BoolColumn get isActive => boolean().withDefault(const Constant(true))();
  TextColumn get notes => text().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}

// 4. Guests Table
class LocalGuests extends Table {
  TextColumn get id => text()();
  TextColumn get fullName => text()();
  TextColumn get phone => text()();
  TextColumn get email => text().nullable()();
  TextColumn get addressStreet => text().nullable()();
  TextColumn get city => text().nullable()();
  TextColumn get state => text().nullable()();
  TextColumn get country => text().withDefault(const Constant('India'))();
  TextColumn get pincode => text().nullable()();
  TextColumn get companyName => text().nullable()();
  TextColumn get designation => text().nullable()();
  TextColumn get companyGstin => text().nullable()();
  TextColumn get idProofType => text().nullable()();
  TextColumn get idProofNumber => text().nullable()();
  BoolColumn get isForeignNational => boolean().withDefault(const Constant(false))();
  TextColumn get passportNumber => text().nullable()();
  TextColumn get visaNumber => text().nullable()();
  TextColumn get nationality => text().withDefault(const Constant('Indian'))();
  BoolColumn get vipStatus => boolean().withDefault(const Constant(false))();
  TextColumn get notes => text().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}

// 5. Reservations Table
class LocalReservations extends Table {
  TextColumn get id => text()();
  TextColumn get reservationCode => text().unique()();
  TextColumn get guestId => text()();
  TextColumn get guestName => text()();
  TextColumn get guestPhone => text()();
  TextColumn get bookingSource => text()();
  TextColumn get externalBookingReference => text().nullable()();
  TextColumn get categoryName => text()();
  TextColumn get assignedRoomId => text().nullable()();
  TextColumn get assignedRoomNumber => text().nullable()();
  DateTimeColumn get checkInDate => dateTime()();
  DateTimeColumn get checkOutDate => dateTime()();
  TextColumn get occupancyType => text().withDefault(const Constant('double'))();
  IntColumn get adultsCount => integer().withDefault(const Constant(1))();
  IntColumn get childrenCount => integer().withDefault(const Constant(0))();
  IntColumn get agreedNightlyTariffPaise => integer()();
  IntColumn get advanceAmountPaidPaise => integer().withDefault(const Constant(0))();
  TextColumn get status => text().withDefault(const Constant('confirmed'))();
  TextColumn get specialRequests => text().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}

// 6. Stays Table (Active checked-in stays)
class LocalStays extends Table {
  TextColumn get id => text()();
  TextColumn get stayCode => text().unique()();
  TextColumn get reservationId => text().nullable()();
  TextColumn get guestId => text()();
  TextColumn get guestName => text()();
  TextColumn get guestPhone => text()();
  TextColumn get roomId => text()();
  TextColumn get roomNumber => text()();
  TextColumn get categoryName => text()();
  DateTimeColumn get actualCheckInTime => dateTime()();
  DateTimeColumn get actualCheckOutTime => dateTime().nullable()();
  DateTimeColumn get expectedCheckOutDate => dateTime()();
  TextColumn get occupancyType => text().withDefault(const Constant('double'))();
  IntColumn get adultsCount => integer().withDefault(const Constant(1))();
  IntColumn get childrenCount => integer().withDefault(const Constant(0))();
  IntColumn get appliedNightlyTariffPaise => integer()();
  TextColumn get purposeOfVisit => text().nullable()();
  TextColumn get mealPlan => text().withDefault(const Constant('EP'))();
  TextColumn get status => text().withDefault(const Constant('active'))();

  @override
  Set<Column> get primaryKey => {id};
}

// 7. Invoices Table
class LocalInvoices extends Table {
  TextColumn get id => text()();
  TextColumn get invoiceNumber => text().unique()();
  TextColumn get stayId => text().nullable()();
  TextColumn get guestId => text()();
  TextColumn get guestName => text()();
  TextColumn get roomNumber => text()();
  DateTimeColumn get invoiceDate => dateTime()();
  IntColumn get billableNights => integer()();
  IntColumn get roomChargesPaise => integer()();
  IntColumn get extraChargesPaise => integer().withDefault(const Constant(0))();
  IntColumn get subtotalPaise => integer()();
  RealColumn get discountPercentage => real().withDefault(const Constant(0.0))();
  IntColumn get discountAmountPaise => integer().withDefault(const Constant(0))();
  IntColumn get taxableAmountPaise => integer()();
  RealColumn get cgstRate => real().withDefault(const Constant(2.50))();
  IntColumn get cgstAmountPaise => integer().withDefault(const Constant(0))();
  RealColumn get sgstRate => real().withDefault(const Constant(2.50))();
  IntColumn get sgstAmountPaise => integer().withDefault(const Constant(0))();
  RealColumn get igstRate => real().withDefault(const Constant(0.0))();
  IntColumn get igstAmountPaise => integer().withDefault(const Constant(0))();
  IntColumn get totalTaxPaise => integer().withDefault(const Constant(0))();
  IntColumn get totalAmountPaise => integer()();
  IntColumn get totalPaidPaise => integer().withDefault(const Constant(0))();
  IntColumn get outstandingBalancePaise => integer().withDefault(const Constant(0))();
  TextColumn get status => text().withDefault(const Constant('draft'))();
  TextColumn get amountInWords => text()();
  TextColumn get notes => text().nullable()();
  BoolColumn get isLocked => boolean().withDefault(const Constant(false))();

  @override
  Set<Column> get primaryKey => {id};
}

// 8. Payments Table
class LocalPayments extends Table {
  TextColumn get id => text()();
  TextColumn get paymentReference => text().unique()();
  TextColumn get invoiceId => text().nullable()();
  TextColumn get reservationId => text().nullable()();
  TextColumn get stayId => text().nullable()();
  IntColumn get amountPaise => integer()();
  TextColumn get paymentMethod => text()();
  TextColumn get transactionId => text().nullable()();
  TextColumn get paymentType => text()();
  DateTimeColumn get paidAt => dateTime()();
  TextColumn get notes => text().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}

// 9. Employees Table
class LocalEmployees extends Table {
  TextColumn get id => text()();
  TextColumn get employeeCode => text().unique()();
  TextColumn get fullName => text()();
  TextColumn get mobile => text()();
  TextColumn get designation => text()();
  TextColumn get department => text().withDefault(const Constant('Front Desk'))();
  DateTimeColumn get joiningDate => dateTime()();
  IntColumn get baseMonthlySalaryPaise => integer()();
  IntColumn get salaryDueDay => integer().withDefault(const Constant(5))();
  BoolColumn get isActive => boolean().withDefault(const Constant(true))();
  TextColumn get notes => text().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}

// 10. Salary Records Table
class LocalSalaryRecords extends Table {
  TextColumn get id => text()();
  TextColumn get employeeId => text()();
  TextColumn get employeeName => text()();
  TextColumn get salaryMonth => text()();
  IntColumn get baseSalaryPaise => integer()();
  IntColumn get additionalEarningsPaise => integer().withDefault(const Constant(0))();
  IntColumn get deductionsPaise => integer().withDefault(const Constant(0))();
  IntColumn get grossSalaryPaise => integer()();
  IntColumn get advanceRecoveredPaise => integer().withDefault(const Constant(0))();
  IntColumn get netSalaryPayablePaise => integer()();
  IntColumn get amountPaidPaise => integer().withDefault(const Constant(0))();
  IntColumn get outstandingBalancePaise => integer().withDefault(const Constant(0))();
  DateTimeColumn get dueDate => dateTime()();
  TextColumn get status => text().withDefault(const Constant('salary_due'))();
  TextColumn get notes => text().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}

// 11. Salary Advances Table
class LocalSalaryAdvances extends Table {
  TextColumn get id => text()();
  TextColumn get advanceCode => text().unique()();
  TextColumn get employeeId => text()();
  TextColumn get employeeName => text()();
  DateTimeColumn get advanceDate => dateTime()();
  IntColumn get amountPaise => integer()();
  IntColumn get recoveredAmountPaise => integer().withDefault(const Constant(0))();
  IntColumn get outstandingBalancePaise => integer()();
  TextColumn get reason => text().nullable()();
  TextColumn get status => text().withDefault(const Constant('active'))();

  @override
  Set<Column> get primaryKey => {id};
}

// 12. Expenses Table
class LocalExpenses extends Table {
  TextColumn get id => text()();
  TextColumn get expenseReference => text().unique()();
  TextColumn get categoryName => text()();
  DateTimeColumn get expenseDate => dateTime()();
  IntColumn get amountPaise => integer()();
  TextColumn get paymentMethod => text()();
  TextColumn get description => text()();
  TextColumn get notes => text().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}

// 13. Housekeeping Tasks Table
class LocalHousekeepingTasks extends Table {
  TextColumn get id => text()();
  TextColumn get roomId => text()();
  TextColumn get roomNumber => text()();
  TextColumn get taskType => text().withDefault(const Constant('turnover_clean'))();
  TextColumn get status => text().withDefault(const Constant('cleaning_required'))();
  TextColumn get priority => text().withDefault(const Constant('normal'))();
  DateTimeColumn get startedAt => dateTime().nullable()();
  DateTimeColumn get completedAt => dateTime().nullable()();
  TextColumn get notes => text().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}

// 14. Maintenance Issues Table
class LocalMaintenanceIssues extends Table {
  TextColumn get id => text()();
  TextColumn get roomId => text().nullable()();
  TextColumn get roomNumber => text().nullable()();
  TextColumn get title => text()();
  TextColumn get description => text()();
  TextColumn get priority => text().withDefault(const Constant('medium'))();
  TextColumn get status => text().withDefault(const Constant('open'))();
  TextColumn get resolutionNotes => text().nullable()();
  DateTimeColumn get resolvedAt => dateTime().nullable()();
  DateTimeColumn get createdAt => dateTime()();

  @override
  Set<Column> get primaryKey => {id};
}

// 15. Synchronization Mutation Queue (Outbox Table)
class LocalSyncMutations extends Table {
  TextColumn get id => text()();
  TextColumn get targetTable => text()();
  TextColumn get operation => text()(); // 'INSERT', 'UPDATE', 'DELETE'
  TextColumn get recordId => text()();
  TextColumn get payloadJson => text()();
  DateTimeColumn get createdAt => dateTime()();
  IntColumn get retryCount => integer().withDefault(const Constant(0))();
  TextColumn get lastError => text().nullable()();
  TextColumn get status => text().withDefault(const Constant('pending'))(); // 'pending', 'syncing', 'failed'

  @override
  Set<Column> get primaryKey => {id};
}

@DriftDatabase(tables: [
  LocalHotelSettings,
  LocalRoomCategories,
  LocalRooms,
  LocalGuests,
  LocalReservations,
  LocalStays,
  LocalInvoices,
  LocalPayments,
  LocalEmployees,
  LocalSalaryRecords,
  LocalSalaryAdvances,
  LocalExpenses,
  LocalHousekeepingTasks,
  LocalMaintenanceIssues,
  LocalSyncMutations,
])
class AppDatabase extends _$AppDatabase {
  AppDatabase([QueryExecutor? e]) : super(e ?? _openConnection());

  @override
  int get schemaVersion => 1;

  static LazyDatabase _openConnection() {
    return LazyDatabase(() async {
      final dbFolder = await getApplicationDocumentsDirectory();
      final file = File(p.join(dbFolder.path, 'shivamos.sqlite'));
      return NativeDatabase.createInBackground(file);
    });
  }
}
