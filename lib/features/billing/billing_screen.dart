import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:printing/printing.dart';
import '../../core/constants/app_colors.dart';
import '../../core/services/pdf_generator_service.dart';
import '../../core/utils/currency_formatter.dart';
import '../shared/providers.dart';

class BillingScreen extends ConsumerStatefulWidget {
  const BillingScreen({super.key});

  @override
  ConsumerState<BillingScreen> createState() => _BillingScreenState();
}

class _BillingScreenState extends ConsumerState<BillingScreen> {
  String _search = '';

  @override
  Widget build(BuildContext context) {
    final invoices = ref.watch(invoicesProvider);
    final settings = ref.watch(hotelSettingsProvider);

    final filtered = invoices.where((inv) {
      if (_search.isEmpty) return true;
      final q = _search.toLowerCase();
      return inv.invoiceNumber.toLowerCase().contains(q) ||
          inv.guestName.toLowerCase().contains(q) ||
          inv.roomNumber.contains(q);
    }).toList();

    final totalInvoiced = invoices.fold(0, (acc, i) => acc + i.breakdown.totalAmountPaise);
    final totalCollected = invoices.fold(0, (acc, i) => acc + i.totalPaidPaise);
    final totalOutstanding = invoices.fold(0, (acc, i) => acc + i.outstandingBalancePaise);

    return Scaffold(
      backgroundColor: AppColors.backgroundLight,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'BILLING & TAX INVOICES',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800, color: AppColors.primaryNavy, letterSpacing: -0.3),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      'Hotel New Shivam Inn • Next Sequence: ${settings.invoicePrefix}${settings.nextInvoiceNumber}',
                      style: const TextStyle(fontSize: 12, color: AppColors.textSecondary),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 16),

            // Summary Cards Row
            LayoutBuilder(
              builder: (context, constraints) {
                final isWide = constraints.maxWidth > 700;
                return isWide
                    ? Row(
                        children: [
                          _metricCard('Total Invoiced', CurrencyFormatter.formatPaise(totalInvoiced), Icons.receipt_long_rounded, AppColors.primaryNavy, const Color(0xFFF1F5F9)),
                          const SizedBox(width: 14),
                          _metricCard('Total Collected', CurrencyFormatter.formatPaise(totalCollected), Icons.check_circle_rounded, AppColors.successEmerald, AppColors.availableBg),
                          const SizedBox(width: 14),
                          _metricCard('Outstanding Balances', CurrencyFormatter.formatPaise(totalOutstanding), Icons.pending_rounded, AppColors.dangerCrimson, AppColors.outOfServiceBg),
                        ],
                      )
                    : Column(
                        children: [
                          _metricCard('Total Invoiced', CurrencyFormatter.formatPaise(totalInvoiced), Icons.receipt_long_rounded, AppColors.primaryNavy, const Color(0xFFF1F5F9)),
                          const SizedBox(height: 10),
                          _metricCard('Total Collected', CurrencyFormatter.formatPaise(totalCollected), Icons.check_circle_rounded, AppColors.successEmerald, AppColors.availableBg),
                          const SizedBox(height: 10),
                          _metricCard('Outstanding Balances', CurrencyFormatter.formatPaise(totalOutstanding), Icons.pending_rounded, AppColors.dangerCrimson, AppColors.outOfServiceBg),
                        ],
                      );
              },
            ),
            const SizedBox(height: 16),

