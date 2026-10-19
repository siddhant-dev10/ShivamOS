import 'package:flutter/foundation.dart';
import '../constants/hotel_defaults.dart';
import '../errors/exceptions.dart';

@immutable
class BillingBreakdown {
  final int billableNights;
  final int nightlyTariffPaise;
  final int roomChargesPaise;
  final int extraChargesPaise;
  final int subtotalPaise;
  final double discountPercentage;
  final int discountAmountPaise;
  final int taxableAmountPaise;
  final double cgstRate;
  final int cgstAmountPaise;
  final double sgstRate;
  final int sgstAmountPaise;
  final double igstRate;
  final int igstAmountPaise;
  final int totalTaxPaise;
  final int totalAmountPaise;

  const BillingBreakdown({
    required this.billableNights,
    required this.nightlyTariffPaise,
    required this.roomChargesPaise,
    required this.extraChargesPaise,
    required this.subtotalPaise,
    required this.discountPercentage,
    required this.discountAmountPaise,
    required this.taxableAmountPaise,
    required this.cgstRate,
    required this.cgstAmountPaise,
    required this.sgstRate,
    required this.sgstAmountPaise,
    required this.igstRate,
    required this.igstAmountPaise,
    required this.totalTaxPaise,
    required this.totalAmountPaise,
  });
}

@immutable
class SettlementBreakdown {
  final int totalAmountPaise;
  final int totalPaidPaise;
  final int totalRefundedPaise;
  final int netPaidPaise;
  final int outstandingBalancePaise;
  final String paymentStatus; // 'paid', 'partially_paid', 'unpaid', 'overpaid'

  const SettlementBreakdown({
    required this.totalAmountPaise,
    required this.totalPaidPaise,
    required this.totalRefundedPaise,
    required this.netPaidPaise,
    required this.outstandingBalancePaise,
    required this.paymentStatus,
  });
}

class BillingEngine {
  /// Calculate billable nights between check-in and check-out dates.
  /// Standard minimum is 1 night (even for same-day day-use).
  static int calculateBillableNights(DateTime checkIn, DateTime checkOut) {
    final DateTime inDate = DateTime(checkIn.year, checkIn.month, checkIn.day);
    final DateTime outDate = DateTime(checkOut.year, checkOut.month, checkOut.day);

    final int diffDays = outDate.difference(inDate).inDays;
    return diffDays <= 0 ? 1 : diffDays;
  }

  /// Get standard baseline tariff based on category name and occupancy
  static int getBaselineTariffPaise(String categoryName, String occupancyType) {
    final bool isDouble = occupancyType.toLowerCase() == 'double';
    switch (categoryName.trim()) {
      case HotelDefaults.catElegant:
        return isDouble ? HotelDefaults.elegantDoublePaise : HotelDefaults.elegantSinglePaise;
      case HotelDefaults.catRoyal:
        return isDouble ? HotelDefaults.royalDoublePaise : HotelDefaults.royalSinglePaise;
      case HotelDefaults.catCorporate:
        return isDouble ? HotelDefaults.corporateDoublePaise : HotelDefaults.corporateSinglePaise;
      case HotelDefaults.catSuite:
        return isDouble ? HotelDefaults.suiteDoublePaise : HotelDefaults.suiteSinglePaise;
      default:
        throw ShivamException('Unknown room category: $categoryName');
    }
  }

