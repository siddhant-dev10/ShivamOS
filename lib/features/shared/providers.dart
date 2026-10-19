import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/constants/hotel_defaults.dart';
import '../../core/errors/exceptions.dart';
import '../../core/services/billing_engine.dart';
import '../../core/services/payroll_engine.dart';
import '../../core/services/room_service.dart';

// ============================================================================
// 1. HOTEL SETTINGS
// ============================================================================
class HotelSettingsState {
  final String hotelName;
  final String addressLine1;
  final String addressLine2;
  final String city;
  final String state;
  final String country;
  final String pincode;
  final String phonePrimary;
  final String phoneSecondary;
  final String? email;
  final String? gstin;
  final double cgstRatePercent;
  final double sgstRatePercent;
  final double igstRatePercent;
  final String invoicePrefix;
  final int nextInvoiceNumber;
  final String invoiceFooter;

  const HotelSettingsState({
    this.hotelName = HotelDefaults.hotelName,
    this.addressLine1 = HotelDefaults.addressLine1,
    this.addressLine2 = HotelDefaults.addressLine2,
    this.city = HotelDefaults.city,
    this.state = HotelDefaults.state,
    this.country = HotelDefaults.country,
    this.pincode = HotelDefaults.pincode,
    this.phonePrimary = HotelDefaults.phonePrimary,
    this.phoneSecondary = HotelDefaults.phoneSecondary,
    this.email = HotelDefaults.defaultEmail,
    this.gstin,
    this.cgstRatePercent = HotelDefaults.defaultCgstRate,
    this.sgstRatePercent = HotelDefaults.defaultSgstRate,
    this.igstRatePercent = HotelDefaults.defaultIgstRate,
    this.invoicePrefix = HotelDefaults.defaultInvoicePrefix,
    this.nextInvoiceNumber = HotelDefaults.defaultInitialInvoiceSequence,
    this.invoiceFooter = 'Thank you for choosing Hotel New Shivam Inn. Contact: 8235045671 / 8235045672',
  });

  HotelSettingsState copyWith({
    String? hotelName,
    String? addressLine1,
    String? addressLine2,
    String? city,
    String? state,
    String? country,
    String? pincode,
    String? phonePrimary,
    String? phoneSecondary,
    String? email,
    String? gstin,
    double? cgstRatePercent,
    double? sgstRatePercent,
    double? igstRatePercent,
    String? invoicePrefix,
    int? nextInvoiceNumber,
    String? invoiceFooter,
  }) {
    return HotelSettingsState(
      hotelName: hotelName ?? this.hotelName,
      addressLine1: addressLine1 ?? this.addressLine1,
      addressLine2: addressLine2 ?? this.addressLine2,
      city: city ?? this.city,
      state: state ?? this.state,
      country: country ?? this.country,
      pincode: pincode ?? this.pincode,
      phonePrimary: phonePrimary ?? this.phonePrimary,
      phoneSecondary: phoneSecondary ?? this.phoneSecondary,
      email: email ?? this.email,
      gstin: gstin ?? this.gstin,
      cgstRatePercent: cgstRatePercent ?? this.cgstRatePercent,
      sgstRatePercent: sgstRatePercent ?? this.sgstRatePercent,
      igstRatePercent: igstRatePercent ?? this.igstRatePercent,
      invoicePrefix: invoicePrefix ?? this.invoicePrefix,
      nextInvoiceNumber: nextInvoiceNumber ?? this.nextInvoiceNumber,
      invoiceFooter: invoiceFooter ?? this.invoiceFooter,
    );
  }
}

class HotelSettingsNotifier extends StateNotifier<HotelSettingsState> {
  HotelSettingsNotifier() : super(const HotelSettingsState());