            // Search Bar
            TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search_rounded, size: 20, color: AppColors.textMuted),
                hintText: 'Search by invoice number (e.g. NSI-1540), guest name, or room number...',
                isDense: true,
                filled: true,
                fillColor: Colors.white,
                contentPadding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: const BorderSide(color: AppColors.borderLight)),
                enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: const BorderSide(color: AppColors.borderLight)),
              ),
              onChanged: (v) => setState(() => _search = v),
            ),
            const SizedBox(height: 16),

            // Invoices Data Table
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(color: AppColors.borderLight),
                  boxShadow: AppColors.cardShadow,
                ),
                clipBehavior: Clip.antiAlias,
                child: filtered.isEmpty
                    ? Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.receipt_long_outlined, size: 48, color: AppColors.textMuted.withOpacity(0.5)),
                            const SizedBox(height: 12),
                            const Text(
                              'No invoices found.',
                              style: TextStyle(fontWeight: FontWeight.bold, color: AppColors.textPrimary, fontSize: 14),
                            ),
                            const SizedBox(height: 4),
                            const Text(
                              'Checkout a guest from Front Desk to automatically generate tax invoices.',
                              style: TextStyle(color: AppColors.textMuted, fontSize: 12),
                            ),
                          ],
                        ),
                      )
                    : ListView(
                        children: [
                          DataTable(
                            headingRowColor: WidgetStateProperty.all(AppColors.backgroundSubtle),
                            columns: const [
                              DataColumn(label: Text('Invoice #', style: TextStyle(fontWeight: FontWeight.bold))),
                              DataColumn(label: Text('Date', style: TextStyle(fontWeight: FontWeight.bold))),
                              DataColumn(label: Text('Guest Name', style: TextStyle(fontWeight: FontWeight.bold))),
                              DataColumn(label: Text('Room', style: TextStyle(fontWeight: FontWeight.bold))),
                              DataColumn(label: Text('Nights', style: TextStyle(fontWeight: FontWeight.bold))),
                              DataColumn(label: Text('Taxable Base', style: TextStyle(fontWeight: FontWeight.bold))),
                              DataColumn(label: Text('GST (5%)', style: TextStyle(fontWeight: FontWeight.bold))),
                              DataColumn(label: Text('Grand Total', style: TextStyle(fontWeight: FontWeight.bold))),
                              DataColumn(label: Text('Paid', style: TextStyle(fontWeight: FontWeight.bold))),
                              DataColumn(label: Text('Balance', style: TextStyle(fontWeight: FontWeight.bold))),
                              DataColumn(label: Text('Status', style: TextStyle(fontWeight: FontWeight.bold))),
                              DataColumn(label: Text('Actions', style: TextStyle(fontWeight: FontWeight.bold))),
                            ],
                            rows: [
                              for (final inv in filtered)
                                DataRow(
                                  cells: [
                                    DataCell(
                                      Container(
                                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                        decoration: BoxDecoration(
                                          color: AppColors.backgroundSubtle,
                                          borderRadius: BorderRadius.circular(6),
                                          border: Border.all(color: AppColors.borderLight),
                                        ),
                                        child: Text(inv.invoiceNumber, style: const TextStyle(fontWeight: FontWeight.w800, color: AppColors.primaryNavy)),
                                      ),
                                    ),
                                    DataCell(Text(inv.checkOutDate.toString().substring(0, 10))),
                                    DataCell(Text(inv.guestName, style: const TextStyle(fontWeight: FontWeight.w600))),
                                    DataCell(Text(inv.roomNumber)),
                                    DataCell(Text('${inv.breakdown.billableNights}')),
                                    DataCell(Text(CurrencyFormatter.formatPaise(inv.breakdown.subtotalPaise))),
                                    DataCell(Text(CurrencyFormatter.formatPaise(inv.breakdown.totalTaxPaise))),
                                    DataCell(Text(CurrencyFormatter.formatPaise(inv.breakdown.totalAmountPaise), style: const TextStyle(fontWeight: FontWeight.w800, color: AppColors.primaryNavy))),
                                    DataCell(Text(CurrencyFormatter.formatPaise(inv.totalPaidPaise), style: const TextStyle(color: AppColors.successEmerald, fontWeight: FontWeight.w600))),
                                    DataCell(
                                      Text(
                                        CurrencyFormatter.formatPaise(inv.outstandingBalancePaise),
                                        style: TextStyle(
                                          color: inv.outstandingBalancePaise > 0 ? AppColors.dangerCrimson : AppColors.neutralGray,
                                          fontWeight: inv.outstandingBalancePaise > 0 ? FontWeight.bold : FontWeight.normal,
                                        ),
                                      ),
                                    ),
                                    DataCell(
                                      Container(
                                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                                        decoration: BoxDecoration(
                                          color: inv.status == 'paid' ? AppColors.availableBg : AppColors.outOfServiceBg,
                                          borderRadius: BorderRadius.circular(6),
                                          border: Border.all(color: inv.status == 'paid' ? AppColors.availableGreen.withOpacity(0.3) : AppColors.outOfServiceRed.withOpacity(0.3)),
                                        ),
                                        child: Text(
                                          inv.status.toUpperCase(),
                                          style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w800,
                                            color: inv.status == 'paid' ? AppColors.availableGreen : AppColors.outOfServiceRed,
                                          ),
                                        ),
                                      ),
                                    ),
                                    DataCell(
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          IconButton(
                                            icon: const Icon(Icons.print_rounded, size: 18, color: AppColors.electricBlue),
                                            tooltip: 'Print / Save Tax Invoice PDF',
                                            onPressed: () async {
                                              final pdfBytes = await PdfGeneratorService.generateInvoice(
                                                hotelName: settings.hotelName,
                                                address: '${settings.addressLine1}, ${settings.city}',
                                                phoneNumbers: '${settings.phonePrimary} / ${settings.phoneSecondary}',
                                                gstin: settings.gstin,
                                                invoiceNumber: inv.invoiceNumber,
                                                invoiceDate: inv.checkOutDate,
                                                guestName: inv.guestName,
                                                guestPhone: inv.guestPhone,
                                                roomNumber: inv.roomNumber,
                                                categoryName: inv.categoryName,
                                                checkInDate: inv.checkInDate,
                                                checkOutDate: inv.checkOutDate,
                                                breakdown: inv.breakdown,
                                                totalPaidPaise: inv.totalPaidPaise,
                                                outstandingBalancePaise: inv.outstandingBalancePaise,
                                                paymentMethod: inv.paymentMethod,
                                              );
                                              await Printing.layoutPdf(onLayout: (_) => pdfBytes);
                                            },
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                            ],
                          ),
                        ],
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _metricCard(String title, String val, IconData icon, Color color, Color bgColor) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(14),
          border: Border.all(color: AppColors.borderLight),
          boxShadow: AppColors.cardShadow,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: AppColors.textSecondary)),
                const SizedBox(height: 4),
                Text(val, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800, color: color, letterSpacing: -0.3)),
              ],
            ),
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(color: bgColor, borderRadius: BorderRadius.circular(10)),
              child: Icon(icon, color: color, size: 20),
            ),
          ],
        ),
      ),
    );
  }
}
