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
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'BILLING & TAX INVOICES',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: AppColors.primaryNavy),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'Hotel New Shivam Inn • Next Invoice No: ${settings.invoicePrefix}${settings.nextInvoiceNumber}',
                      style: const TextStyle(fontSize: 13, color: AppColors.textSecondary),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 16),

            // Financial Summary Bar
            Row(
              children: [
                _metric('Total Invoiced', CurrencyFormatter.formatPaise(totalInvoiced), AppColors.primaryNavy),
                const SizedBox(width: 12),
                _metric('Total Collected', CurrencyFormatter.formatPaise(totalCollected), AppColors.successEmerald),
                const SizedBox(width: 12),
                _metric('Outstanding Guest Balances', CurrencyFormatter.formatPaise(totalOutstanding), AppColors.dangerCrimson),
              ],
            ),
            const SizedBox(height: 16),

            // Search Bar
            TextField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.search, size: 20),
                hintText: 'Search by invoice number (e.g. NSI-1540), guest name, or room...',
                isDense: true,
              ),
              onChanged: (v) => setState(() => _search = v),
            ),
            const SizedBox(height: 16),

            // Invoices Table
            Expanded(
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: filtered.isEmpty
                      ? const Center(
                          child: Text(
                            'No invoices generated yet. Checkout a guest from Front Desk to generate tax invoices.',
                            style: TextStyle(color: AppColors.textSecondary),
                          ),
                        )
                      : ListView(
                          children: [
                            DataTable(
                              columns: const [
                                DataColumn(label: Text('Invoice #', style: TextStyle(fontWeight: FontWeight.bold))),
                                DataColumn(label: Text('Date')),
                                DataColumn(label: Text('Guest')),
                                DataColumn(label: Text('Room')),
                                DataColumn(label: Text('Nights')),
                                DataColumn(label: Text('Subtotal')),
                                DataColumn(label: Text('GST (5%)')),
                                DataColumn(label: Text('Grand Total')),
                                DataColumn(label: Text('Paid')),
                                DataColumn(label: Text('Balance')),
                                DataColumn(label: Text('Status')),
                                DataColumn(label: Text('Actions')),
                              ],
                              rows: [
                                for (final inv in filtered)
                                  DataRow(
                                    cells: [
                                      DataCell(Text(inv.invoiceNumber, style: const TextStyle(fontWeight: FontWeight.bold))),
                                      DataCell(Text(inv.checkOutDate.toString().substring(0, 10))),
                                      DataCell(Text(inv.guestName)),
                                      DataCell(Text(inv.roomNumber)),
                                      DataCell(Text('${inv.breakdown.billableNights}')),
                                      DataCell(Text(CurrencyFormatter.formatPaise(inv.breakdown.subtotalPaise))),
                                      DataCell(Text(CurrencyFormatter.formatPaise(inv.breakdown.totalTaxPaise))),
                                      DataCell(Text(CurrencyFormatter.formatPaise(inv.breakdown.totalAmountPaise), style: const TextStyle(fontWeight: FontWeight.bold))),
                                      DataCell(Text(CurrencyFormatter.formatPaise(inv.totalPaidPaise), style: const TextStyle(color: AppColors.successEmerald))),
                                      DataCell(Text(CurrencyFormatter.formatPaise(inv.outstandingBalancePaise), style: TextStyle(color: inv.outstandingBalancePaise > 0 ? AppColors.dangerCrimson : AppColors.neutralGray))),
                                      DataCell(
                                        Container(
                                          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                                          decoration: BoxDecoration(
                                            color: inv.status == 'paid' ? AppColors.successEmerald.withOpacity(0.12) : AppColors.dangerCrimson.withOpacity(0.12),
                                            borderRadius: BorderRadius.circular(4),
                                          ),
                                          child: Text(
                                            inv.status.toUpperCase(),
                                            style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.bold,
                                              color: inv.status == 'paid' ? AppColors.successEmerald : AppColors.dangerCrimson,
                                            ),
                                          ),
                                        ),
                                      ),
                                      DataCell(
                                        Row(
                                          children: [
                                            IconButton(
                                              icon: const Icon(Icons.print, size: 18),
                                              tooltip: 'Print / Save PDF',
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
            ),
          ],
        ),
      ),
    );
  }

  Widget _metric(String title, String val, Color color) {
    return Expanded(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: const TextStyle(fontSize: 11, fontWeight: FontWeight.w600, color: AppColors.textSecondary)),
              const SizedBox(height: 4),
              Text(val, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: color)),
            ],
          ),
        ),
      ),
    );
  }
}