  void updateSettings({
    String? hotelName,
    String? addressLine1,
    String? addressLine2,
    String? phonePrimary,
    String? phoneSecondary,
    String? email,
    String? gstin,
    double? cgstRate,
    double? sgstRate,
    double? igstRate,
    String? invoicePrefix,
    int? nextInvoiceNumber,
    String? invoiceFooter,
  }) {
    state = state.copyWith(
      hotelName: hotelName,
      addressLine1: addressLine1,
      addressLine2: addressLine2,
      phonePrimary: phonePrimary,
      phoneSecondary: phoneSecondary,
      email: email,
      gstin: gstin,
      cgstRatePercent: cgstRate,
      sgstRatePercent: sgstRate,
      igstRatePercent: igstRate,
      invoicePrefix: invoicePrefix,
      nextInvoiceNumber: nextInvoiceNumber,
      invoiceFooter: invoiceFooter,
    );
  }

  String generateNextInvoiceNumber() {
    final num = state.nextInvoiceNumber;
    final prefix = state.invoicePrefix;
    state = state.copyWith(nextInvoiceNumber: num + 1);
    return '$prefix$num';
  }
}

final hotelSettingsProvider =
    StateNotifierProvider<HotelSettingsNotifier, HotelSettingsState>((ref) {
  return HotelSettingsNotifier();
});

// ============================================================================
// 2. ROOM INVENTORY PROVIDER
// ============================================================================
class RoomsNotifier extends StateNotifier<List<RoomModel>> {
  RoomsNotifier() : super(RoomService.getConfirmedInitialRooms());

  void addRoom({
    required String roomNumber,
    required int floorNumber,
    required String categoryName,
    String? notes,
  }) {
    if (state.length >= HotelDefaults.totalCapacityRooms) {
      throw ShivamException('Total configured rooms cannot exceed ${HotelDefaults.totalCapacityRooms}.');
    }
    if (state.any((r) => r.roomNumber == roomNumber.trim())) {
      throw ShivamException('Room number $roomNumber already exists.');
    }
    state = [
      ...state,
      RoomModel(
        id: 'room_${roomNumber.trim()}',
        roomNumber: roomNumber.trim(),
        floorNumber: floorNumber,
        categoryName: categoryName,
        occupancyStatus: 'available',
        housekeepingStatus: 'clean',
        maintenanceStatus: 'normal',
        isActive: true,
        notes: notes,
      ),
    ];
  }

  void updateOccupancy(String roomNumber, String status) {
    state = [
      for (final r in state)
        if (r.roomNumber == roomNumber) r.copyWith(occupancyStatus: status) else r
    ];
  }

  void updateHousekeeping(String roomNumber, String status) {
    state = [
      for (final r in state)
        if (r.roomNumber == roomNumber) r.copyWith(housekeepingStatus: status) else r
    ];
  }

  void updateMaintenance(String roomNumber, String status) {
    state = [
      for (final r in state)
        if (r.roomNumber == roomNumber) r.copyWith(maintenanceStatus: status) else r
    ];
  }

  void toggleActive(String roomNumber) {
    state = [
      for (final r in state)
        if (r.roomNumber == roomNumber) r.copyWith(isActive: !r.isActive) else r
    ];
  }
}

final roomsProvider = StateNotifierProvider<RoomsNotifier, List<RoomModel>>((ref) {
  return RoomsNotifier();
});

// ============================================================================
// 3. GUESTS PROVIDER
// ============================================================================
class GuestRecord {
  final String id;
  final String fullName;
  final String phone;
  final String? email;
  final String? addressStreet;
  final String? city;
  final String? companyName;
  final String? designation;
  final String? companyGstin;
  final String? idProofType;
  final String? idProofNumber;
  final bool isForeignNational;
  final String? passportNumber;
  final String? visaNumber;
  final String nationality;
  final DateTime createdAt;

  const GuestRecord({
    required this.id,
    required this.fullName,
    required this.phone,
    this.email,
    this.addressStreet,
    this.city,
    this.companyName,
    this.designation,
    this.companyGstin,
    this.idProofType,
    this.idProofNumber,
    this.isForeignNational = false,
    this.passportNumber,
    this.visaNumber,
    this.nationality = 'Indian',
    required this.createdAt,
  });
}

class GuestsNotifier extends StateNotifier<List<GuestRecord>> {
  GuestsNotifier() : super([]);

