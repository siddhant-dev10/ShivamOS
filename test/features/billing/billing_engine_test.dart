import 'package:flutter_test/flutter_test.dart';
import 'package:shivamos/core/constants/hotel_defaults.dart';
import 'package:shivamos/core/services/billing_engine.dart';

void main() {
  group('BillingEngine Financial Unit Tests', () {
    test('TC-FIN-01: Elegant Class Single Occupancy 1 Night with 2.5% CGST + 2.5% SGST', () {
      final bill = BillingEngine.computeBill(
        nightlyTariffPaise: HotelDefaults.elegantSinglePaise, // 189000 paise (₹1890)
        billableNights: 1,
      );

      expect(bill.roomChargesPaise, 189000);
      expect(bill.taxableAmountPaise, 189000);
      // 189000 * 250 / 10000 = 4725 paise (₹47.25)
      expect(bill.cgstAmountPaise, 4725);
      expect(bill.sgstAmountPaise, 4725);
      expect(bill.totalTaxPaise, 9450); // ₹94.50
      expect(bill.totalAmountPaise, 198450); // ₹1,984.50
    });

    test('TC-FIN-02: Elegant Class Double Occupancy (₹2190) with 10% Discount Example from Prompt', () {
      // Prompt Example:
      // Room tariff: INR 2190
      // Discount: 10%
      // Discount amount: INR 219 (21900 paise)
      // Discounted amount: INR 1971 (197100 paise)
      final bill = BillingEngine.computeBill(
        nightlyTariffPaise: HotelDefaults.elegantDoublePaise, // 219000 paise
        billableNights: 1,
        discountPercentage: 10.0,
      );

      expect(bill.roomChargesPaise, 219000);
      expect(bill.discountAmountPaise, 21900); // ₹219.00
      expect(bill.taxableAmountPaise, 197100); // ₹1,971.00
      // CGST: 197100 * 0.025 = 4927.5 -> 4928 paise (half-up)
      expect(bill.cgstAmountPaise, 4928);
      expect(bill.sgstAmountPaise, 4928);
      expect(bill.totalTaxPaise, 9856);
      expect(bill.totalAmountPaise, 206956);
    });

    test('TC-FIN-03: Royal Class Tariffs (Single ₹2200, Double ₹2490)', () {
      final singleTariff = BillingEngine.getBaselineTariffPaise(HotelDefaults.catRoyal, 'single');
      final doubleTariff = BillingEngine.getBaselineTariffPaise(HotelDefaults.catRoyal, 'double');

      expect(singleTariff, 220000);
      expect(doubleTariff, 249000);
    });

    test('TC-FIN-04: Corporate Class Tariffs (Single ₹2700, Double ₹3390)', () {
      final singleTariff = BillingEngine.getBaselineTariffPaise(HotelDefaults.catCorporate, 'single');
      final doubleTariff = BillingEngine.getBaselineTariffPaise(HotelDefaults.catCorporate, 'double');

      expect(singleTariff, 270000);
      expect(doubleTariff, 339000);
    });

    test('TC-FIN-05: Suite Room Tariffs (Single ₹4500, Double ₹5500)', () {
      final singleTariff = BillingEngine.getBaselineTariffPaise(HotelDefaults.catSuite, 'single');
      final doubleTariff = BillingEngine.getBaselineTariffPaise(HotelDefaults.catSuite, 'double');

      expect(singleTariff, 450000);
      expect(doubleTariff, 550000);
    });

    test('TC-FIN-06: Same-Day Day-Use Clamped to 1 Night Minimum', () {
      final now = DateTime(2026, 10, 19, 10, 0);
      final checkout = DateTime(2026, 10, 19, 17, 0);

      final nights = BillingEngine.calculateBillableNights(now, checkout);
      expect(nights, 1);
    });

    test('TC-FIN-07: Multi-Night Calculation', () {
      final checkIn = DateTime(2026, 10, 19);
      final checkOut = DateTime(2026, 10, 23);

      final nights = BillingEngine.calculateBillableNights(checkIn, checkOut);
      expect(nights, 4);
    });

    test('TC-FIN-08: Settlement Calculation (Advances, Partials & Outstanding Balance)', () {
      final settlement = BillingEngine.computeSettlement(
        totalAmountPaise: 500000, // ₹5,000.00
        paymentsPaise: [200000, 150000], // ₹2,000 advance + ₹1,500 payment
      );

      expect(settlement.totalPaidPaise, 350000); // ₹3,500.00
      expect(settlement.outstandingBalancePaise, 150000); // ₹1,500.00
      expect(settlement.paymentStatus, 'partially_paid');
    });

    test('TC-FIN-09: Settlement with Full Payment Settles to Paid', () {
      final settlement = BillingEngine.computeSettlement(
        totalAmountPaise: 219000,
        paymentsPaise: [219000],
      );

      expect(settlement.outstandingBalancePaise, 0);
      expect(settlement.paymentStatus, 'paid');
    });
  });
}
