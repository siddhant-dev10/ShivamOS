import 'dart:typed_data';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import '../utils/currency_formatter.dart';
import 'billing_engine.dart';

class PdfGeneratorService {
  /// Generate a professional Hotel New Shivam Inn Guest Registration Card (GRC) PDF
  static Future<Uint8List> generateGuestRegistrationCard({
    required String hotelName,
    required String address,
    required String phoneNumbers,
    required String? gstin,
    required String guestName,
    required String phone,
    String? email,
    String? addressStreet,
    String? city,
    String? companyName,
    String? designation,
    String? companyGstin,
    required String roomNumber,
    required String categoryName,
    required String occupancyType,
    required int adultsCount,
    required int childrenCount,
    required int agreedTariffPaise,
    required DateTime checkInDate,
    required DateTime expectedCheckOutDate,
    String? idProofType,
    String? idProofNumber,
    bool isForeignNational = false,
    String? passportNumber,
    String? visaNumber,
    String? purposeOfVisit,
    String? mealPlan = 'EP',
  }) async {
    final pdf = pw.Document();

    pdf.addPage(
      pw.Page(
        pageFormat: PdfPageFormat.a4,
        margin: const pw.EdgeInsets.all(32),
        build: (pw.Context context) {
          return pw.Container(
            decoration: pw.BoxDecoration(
              border: pw.Border.all(color: PdfColors.blueGrey800, width: 1.5),
            ),
            padding: const pw.EdgeInsets.all(16),
            child: pw.Column(
              crossAxisAlignment: pw.CrossAxisAlignment.start,
              children: [
                // Header
                pw.Center(
                  child: pw.Column(
                    children: [
                      pw.Text(
                        hotelName.toUpperCase(),
                        style: pw.TextStyle(fontSize: 20, fontWeight: pw.FontWeight.bold, color: PdfColors.blue900),
                      ),
                      pw.SizedBox(height: 4),
                      pw.Text(address, style: const pw.TextStyle(fontSize: 10), textAlign: pw.TextAlign.center),
                      pw.Text('Phone: $phoneNumbers', style: const pw.TextStyle(fontSize: 10, color: PdfColors.grey700)),
                      if (gstin != null && gstin.isNotEmpty)
                        pw.Text('GSTIN: $gstin', style: pw.TextStyle(fontSize: 10, fontWeight: pw.FontWeight.bold)),
                      pw.SizedBox(height: 8),
                      pw.Container(
                        padding: const pw.EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                        decoration: const pw.BoxDecoration(color: PdfColors.blueGrey100),
                        child: pw.Text('GUEST REGISTRATION CARD', style: pw.TextStyle(fontSize: 12, fontWeight: pw.FontWeight.bold)),
                      ),
                    ],
                  ),
                ),
                pw.SizedBox(height: 16),

                // Room & Stay Info Row
                pw.Table(
                  border: pw.TableBorder.all(color: PdfColors.grey400, width: 0.5),
                  children: [
                    pw.TableRow(
                      decoration: const pw.BoxDecoration(color: PdfColors.grey100),
                      children: [
                        _cell('Room Number', bold: true),
                        _cell('Category', bold: true),
                        _cell('Occupancy', bold: true),
                        _cell('Check-In Date', bold: true),
                        _cell('Expected Departure', bold: true),
                        _cell('Agreed Tariff/Night', bold: true),
                      ],
                    ),
                    pw.TableRow(
                      children: [
                        _cell(roomNumber, bold: true),
                        _cell(categoryName),
                        _cell('${occupancyType.toUpperCase()} ($adultsCount Adults, $childrenCount Children)'),
                        _cell(checkInDate.toString().substring(0, 10)),
                        _cell(expectedCheckOutDate.toString().substring(0, 10)),
                        _cell(CurrencyFormatter.formatPaise(agreedTariffPaise)),
                      ],
                    ),
                  ],
                ),
                pw.SizedBox(height: 12),

                // Guest Details
                pw.Text('GUEST PERSONAL DETAILS', style: pw.TextStyle(fontSize: 10, fontWeight: pw.FontWeight.bold, color: PdfColors.blueGrey800)),
                pw.Divider(color: PdfColors.blueGrey200, thickness: 0.5),
                pw.SizedBox(height: 4),
                pw.Row(
                  children: [
                    pw.Expanded(child: _field('Full Name', guestName, bold: true)),
                    pw.Expanded(child: _field('Mobile Number', phone)),
                    pw.Expanded(child: _field('Email', email ?? 'N/A')),
                  ],
                ),
                pw.SizedBox(height: 6),
                pw.Row(
                  children: [
                    pw.Expanded(child: _field('Residential Address', addressStreet ?? 'N/A')),
                    pw.Expanded(child: _field('City / State', city ?? 'N/A')),
                    pw.Expanded(child: _field('Purpose of Visit', purposeOfVisit ?? 'General Stay')),
                  ],
                ),
                pw.SizedBox(height: 6),
                pw.Row(
                  children: [
                    pw.Expanded(child: _field('Company Name', companyName ?? 'N/A')),
                    pw.Expanded(child: _field('Designation', designation ?? 'N/A')),
                    pw.Expanded(child: _field('Company GSTIN', companyGstin ?? 'N/A')),
                  ],
                ),
                pw.SizedBox(height: 12),

                // Verification & Identification Details
                pw.Text('IDENTITY VERIFICATION DETAILS', style: pw.TextStyle(fontSize: 10, fontWeight: pw.FontWeight.bold, color: PdfColors.blueGrey800)),
                pw.Divider(color: PdfColors.blueGrey200, thickness: 0.5),
                pw.SizedBox(height: 4),
                pw.Row(
                  children: [
                    pw.Expanded(child: _field('ID Proof Type', idProofType?.toUpperCase() ?? 'Not Recorded')),
                    pw.Expanded(child: _field('ID Document Ref Number', idProofNumber ?? 'Not Recorded')),
                    pw.Expanded(child: _field('Meal Plan', mealPlan ?? 'EP')),
                  ],
                ),
                if (isForeignNational) ...[
                  pw.SizedBox(height: 6),
                  pw.Row(
                    children: [
                      pw.Expanded(child: _field('Passport Number', passportNumber ?? 'N/A')),
                      pw.Expanded(child: _field('Visa Number', visaNumber ?? 'N/A')),
                      pw.Expanded(child: _field('Nationality', 'Foreign National')),
                    ],
                  ),
                ],
                pw.SizedBox(height: 20),

                // Terms and Conditions Notice
                pw.Container(
                  padding: const pw.EdgeInsets.all(8),
                  decoration: pw.BoxDecoration(
                    color: PdfColors.grey50,
                    border: pw.Border.all(color: PdfColors.grey300, width: 0.5),
                  ),
                  child: pw.Text(
                    'DECLARATION: I hereby declare that the details provided above are true to the best of my knowledge. I agree to abide by the rules and regulations of Hotel New Shivam Inn. I confirm that checkout time is 11:00 AM. Any damages caused to hotel property will be charged to my account.',
                    style: const pw.TextStyle(fontSize: 7.5, color: PdfColors.grey800),
                  ),
                ),
                pw.Spacer(),

                // Signatures
                pw.Row(
                  mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                  children: [
                    pw.Column(
                      children: [
                        pw.Container(width: 140, height: 1, color: PdfColors.black),
                        pw.SizedBox(height: 4),
                        pw.Text('Guest Signature', style: const pw.TextStyle(fontSize: 9)),
                      ],
                    ),
                    pw.Column(
                      children: [
                        pw.Container(width: 140, height: 1, color: PdfColors.black),
                        pw.SizedBox(height: 4),
                        pw.Text('Receptionist / Manager On Duty', style: const pw.TextStyle(fontSize: 9)),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );

    return pdf.save();
  }

  /// Generate a professional Tax Invoice PDF matching Hotel New Shivam Inn layout
  static Future<Uint8List> generateInvoice({
    required String hotelName,
    required String address,
    required String phoneNumbers,
    required String? gstin,
    required String invoiceNumber,
    required DateTime invoiceDate,
    required String guestName,
    required String guestPhone,
    String? guestAddress,
    String? companyName,
    String? companyGstin,
    required String roomNumber,
    required String categoryName,
    required DateTime checkInDate,
    required DateTime checkOutDate,
    required BillingBreakdown breakdown,
    required int totalPaidPaise,
    required int outstandingBalancePaise,
    required String paymentMethod,
    String? footerNote,
  }) async {
    final pdf = pw.Document();

    pdf.addPage(
      pw.Page(
        pageFormat: PdfPageFormat.a4,
        margin: const pw.EdgeInsets.all(32),
        build: (pw.Context context) {
          return pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
              // Header
              pw.Row(
                mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: [
                  pw.Column(
                    crossAxisAlignment: pw.CrossAxisAlignment.start,
                    children: [
                      pw.Text(
                        hotelName.toUpperCase(),
                        style: pw.TextStyle(fontSize: 22, fontWeight: pw.FontWeight.bold, color: PdfColors.blue900),
                      ),
                      pw.SizedBox(height: 2),
                      pw.Text(address, style: const pw.TextStyle(fontSize: 9.5)),
                      pw.Text('Phone: $phoneNumbers', style: const pw.TextStyle(fontSize: 9.5, color: PdfColors.grey700)),
                      if (gstin != null && gstin.isNotEmpty)
                        pw.Text('GSTIN: $gstin', style: pw.TextStyle(fontSize: 10, fontWeight: pw.FontWeight.bold)),
                    ],
                  ),
                  pw.Column(
                    crossAxisAlignment: pw.CrossAxisAlignment.end,
                    children: [
                      pw.Container(
                        padding: const pw.EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                        decoration: const pw.BoxDecoration(color: PdfColors.blue900),
                        child: pw.Text('TAX INVOICE', style: pw.TextStyle(fontSize: 14, fontWeight: pw.FontWeight.bold, color: PdfColors.white)),
                      ),
                      pw.SizedBox(height: 6),
                      pw.Text('Invoice No: $invoiceNumber', style: pw.TextStyle(fontSize: 11, fontWeight: pw.FontWeight.bold)),
                      pw.Text('Date: ${invoiceDate.toString().substring(0, 10)}', style: const pw.TextStyle(fontSize: 9.5)),
                    ],
                  ),
                ],
              ),
              pw.SizedBox(height: 16),
              pw.Divider(color: PdfColors.blue900, thickness: 1.5),

              // Billed To & Stay Info
              pw.Row(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: [
                  pw.Expanded(
                    flex: 5,
                    child: pw.Column(
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      children: [
                        pw.Text('BILLED TO:', style: pw.TextStyle(fontSize: 9, fontWeight: pw.FontWeight.bold, color: PdfColors.grey700)),
                        pw.SizedBox(height: 2),
                        pw.Text(guestName, style: pw.TextStyle(fontSize: 11, fontWeight: pw.FontWeight.bold)),
                        pw.Text('Phone: $guestPhone', style: const pw.TextStyle(fontSize: 9)),
                        if (guestAddress != null) pw.Text(guestAddress, style: const pw.TextStyle(fontSize: 9)),
                        if (companyName != null && companyName.isNotEmpty) ...[
                          pw.SizedBox(height: 2),
                          pw.Text('Company: $companyName', style: const pw.TextStyle(fontSize: 9)),
                          if (companyGstin != null && companyGstin.isNotEmpty)
                            pw.Text('GSTIN: $companyGstin', style: const pw.TextStyle(fontSize: 9)),
                        ],
                      ],
                    ),
                  ),
                  pw.Expanded(
                    flex: 5,
                    child: pw.Column(
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      children: [
                        pw.Text('STAY DETAILS:', style: pw.TextStyle(fontSize: 9, fontWeight: pw.FontWeight.bold, color: PdfColors.grey700)),
                        pw.SizedBox(height: 2),
                        pw.Text('Room No: $roomNumber ($categoryName)', style: pw.TextStyle(fontSize: 10, fontWeight: pw.FontWeight.bold)),
                        pw.Text('Check-in: ${checkInDate.toString().substring(0, 10)}', style: const pw.TextStyle(fontSize: 9)),
                        pw.Text('Check-out: ${checkOutDate.toString().substring(0, 10)}', style: const pw.TextStyle(fontSize: 9)),
                        pw.Text('Total Nights: ${breakdown.billableNights}', style: const pw.TextStyle(fontSize: 9)),
                      ],
                    ),
                  ),
                ],
              ),
              pw.SizedBox(height: 16),

              // Charges Table
              pw.Table(
                border: pw.TableBorder.all(color: PdfColors.grey300, width: 0.5),
                children: [
                  pw.TableRow(
                    decoration: const pw.BoxDecoration(color: PdfColors.grey200),
                    children: [
                      _cell('Description', bold: true),
                      _cell('Rate / Night', align: pw.TextAlign.right, bold: true),
                      _cell('Nights / Qty', align: pw.TextAlign.center, bold: true),
                      _cell('Amount', align: pw.TextAlign.right, bold: true),
                    ],
                  ),
                  pw.TableRow(
                    children: [
                      _cell('Room Tariff ($categoryName - Room $roomNumber)'),
                      _cell(CurrencyFormatter.formatPaise(breakdown.nightlyTariffPaise), align: pw.TextAlign.right),
                      _cell('${breakdown.billableNights}', align: pw.TextAlign.center),
                      _cell(CurrencyFormatter.formatPaise(breakdown.roomChargesPaise), align: pw.TextAlign.right),
                    ],
                  ),
                  if (breakdown.extraChargesPaise > 0)
                    pw.TableRow(
                      children: [
                        _cell('Extra Services / Incidental Charges'),
                        _cell('—', align: pw.TextAlign.right),
                        _cell('1', align: pw.TextAlign.center),
                        _cell(CurrencyFormatter.formatPaise(breakdown.extraChargesPaise), align: pw.TextAlign.right),
                      ],
                    ),
                ],
              ),
              pw.SizedBox(height: 8),

              // Financial Totals Grid
              pw.Row(
                mainAxisAlignment: pw.MainAxisAlignment.end,
                children: [
                  pw.Container(
                    width: 260,
                    child: pw.Column(
                      children: [
                        _summaryRow('Subtotal', CurrencyFormatter.formatPaise(breakdown.subtotalPaise)),
                        if (breakdown.discountAmountPaise > 0)
                          _summaryRow(
                            'Discount (${breakdown.discountPercentage}%)',
                            '- ${CurrencyFormatter.formatPaise(breakdown.discountAmountPaise)}',
                          ),
                        _summaryRow('Taxable Value', CurrencyFormatter.formatPaise(breakdown.taxableAmountPaise), bold: true),
                        if (breakdown.cgstAmountPaise > 0)
                          _summaryRow('CGST (${breakdown.cgstRate}%)', CurrencyFormatter.formatPaise(breakdown.cgstAmountPaise)),
                        if (breakdown.sgstAmountPaise > 0)
                          _summaryRow('SGST (${breakdown.sgstRate}%)', CurrencyFormatter.formatPaise(breakdown.sgstAmountPaise)),
                        if (breakdown.igstAmountPaise > 0)
                          _summaryRow('IGST (${breakdown.igstRate}%)', CurrencyFormatter.formatPaise(breakdown.igstAmountPaise)),
                        pw.Divider(color: PdfColors.grey400, thickness: 1),
                        _summaryRow('Grand Total', CurrencyFormatter.formatPaise(breakdown.totalAmountPaise), bold: true, fontSize: 12),
                        _summaryRow('Paid Amount (${paymentMethod.toUpperCase()})', CurrencyFormatter.formatPaise(totalPaidPaise)),
                        _summaryRow(
                          'Outstanding Balance',
                          CurrencyFormatter.formatPaise(outstandingBalancePaise),
                          bold: true,
                          color: outstandingBalancePaise > 0 ? PdfColors.red800 : PdfColors.green800,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              pw.SizedBox(height: 12),

              // Amount in Words
              pw.Container(
                width: double.infinity,
                padding: const pw.EdgeInsets.all(8),
                decoration: pw.BoxDecoration(
                  color: PdfColors.grey100,
                  border: pw.Border.all(color: PdfColors.grey300, width: 0.5),
                ),
                child: pw.Column(
                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                  children: [
                    pw.Text('Amount in Words:', style: pw.TextStyle(fontSize: 8.5, fontWeight: pw.FontWeight.bold, color: PdfColors.grey800)),
                    pw.SizedBox(height: 2),
                    pw.Text(
                      CurrencyFormatter.amountInWords(breakdown.totalAmountPaise),
                      style: pw.TextStyle(fontSize: 9.5, fontWeight: pw.FontWeight.bold, color: PdfColors.blue900),
                    ),
                  ],
                ),
              ),
              pw.Spacer(),

              // Signatures and Footer
              pw.Row(
                mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                children: [
                  pw.Column(
                    crossAxisAlignment: pw.CrossAxisAlignment.start,
                    children: [
                      pw.Text(footerNote ?? 'Thank you for choosing Hotel New Shivam Inn!', style: const pw.TextStyle(fontSize: 8, color: PdfColors.grey700)),
                      pw.Text('Computer Generated Invoice • No Physical Signature Required', style: const pw.TextStyle(fontSize: 7.5, color: PdfColors.grey600)),
                    ],
                  ),
                  pw.Column(
                    crossAxisAlignment: pw.CrossAxisAlignment.center,
                    children: [
                      pw.Container(width: 140, height: 1, color: PdfColors.black),
                      pw.SizedBox(height: 4),
                      pw.Text('For Hotel New Shivam Inn', style: pw.TextStyle(fontSize: 8.5, fontWeight: pw.FontWeight.bold)),
                      pw.Text('Authorized Signatory', style: const pw.TextStyle(fontSize: 8)),
                    ],
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );

    return pdf.save();
  }

  static pw.Widget _cell(String text, {bool bold = false, pw.TextAlign align = pw.TextAlign.left}) {
    return pw.Padding(
      padding: const pw.EdgeInsets.symmetric(horizontal: 8, vertical: 6),
      child: pw.Text(
        text,
        textAlign: align,
        style: pw.TextStyle(fontSize: 9, fontWeight: bold ? pw.FontWeight.bold : pw.FontWeight.normal),
      ),
    );
  }

  static pw.Widget _field(String label, String value, {bool bold = false}) {
    return pw.Column(
      crossAxisAlignment: pw.CrossAxisAlignment.start,
      children: [
        pw.Text(label, style: const pw.TextStyle(fontSize: 7.5, color: PdfColors.grey700)),
        pw.SizedBox(height: 1),
        pw.Text(value, style: pw.TextStyle(fontSize: 9, fontWeight: bold ? pw.FontWeight.bold : pw.FontWeight.normal)),
      ],
    );
  }

  static pw.Widget _summaryRow(String label, String value, {bool bold = false, double fontSize = 9, PdfColor? color}) {
    return pw.Padding(
      padding: const pw.EdgeInsets.symmetric(vertical: 2),
      child: pw.Row(
        mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
        children: [
          pw.Text(label, style: pw.TextStyle(fontSize: fontSize, fontWeight: bold ? pw.FontWeight.bold : pw.FontWeight.normal)),
          pw.Text(value, style: pw.TextStyle(fontSize: fontSize, fontWeight: bold ? pw.FontWeight.bold : pw.FontWeight.normal, color: color)),
        ],
      ),
    );
  }
}