  GuestRecord registerGuest({
    required String fullName,
    required String phone,
    String? email,
    String? addressStreet,
    String? city,
    String? companyName,
    String? designation,
    String? companyGstin,
    String? idProofType,
    String? idProofNumber,
    bool isForeignNational = false,
    String? passportNumber,
    String? visaNumber,
    String nationality = 'Indian',
  }) {
    // Check if guest already exists by phone
    final existing = state.where((g) => g.phone == phone.trim());
    if (existing.isNotEmpty) {
      return existing.first;
    }

    final newGuest = GuestRecord(
      id: 'gst_${DateTime.now().millisecondsSinceEpoch}',
      fullName: fullName.trim(),
      phone: phone.trim(),
      email: email?.trim(),
      addressStreet: addressStreet?.trim(),
      city: city?.trim(),
      companyName: companyName?.trim(),
      designation: designation?.trim(),
      companyGstin: companyGstin?.trim(),
      idProofType: idProofType,
      idProofNumber: idProofNumber?.trim(),
      isForeignNational: isForeignNational,
      passportNumber: passportNumber?.trim(),
      visaNumber: visaNumber?.trim(),
      nationality: nationality,
      createdAt: DateTime.now(),
    );

    state = [newGuest, ...state];
    return newGuest;
  }
}

final guestsProvider = StateNotifierProvider<GuestsNotifier, List<GuestRecord>>((ref) {
  return GuestsNotifier();
});

// ============================================================================
// 4. ACTIVE STAYS PROVIDER
// ============================================================================
class StayRecord {
  final String id;
  final String stayCode;
  final String guestId;
  final String guestName;
  final String guestPhone;
  final String roomNumber;
  final String categoryName;
  final DateTime actualCheckInTime;
  final DateTime expectedCheckOutDate;
  final DateTime? actualCheckOutTime;
  final String occupancyType;
  final int adultsCount;
  final int childrenCount;
  final int appliedNightlyTariffPaise;
  final String? purposeOfVisit;
  final String mealPlan;
  final String status; // 'active', 'completed'

  const StayRecord({
    required this.id,
    required this.stayCode,
    required this.guestId,
    required this.guestName,
    required this.guestPhone,
    required this.roomNumber,
    required this.categoryName,
    required this.actualCheckInTime,
    required this.expectedCheckOutDate,
    this.actualCheckOutTime,
    this.occupancyType = 'double',
    this.adultsCount = 1,
    this.childrenCount = 0,
    required this.appliedNightlyTariffPaise,
    this.purposeOfVisit,
    this.mealPlan = 'EP',
    this.status = 'active',
  });

  StayRecord copyWith({
    String? status,
    DateTime? actualCheckOutTime,
  }) {
    return StayRecord(
      id: id,
      stayCode: stayCode,
      guestId: guestId,
      guestName: guestName,
      guestPhone: guestPhone,
      roomNumber: roomNumber,
      categoryName: categoryName,
      actualCheckInTime: actualCheckInTime,
      expectedCheckOutDate: expectedCheckOutDate,
      actualCheckOutTime: actualCheckOutTime ?? this.actualCheckOutTime,
      occupancyType: occupancyType,
      adultsCount: adultsCount,
      childrenCount: childrenCount,
      appliedNightlyTariffPaise: appliedNightlyTariffPaise,
      purposeOfVisit: purposeOfVisit,
      mealPlan: mealPlan,
      status: status ?? this.status,
    );
  }
}

class StaysNotifier extends StateNotifier<List<StayRecord>> {
  final Ref ref;
  StaysNotifier(this.ref) : super([]);

