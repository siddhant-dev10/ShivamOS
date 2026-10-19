import 'package:flutter_test/flutter_test.dart';
import 'package:shivamos/core/utils/currency_formatter.dart';

void main() {
  group('CurrencyFormatter Tests', () {
    test('formatPaise formats rupees and paise correctly with Indian commas', () {
      expect(CurrencyFormatter.formatPaise(219000), '₹ 2,190.00');
      expect(CurrencyFormatter.formatPaise(189000), '₹ 1,890.00');
      expect(CurrencyFormatter.formatPaise(10000000), '₹ 1,00,000.00');
      expect(CurrencyFormatter.formatPaise(12543075), '₹ 1,25,430.75');
      expect(CurrencyFormatter.formatPaise(50), '₹ 0.50');
      expect(CurrencyFormatter.formatPaise(0), '₹ 0.00');
    });

    test('inrToPaise converts floating point INR to integer paise with half-up rounding', () {
      expect(CurrencyFormatter.inrToPaise(2190.0), 219000);
      expect(CurrencyFormatter.inrToPaise(47.25), 4725);
      expect(CurrencyFormatter.inrToPaise(0.50), 50);
      expect(CurrencyFormatter.inrToPaise(1971.0), 197100);
    });

    test('amountInWords generates exact legal words representation', () {
      expect(
        CurrencyFormatter.amountInWords(219000),
        'Rupees Two Thousand One Hundred Ninety and Paise Zero Only',
      );
      expect(
        CurrencyFormatter.amountInWords(189000),
        'Rupees One Thousand Eight Hundred Ninety and Paise Zero Only',
      );
      expect(
        CurrencyFormatter.amountInWords(0),
        'Rupees Zero and Paise Zero Only',
      );
      expect(
        CurrencyFormatter.amountInWords(12543075),
        'Rupees One Lakh Twenty Five Thousand Four Hundred Thirty and Paise Seventy Five Only',
      );
    });
  });
}