  /// Exact integer calculation of stay charges, discounts, and GST
  static BillingBreakdown computeBill({
    required int nightlyTariffPaise,
    required int billableNights,
    int extraChargesPaise = 0,
    double discountPercentage = 0.0,
    int fixedDiscountPaise = 0,
    double cgstRate = HotelDefaults.defaultCgstRate,
    double sgstRate = HotelDefaults.defaultSgstRate,
    double igstRate = HotelDefaults.defaultIgstRate,
    bool isInterstate = false,
  }) {
    if (nightlyTariffPaise < 0 || extraChargesPaise < 0 || billableNights <= 0) {
      throw NegativeAmountException('Tariffs, charges, and nights must be non-negative and positive.');
    }
    if (discountPercentage < 0.0 || discountPercentage > 100.0) {
      throw UnauthorizedDiscountException('Discount percentage must be between 0% and 100%');
    }

    final int roomChargesPaise = nightlyTariffPaise * billableNights;
    final int subtotalPaise = roomChargesPaise + extraChargesPaise;

    // Discount calculation
    int discountPaise = 0;
    if (discountPercentage > 0.0) {
      // Half-up rounding on percentage discount: ((subtotal * bps) + 5000) / 10000
      final int bps = (discountPercentage * 100).round();
      discountPaise = ((subtotalPaise * bps) + 5000) ~/ 10000;
    } else if (fixedDiscountPaise > 0) {
      discountPaise = fixedDiscountPaise;
    }

    if (discountPaise > subtotalPaise) {
      discountPaise = subtotalPaise;
    }

    final int taxableAmountPaise = subtotalPaise - discountPaise;

    // Tax calculation with half-up rounding (rates in basis points: 2.5% = 250 bps)
    int cgstPaise = 0;
    int sgstPaise = 0;
    int igstPaise = 0;

    if (isInterstate) {
      final int igstBps = (igstRate * 100).round();
      igstPaise = ((taxableAmountPaise * igstBps) + 5000) ~/ 10000;
    } else {
      final int cgstBps = (cgstRate * 100).round();
      final int sgstBps = (sgstRate * 100).round();
      cgstPaise = ((taxableAmountPaise * cgstBps) + 5000) ~/ 10000;
      sgstPaise = ((taxableAmountPaise * sgstBps) + 5000) ~/ 10000;
    }

    final int totalTaxPaise = cgstPaise + sgstPaise + igstPaise;
    final int totalAmountPaise = taxableAmountPaise + totalTaxPaise;

    return BillingBreakdown(
      billableNights: billableNights,
      nightlyTariffPaise: nightlyTariffPaise,
      roomChargesPaise: roomChargesPaise,
      extraChargesPaise: extraChargesPaise,
      subtotalPaise: subtotalPaise,
      discountPercentage: discountPercentage,
      discountAmountPaise: discountPaise,
      taxableAmountPaise: taxableAmountPaise,
      cgstRate: isInterstate ? 0.0 : cgstRate,
      cgstAmountPaise: cgstPaise,
      sgstRate: isInterstate ? 0.0 : sgstRate,
      sgstAmountPaise: sgstPaise,
      igstRate: isInterstate ? igstRate : 0.0,
      igstAmountPaise: igstPaise,
      totalTaxPaise: totalTaxPaise,
      totalAmountPaise: totalAmountPaise,
    );
  }

  /// Compute settlement balances, net payments, refunds, and final status
  static SettlementBreakdown computeSettlement({
    required int totalAmountPaise,
    required List<int> paymentsPaise,
    List<int> refundsPaise = const [],
  }) {
    final int totalPaid = paymentsPaise.fold(0, (acc, p) => acc + p);
    final int totalRefunded = refundsPaise.fold(0, (acc, r) => acc + r);
    final int netPaid = totalPaid - totalRefunded;
    final int balance = totalAmountPaise - netPaid;

    String status = 'unpaid';
    if (netPaid >= totalAmountPaise && totalAmountPaise > 0) {
      status = 'paid';
    } else if (netPaid > 0 && balance > 0) {
      status = 'partially_paid';
    } else if (balance < 0) {
      status = 'overpaid';
    }

    return SettlementBreakdown(
      totalAmountPaise: totalAmountPaise,
      totalPaidPaise: totalPaid,
      totalRefundedPaise: totalRefunded,
      netPaidPaise: netPaid,
      outstandingBalancePaise: balance > 0 ? balance : 0,
      paymentStatus: status,
    );
  }
}