  StayRecord checkInGuest({
    required GuestRecord guest,
    required String roomNumber,
    required String categoryName,
    required DateTime expectedCheckOutDate,
    String occupancyType = 'double',
    int adultsCount = 1,
    int childrenCount = 0,
    int? overrideTariffPaise,
    String? purposeOfVisit,
    String mealPlan = 'EP',
  }) {
    // 1. Verify room is available
    final rooms = ref.read(roomsProvider);
    final room = rooms.firstWhere((r) => r.roomNumber == roomNumber);
    RoomService.validateCheckInEligibility(room);

    // 2. Prevent duplicate active stay in same room
    if (state.any((s) => s.roomNumber == roomNumber && s.status == 'active')) {
      throw DuplicateStayException('Room $roomNumber already has an active checked-in stay.');
    }

    final tariff = overrideTariffPaise ??
        BillingEngine.getBaselineTariffPaise(categoryName, occupancyType);

    final stay = StayRecord(
      id: 'sty_${DateTime.now().millisecondsSinceEpoch}',
      stayCode: 'STY-${DateTime.now().year}${DateTime.now().month.toString().padLeft(2, '0')}-${state.length + 1}',
      guestId: guest.id,
      guestName: guest.fullName,
      guestPhone: guest.phone,
      roomNumber: roomNumber,
      categoryName: categoryName,
      actualCheckInTime: DateTime.now(),
      expectedCheckOutDate: expectedCheckOutDate,
      occupancyType: occupancyType,
      adultsCount: adultsCount,
      childrenCount: childrenCount,
      appliedNightlyTariffPaise: tariff,
      purposeOfVisit: purposeOfVisit,
      mealPlan: mealPlan,
      status: 'active',
    );

    // Update room occupancy to occupied
    ref.read(roomsProvider.notifier).updateOccupancy(roomNumber, 'occupied');

    state = [stay, ...state];
    return stay;
  }

  void completeStay(String stayId, String roomNumber) {
    state = [
      for (final s in state)
        if (s.id == stayId)
          s.copyWith(status: 'completed', actualCheckOutTime: DateTime.now())
        else
          s
    ];

    // Transition room to available & cleaning_required
    ref.read(roomsProvider.notifier).updateOccupancy(roomNumber, 'available');
    ref.read(roomsProvider.notifier).updateHousekeeping(roomNumber, 'cleaning_required');
  }
}

final staysProvider = StateNotifierProvider<StaysNotifier, List<StayRecord>>((ref) {
  return StaysNotifier(ref);
});

// ============================================================================
// 5. RESERVATIONS & ONLINE BOOKINGS PROVIDER
// ============================================================================
class ReservationRecord {
  final String id;
  final String reservationCode;
  final String guestName;
  final String guestPhone;
  final String bookingSource;
  final String? externalReference;
  final String categoryName;
  final String? assignedRoomNumber;
  final DateTime checkInDate;
  final DateTime checkOutDate;
  final String occupancyType;
  final int agreedNightlyTariffPaise;
  final int advancePaidPaise;
  final String status; // 'confirmed', 'checked_in', 'cancelled', 'no_show'
  final String? specialRequests;

  const ReservationRecord({
    required this.id,
    required this.reservationCode,
    required this.guestName,
    required this.guestPhone,
    required this.bookingSource,
    this.externalReference,
    required this.categoryName,
    this.assignedRoomNumber,
    required this.checkInDate,
    required this.checkOutDate,
    this.occupancyType = 'double',
    required this.agreedNightlyTariffPaise,
    this.advancePaidPaise = 0,
    this.status = 'confirmed',
    this.specialRequests,
  });

  ReservationRecord copyWith({
    String? status,
    String? assignedRoomNumber,
  }) {
    return ReservationRecord(
      id: id,
      reservationCode: reservationCode,
      guestName: guestName,
      guestPhone: guestPhone,
      bookingSource: bookingSource,
      externalReference: externalReference,
      categoryName: categoryName,
      assignedRoomNumber: assignedRoomNumber ?? this.assignedRoomNumber,
      checkInDate: checkInDate,
      checkOutDate: checkOutDate,
      occupancyType: occupancyType,
      agreedNightlyTariffPaise: agreedNightlyTariffPaise,
      advancePaidPaise: advancePaidPaise,
      status: status ?? this.status,
      specialRequests: specialRequests,
    );
  }
}

class ReservationsNotifier extends StateNotifier<List<ReservationRecord>> {
  ReservationsNotifier() : super([]);

