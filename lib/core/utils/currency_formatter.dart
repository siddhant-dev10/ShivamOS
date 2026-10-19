class CurrencyFormatter {
  /// Format paise to Indian Rupee representation (e.g., 219000 -> "₹ 2,190.00")
  static String formatPaise(int paise, {bool includeSymbol = true, bool includePaise = true}) {
    final bool isNegative = paise < 0;
    final int absPaise = paise.abs();
    final int rupees = absPaise ~/ 100;
    final int remainderPaise = absPaise % 100;

    final String formattedRupees = _formatIndianGrouping(rupees);
    final String paisePart = includePaise ? '.${remainderPaise.toString().padLeft(2, '0')}' : '';
    final String prefix = isNegative ? '- ' : '';
    final String symbol = includeSymbol ? '₹ ' : '';

    return '$prefix$symbol$formattedRupees$paisePart';
  }

  /// Convert standard INR double to integer paise with banker's / half-up rounding
  static int inrToPaise(double inr) {
    return (inr * 100).round();
  }

  /// Format an integer into Indian comma grouping:
  /// e.g. 100000 -> "1,00,000", 1234567 -> "12,34,567"
  static String _formatIndianGrouping(int number) {
    final String numStr = number.toString();
    if (numStr.length <= 3) return numStr;

    final String lastThree = numStr.substring(numStr.length - 3);
    String remaining = numStr.substring(0, numStr.length - 3);

    final List<String> chunks = [];
    while (remaining.length > 2) {
      chunks.insert(0, remaining.substring(remaining.length - 2));
      remaining = remaining.substring(0, remaining.length - 2);
    }
    if (remaining.isNotEmpty) {
      chunks.insert(0, remaining);
    }
    return '${chunks.join(",")},$lastThree';
  }

  static const List<String> _units = [
    '', 'One', 'Two', 'Three', 'Four', 'Five', 'Six', 'Seven', 'Eight', 'Nine',
    'Ten', 'Eleven', 'Twelve', 'Thirteen', 'Fourteen', 'Fifteen', 'Sixteen',
    'Seventeen', 'Eighteen', 'Nineteen'
  ];

  static const List<String> _tens = [
    '', '', 'Twenty', 'Thirty', 'Forty', 'Fifty', 'Sixty', 'Seventy', 'Eighty', 'Ninety'
  ];

  /// Convert integer paise into standard legal Indian Currency in Words
  /// e.g. 219000 -> "Rupees Two Thousand One Hundred Ninety and Paise Zero Only"
  static String amountInWords(int totalPaise) {
    if (totalPaise == 0) {
      return 'Rupees Zero and Paise Zero Only';
    }

    final int rupees = totalPaise ~/ 100;
    final int paise = totalPaise % 100;

    final String rupeeWords = rupees == 0 ? 'Zero' : _convertToWords(rupees);
    final String paiseWords = paise == 0 ? 'Zero' : _convertToWords(paise);

    return 'Rupees $rupeeWords and Paise $paiseWords Only';
  }

  static String _convertToWords(int n) {
    if (n == 0) return '';
    if (n >= 10000000) {
      final int crore = n ~/ 10000000;
      final int rem = n % 10000000;
      return '${_convertToWords(crore)} Crore ${rem > 0 ? _convertToWords(rem) : ''}'.trim();
    }
    if (n >= 100000) {
      final int lakh = n ~/ 100000;
      final int rem = n % 100000;
      return '${_convertToWords(lakh)} Lakh ${rem > 0 ? _convertToWords(rem) : ''}'.trim();
    }
    if (n >= 1000) {
      final int thousand = n ~/ 1000;
      final int rem = n % 1000;
      return '${_convertToWords(thousand)} Thousand ${rem > 0 ? _convertToWords(rem) : ''}'.trim();
    }
    if (n >= 100) {
      final int hundred = n ~/ 100;
      final int rem = n % 100;
      return '${_units[hundred]} Hundred ${rem > 0 ? _convertToWords(rem) : ''}'.trim();
    }
    if (n >= 20) {
      final int ten = n ~/ 10;
      final int unit = n % 10;
      return '${_tens[ten]} ${_units[unit]}'.trim();
    }
    return _units[n];
  }
}
