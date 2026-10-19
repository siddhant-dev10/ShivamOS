import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/constants/app_colors.dart';
import '../../core/utils/currency_formatter.dart';
import '../shared/providers.dart';

class ReportsScreen extends ConsumerWidget {
  const ReportsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final invoices = ref.watch(invoicesProvider);
    final rooms = ref.watch(roomsProvider);
    final expenses = ref.watch(expensesProvider);
    final salaryRecords = ref.watch(salaryRecordsProvider);
    final advances = ref.watch(salaryAdvancesProvider);

    // Compute report totals
    final totalInvoiced = invoices.fold(0, (acc, i) => acc + i.breakdown.totalAmountPaise);
    final totalRoomCharges = invoices.fold(0, (acc, i) => acc + i.breakdown.roomChargesPaise);
    final totalCgst = invoices.fold(0, (acc, i) => acc + i.breakdown.cgstAmountPaise);
    final totalSgst = invoices.fold(0, (acc, i) => acc + i.breakdown.sgstAmountPaise);
    final totalTax = invoices.fold(0, (acc, i) => acc + i.breakdown.totalTaxPaise);
    final totalCollected = invoices.fold(0, (acc, i) => acc + i.totalPaidPaise);
    final totalOperatingExpenses = expenses.fold(0, (acc, e) => acc + e.amountPaise);

    // Payroll totals
    final totalSalaryPaid = salaryRecords.fold(0, (acc, s) => acc + s.computation.amountPaidPaise);
    final totalSalaryPending = salaryRecords.fold(0, (acc, s) => acc + s.computation.outstandingBalancePaise);
    final totalAdvancesPaid = advances.fold(0, (acc, a) => acc + a.amountPaise);
    final totalAdvancesRecovered = advances.fold(0, (acc, a) => acc + a.recoveredAmountPaise);

    // Occupancy percentage
    final occupiedCount = rooms.where((r) => r.occupancyStatus == 'occupied').length;
    final occupancyPercent = rooms.isNotEmpty ? ((occupiedCount / rooms.length) * 100).toStringAsFixed(1) : '0.0';

    return Scaffold(
      backgroundColor: AppColors.backgroundLight,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'FINANCIAL, TAX & OPERATIONAL REPORTS',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: AppColors.primaryNavy),
            ),
            const SizedBox(height: 4),
            const Text(
              'Hotel New Shivam Inn • Comprehensive audited operational and GSTR-1 summaries',
              style: TextStyle(fontSize: 13, color: AppColors.textSecondary),
            ),
            const SizedBox(height: 20),

            // Top Financial Metrics
            Row(
              children: [
                _reportCard('Total Invoiced Revenue', CurrencyFormatter.formatPaise(totalInvoiced), AppColors.primaryNavy),
                const SizedBox(width: 12),
                _reportCard('Total Payments Collected', CurrencyFormatter.formatPaise(totalCollected), AppColors.successEmerald),
                const SizedBox(width: 12),
                _reportCard('Total GST Collected', CurrencyFormatter.formatPaise(totalTax), AppColors.infoBlue),
                const SizedBox(width: 12),
                _reportCard('Current Occupancy', '$occupancyPercent%', AppColors.accentAmber),
              ],
            ),
            const SizedBox(height: 20),

            // GST Filing Breakdown (GSTR-1 Format)
            Card(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'GST TAX FILING BREAKDOWN (GSTR-1 FORMAT)',
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: AppColors.primaryNavy),
                    ),
                    const SizedBox(height: 12),
                    Table(
                      border: TableBorder.all(color: AppColors.borderLight),
                      children: [
                        TableRow(
                          decoration: const BoxDecoration(color: Color(0xFFF1F5F9)),
                          children: [
                            _th('Tax Component'),
                            _th('Applicable Rate'),
                            _th('Taxable Value'),
                            _th('Tax Collected'),
                          ],
                        ),
                        TableRow(
                          children: [
                            _td('CGST (Central Tax)'),
                            _td('2.50%'),
                            _td(CurrencyFormatter.formatPaise(totalRoomCharges)),
                            _td(CurrencyFormatter.formatPaise(totalCgst), bold: true),
                          ],
                        ),
                        TableRow(
                          children: [
                            _td('SGST (State Tax - Bihar)'),
                            _td('2.50%'),
                            _td(CurrencyFormatter.formatPaise(totalRoomCharges)),
                            _td(CurrencyFormatter.formatPaise(totalSgst), bold: true),
                          ],
                        ),
                        TableRow(
                          decoration: const BoxDecoration(color: Color(0xFFF8FAFC)),
                          children: [
                            _td('Combined Total GST (5%)', bold: true),
                            _td('5.00%', bold: true),
                            _td(CurrencyFormatter.formatPaise(totalRoomCharges), bold: true),
                            _td(CurrencyFormatter.formatPaise(totalTax), bold: true, color: AppColors.primaryNavy),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Cash Drawer & Payroll Ledger Reconciliation
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('FRONT DESK CASH & EXPENSES', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: AppColors.primaryNavy)),
                          const SizedBox(height: 12),
                          _line('Guest Payments Collected:', CurrencyFormatter.formatPaise(totalCollected)),
                          _line('Operating Expenses Paid:', '- ${CurrencyFormatter.formatPaise(totalOperatingExpenses)}'),
                          const Divider(),
                          _line(
                            'Net Cash Position:',
                            CurrencyFormatter.formatPaise(totalCollected - totalOperatingExpenses),
                            bold: true,
                            color: (totalCollected - totalOperatingExpenses) >= 0 ? AppColors.successEmerald : AppColors.dangerCrimson,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('PAYROLL & ADVANCE LEDGER', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: AppColors.primaryNavy)),
                          const SizedBox(height: 12),
                          _line('Salary Disbursed to Date:', CurrencyFormatter.formatPaise(totalSalaryPaid)),
                          _line('Outstanding Unpaid Salaries:', CurrencyFormatter.formatPaise(totalSalaryPending), color: AppColors.dangerCrimson),
                          _line('Total Advances Given:', CurrencyFormatter.formatPaise(totalAdvancesPaid)),
                          _line('Advances Recovered via Payroll:', CurrencyFormatter.formatPaise(totalAdvancesRecovered)),
                          const Divider(),
                          _line('Active Advance Balances:', CurrencyFormatter.formatPaise(totalAdvancesPaid - totalAdvancesRecovered), bold: true),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _reportCard(String title, String val, Color color) {
    return Expanded(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: const TextStyle(fontSize: 11, fontWeight: FontWeight.w600, color: AppColors.textSecondary)),
              const SizedBox(height: 6),
              Text(val, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: color)),
            ],
          ),
        ),
      ),
    );
  }

  Widget _line(String label, String value, {bool bold = false, Color? color}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: TextStyle(fontSize: 13, fontWeight: bold ? FontWeight.bold : FontWeight.normal)),
          Text(value, style: TextStyle(fontSize: 13, fontWeight: bold ? FontWeight.bold : FontWeight.normal, color: color)),
        ],
      ),
    );
  }

  static Widget _th(String text) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Text(text, style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: AppColors.primaryNavy)),
    );
  }

  static Widget _td(String text, {bool bold = false, Color? color}) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Text(text, style: TextStyle(fontSize: 12, fontWeight: bold ? FontWeight.bold : FontWeight.normal, color: color)),
    );
  }
}