  void addReservation({
    required String guestName,
    required String guestPhone,
    required String bookingSource,
    String? externalReference,
    required String categoryName,
    String? assignedRoomNumber,
    required DateTime checkInDate,
    required DateTime checkOutDate,
    String occupancyType = 'double',
    int? agreedTariffPaise,
    int advancePaidPaise = 0,
    String? specialRequests,
  }) {
    // Check if external ref duplicate
    if (externalReference != null && externalReference.isNotEmpty) {
      if (state.any((r) => r.externalReference == externalReference.trim())) {
        throw DuplicateBookingReferenceException(
          'Online booking reference $externalReference is already registered.',
        );
      }
    }

    // Check date overlap if assigned room number provided
    if (assignedRoomNumber != null) {
      final hasOverlap = state.any((r) =>
          r.assignedRoomNumber == assignedRoomNumber &&
          r.status == 'confirmed' &&
          RoomService.hasDateOverlap(
            startA: r.checkInDate,
            endA: r.checkOutDate,
            startB: checkInDate,
            endB: checkOutDate,
          ));
      if (hasOverlap) {
        throw OverlappingReservationException(
          'Room $assignedRoomNumber is already reserved for the selected dates.',
        );
      }
    }

    final tariff = agreedTariffPaise ??
        BillingEngine.getBaselineTariffPaise(categoryName, occupancyType);

    final res = ReservationRecord(
      id: 'res_${DateTime.now().millisecondsSinceEpoch}',
      reservationCode: 'RES-${DateTime.now().year}${DateTime.now().month.toString().padLeft(2, '0')}-${state.length + 1}',
      guestName: guestName.trim(),
      guestPhone: guestPhone.trim(),
      bookingSource: bookingSource,
      externalReference: externalReference?.trim(),
      categoryName: categoryName,
      assignedRoomNumber: assignedRoomNumber,
      checkInDate: checkInDate,
      checkOutDate: checkOutDate,
      occupancyType: occupancyType,
      agreedNightlyTariffPaise: tariff,
      advancePaidPaise: advancePaidPaise,
      status: 'confirmed',
      specialRequests: specialRequests,
    );

    state = [res, ...state];
  }

  void cancelReservation(String id) {
    state = [
      for (final r in state)
        if (r.id == id) r.copyWith(status: 'cancelled') else r
    ];
  }
}

final reservationsProvider =
    StateNotifierProvider<ReservationsNotifier, List<ReservationRecord>>((ref) {
  return ReservationsNotifier();
});

// ============================================================================
// 6. INVOICES & PAYMENTS PROVIDER
// ============================================================================
class InvoiceRecord {
  final String id;
  final String invoiceNumber;
  final String? stayId;
  final String guestName;
  final String guestPhone;
  final String? guestAddress;
  final String? companyName;
  final String? companyGstin;
  final String roomNumber;
  final String categoryName;
  final DateTime checkInDate;
  final DateTime checkOutDate;
  final BillingBreakdown breakdown;
  final int totalPaidPaise;
  final int outstandingBalancePaise;
  final String paymentMethod;
  final String status; // 'paid', 'partially_paid', 'draft'
  final bool isLocked;

  const InvoiceRecord({
    required this.id,
    required this.invoiceNumber,
    this.stayId,
    required this.guestName,
    required this.guestPhone,
    this.guestAddress,
    this.companyName,
    this.companyGstin,
    required this.roomNumber,
    required this.categoryName,
    required this.checkInDate,
    required this.checkOutDate,
    required this.breakdown,
    required this.totalPaidPaise,
    required this.outstandingBalancePaise,
    required this.paymentMethod,
    required this.status,
    this.isLocked = true,
  });
}

class InvoicesNotifier extends StateNotifier<List<InvoiceRecord>> {
  InvoicesNotifier() : super([]);

  void addFinalizedInvoice(InvoiceRecord inv) {
    state = [inv, ...state];
  }
}

final invoicesProvider =
    StateNotifierProvider<InvoicesNotifier, List<InvoiceRecord>>((ref) {
  return InvoicesNotifier();
});

// ============================================================================
// 7. EMPLOYEES & PAYROLL PROVIDER
// ============================================================================
class EmployeeRecord {
  final String id;
  final String employeeCode;
  final String fullName;
  final String mobile;
  final String designation;
  final String department;
  final DateTime joiningDate;
  final int baseMonthlySalaryPaise;
  final int salaryDueDay;
  final bool isActive;

  const EmployeeRecord({
    required this.id,
    required this.employeeCode,
    required this.fullName,
    required this.mobile,
    required this.designation,
    this.department = 'Front Desk',
    required this.joiningDate,
    required this.baseMonthlySalaryPaise,
    this.salaryDueDay = 5,
    this.isActive = true,
  });
}

class EmployeesNotifier extends StateNotifier<List<EmployeeRecord>> {
  EmployeesNotifier() : super([]);

  void addEmployee({
    required String fullName,
    required String mobile,
    required String designation,
    String department = 'Front Desk',
    required int baseMonthlySalaryPaise,
    int salaryDueDay = 5,
  }) {
    final emp = EmployeeRecord(
      id: 'emp_${DateTime.now().millisecondsSinceEpoch}',
      employeeCode: 'EMP-${(state.length + 1).toString().padLeft(3, '0')}',
      fullName: fullName.trim(),
      mobile: mobile.trim(),
      designation: designation.trim(),
      department: department,
      joiningDate: DateTime.now(),
      baseMonthlySalaryPaise: baseMonthlySalaryPaise,
      salaryDueDay: salaryDueDay,
    );
    state = [...state, emp];
  }
}

final employeesProvider =
    StateNotifierProvider<EmployeesNotifier, List<EmployeeRecord>>((ref) {
  return EmployeesNotifier();
});

// ============================================================================
// 8. SALARY RECORDS & ADVANCES PROVIDER
// ============================================================================
class SalaryRecord {
  final String id;
  final String employeeId;
  final String employeeName;
  final String salaryMonth; // 'YYYY-MM'
  final SalaryComputation computation;
  final DateTime dueDate;

  const SalaryRecord({
    required this.id,
    required this.employeeId,
    required this.employeeName,
    required this.salaryMonth,
    required this.computation,
    required this.dueDate,
  });

  SalaryRecord copyWith({SalaryComputation? computation}) {
    return SalaryRecord(
      id: id,
      employeeId: employeeId,
      employeeName: employeeName,
      salaryMonth: salaryMonth,
      computation: computation ?? this.computation,
      dueDate: dueDate,
    );
  }
}

class SalaryAdvanceRecord {
  final String id;
  final String advanceCode;
  final String employeeId;
  final String employeeName;
  final DateTime advanceDate;
  final int amountPaise;
  final int recoveredAmountPaise;
  final int outstandingBalancePaise;
  final String? reason;
  final String status; // 'active', 'partially_recovered', 'fully_recovered'

  const SalaryAdvanceRecord({
    required this.id,
    required this.advanceCode,
    required this.employeeId,
    required this.employeeName,
    required this.advanceDate,
    required this.amountPaise,
    required this.recoveredAmountPaise,
    required this.outstandingBalancePaise,
    this.reason,
    this.status = 'active',
  });

  SalaryAdvanceRecord copyWith({
    int? recoveredAmountPaise,
    int? outstandingBalancePaise,
    String? status,
  }) {
    return SalaryAdvanceRecord(
      id: id,
      advanceCode: advanceCode,
      employeeId: employeeId,
      employeeName: employeeName,
      advanceDate: advanceDate,
      amountPaise: amountPaise,
      recoveredAmountPaise: recoveredAmountPaise ?? this.recoveredAmountPaise,
      outstandingBalancePaise: outstandingBalancePaise ?? this.outstandingBalancePaise,
      reason: reason,
      status: status ?? this.status,
    );
  }
}

class SalaryAdvancesNotifier extends StateNotifier<List<SalaryAdvanceRecord>> {
  SalaryAdvancesNotifier() : super([]);

  SalaryAdvanceRecord issueAdvance({
    required String employeeId,
    required String employeeName,
    required int amountPaise,
    String? reason,
  }) {
    final adv = SalaryAdvanceRecord(
      id: 'adv_${DateTime.now().millisecondsSinceEpoch}',
      advanceCode: 'ADV-${DateTime.now().year}${DateTime.now().month.toString().padLeft(2, '0')}-${state.length + 1}',
      employeeId: employeeId,
      employeeName: employeeName,
      advanceDate: DateTime.now(),
      amountPaise: amountPaise,
      recoveredAmountPaise: 0,
      outstandingBalancePaise: amountPaise,
      reason: reason,
      status: 'active',
    );
    state = [adv, ...state];
    return adv;
  }

  void applyRecovery(String advanceId, int recoveryPaise) {
    state = [
      for (final adv in state)
        if (adv.id == advanceId) ...[
          () {
            final res = PayrollEngine.applyAdvanceRecovery(
              currentAdvanceBalancePaise: adv.outstandingBalancePaise,
              currentRecoveredPaise: adv.recoveredAmountPaise,
              recoveryAmountPaise: recoveryPaise,
            );
            final newBal = res['newAdvanceBalancePaise']!;
            final newRec = res['newTotalRecoveredPaise']!;
            final newStatus = newBal == 0 ? 'fully_recovered' : 'partially_recovered';
            return adv.copyWith(
              recoveredAmountPaise: newRec,
              outstandingBalancePaise: newBal,
              status: newStatus,
            );
          }()
        ] else
          adv
    ];
  }
}

final salaryAdvancesProvider =
    StateNotifierProvider<SalaryAdvancesNotifier, List<SalaryAdvanceRecord>>((ref) {
  return SalaryAdvancesNotifier();
});

class SalaryRecordsNotifier extends StateNotifier<List<SalaryRecord>> {
  final Ref ref;
  SalaryRecordsNotifier(this.ref) : super([]);

  void generateSalaryPeriod({
    required EmployeeRecord employee,
    required String salaryMonth, // 'YYYY-MM'
    int additionalEarningsPaise = 0,
    int deductionsPaise = 0,
    int advanceRecoveryPaise = 0,
  }) {
    if (state.any((s) => s.employeeId == employee.id && s.salaryMonth == salaryMonth)) {
      throw ShivamException('Salary record already generated for this employee and period.');
    }

    // Check available advances
    final advances = ref.read(salaryAdvancesProvider).where((a) => a.employeeId == employee.id && a.status != 'fully_recovered');
    final totalAvailableAdvance = advances.fold(0, (acc, a) => acc + a.outstandingBalancePaise);

    final parts = salaryMonth.split('-');
    final year = int.parse(parts[0]);
    final month = int.parse(parts[1]);
    final dueDate = DateTime(year, month + 1, employee.salaryDueDay);

    final comp = PayrollEngine.computeSalary(
      baseSalaryPaise: employee.baseMonthlySalaryPaise,
      additionalEarningsPaise: additionalEarningsPaise,
      deductionsPaise: deductionsPaise,
      advanceRecoveryPaise: advanceRecoveryPaise,
      maxRecoverableAdvancePaise: totalAvailableAdvance,
      dueDate: dueDate,
      evaluationDate: DateTime.now(),
    );

    // Apply recovery to oldest active advances
    if (advanceRecoveryPaise > 0) {
      int remainingToDeduct = advanceRecoveryPaise;
      for (final adv in advances) {
        if (remainingToDeduct <= 0) break;
        final deduction = remainingToDeduct > adv.outstandingBalancePaise ? adv.outstandingBalancePaise : remainingToDeduct;
        ref.read(salaryAdvancesProvider.notifier).applyRecovery(adv.id, deduction);
        remainingToDeduct -= deduction;
      }
    }

    final record = SalaryRecord(
      id: 'sal_${DateTime.now().millisecondsSinceEpoch}',
      employeeId: employee.id,
      employeeName: employee.fullName,
      salaryMonth: salaryMonth,
      computation: comp,
      dueDate: dueDate,
    );

    state = [record, ...state];
  }

  void recordPayment(String salaryRecordId, int paymentAmountPaise) {
    state = [
      for (final s in state)
        if (s.id == salaryRecordId) ...[
          () {
            final oldComp = s.computation;
            final newAmountPaid = oldComp.amountPaidPaise + paymentAmountPaise;
            final updatedComp = PayrollEngine.computeSalary(
              baseSalaryPaise: oldComp.baseSalaryPaise,
              additionalEarningsPaise: oldComp.additionalEarningsPaise,
              deductionsPaise: oldComp.deductionsPaise,
              advanceRecoveryPaise: oldComp.advanceRecoveryPaise,
              maxRecoverableAdvancePaise: oldComp.advanceRecoveryPaise,
              amountPaidPaise: newAmountPaid,
              dueDate: s.dueDate,
              evaluationDate: DateTime.now(),
            );
            return s.copyWith(computation: updatedComp);
          }()
        ] else
          s
    ];
  }
}

final salaryRecordsProvider =
    StateNotifierProvider<SalaryRecordsNotifier, List<SalaryRecord>>((ref) {
  return SalaryRecordsNotifier(ref);
});

// ============================================================================
// 9. HOUSEKEEPING & MAINTENANCE PROVIDER
// ============================================================================
class HousekeepingTask {
  final String id;
  final String roomNumber;
  final String taskType;
  final String status; // 'cleaning_required', 'cleaning_in_progress', 'inspection_required', 'ready'
  final String priority;
  final DateTime createdAt;

  const HousekeepingTask({
    required this.id,
    required this.roomNumber,
    this.taskType = 'turnover_clean',
    this.status = 'cleaning_required',
    this.priority = 'normal',
    required this.createdAt,
  });

  HousekeepingTask copyWith({String? status}) {
    return HousekeepingTask(
      id: id,
      roomNumber: roomNumber,
      taskType: taskType,
      status: status ?? this.status,
      priority: priority,
      createdAt: createdAt,
    );
  }
}

class HousekeepingNotifier extends StateNotifier<List<HousekeepingTask>> {
  final Ref ref;
  HousekeepingNotifier(this.ref) : super([]);

  void addTask(String roomNumber, {String taskType = 'turnover_clean', String priority = 'normal'}) {
    final task = HousekeepingTask(
      id: 'hk_${DateTime.now().millisecondsSinceEpoch}',
      roomNumber: roomNumber,
      taskType: taskType,
      status: 'cleaning_required',
      priority: priority,
      createdAt: DateTime.now(),
    );
    state = [task, ...state];
  }

  void updateTaskStatus(String taskId, String roomNumber, String newStatus) {
    state = [
      for (final t in state)
        if (t.id == taskId) t.copyWith(status: newStatus) else t
    ];
    // Sync room housekeeping status
    ref.read(roomsProvider.notifier).updateHousekeeping(roomNumber, newStatus);
  }
}

final housekeepingProvider =
    StateNotifierProvider<HousekeepingNotifier, List<HousekeepingTask>>((ref) {
  return HousekeepingNotifier(ref);
});

// ============================================================================
// 10. EXPENSES PROVIDER
// ============================================================================
class ExpenseRecord {
  final String id;
  final String reference;
  final String categoryName;
  final DateTime date;
  final int amountPaise;
  final String paymentMethod;
  final String description;

  const ExpenseRecord({
    required this.id,
    required this.reference,
    required this.categoryName,
    required this.date,
    required this.amountPaise,
    required this.paymentMethod,
    required this.description,
  });
}

class ExpensesNotifier extends StateNotifier<List<ExpenseRecord>> {
  ExpensesNotifier() : super([]);

  void recordExpense({
    required String categoryName,
    required int amountPaise,
    required String paymentMethod,
    required String description,
  }) {
    final exp = ExpenseRecord(
      id: 'exp_${DateTime.now().millisecondsSinceEpoch}',
      reference: 'EXP-${DateTime.now().year}${DateTime.now().month.toString().padLeft(2, '0')}-${state.length + 1}',
      categoryName: categoryName,
      date: DateTime.now(),
      amountPaise: amountPaise,
      paymentMethod: paymentMethod,
      description: description.trim(),
    );
    state = [exp, ...state];
  }
}

final expensesProvider =
    StateNotifierProvider<ExpensesNotifier, List<ExpenseRecord>>((ref) {
  return ExpensesNotifier();
});
