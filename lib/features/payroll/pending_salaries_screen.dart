import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/constants/app_colors.dart';
import '../../core/utils/currency_formatter.dart';
import '../shared/providers.dart';

class PendingSalariesScreen extends ConsumerStatefulWidget {
  const PendingSalariesScreen({super.key});

  @override
  ConsumerState<PendingSalariesScreen> createState() => _PendingSalariesScreenState();
}

class _PendingSalariesScreenState extends ConsumerState<PendingSalariesScreen> {
  String _filter = 'PENDING'; // 'PENDING', 'OVERDUE', 'PAID', 'ALL'

  @override
  Widget build(BuildContext context) {
    final records = ref.watch(salaryRecordsProvider);

    final filtered = records.where((s) {
      if (_filter == 'PENDING') {
        return s.computation.status == 'salary_due' ||
            s.computation.status == 'overdue' ||
            s.computation.status == 'partially_paid';
      }
      if (_filter == 'OVERDUE') {
        return s.computation.status == 'overdue';
      }
      if (_filter == 'PAID') {
        return s.computation.status == 'paid';
      }
      return true;
    }).toList();

    final totalOutstanding = records.fold(0, (acc, s) => acc + s.computation.outstandingBalancePaise);
    final overdueCount = records.where((s) => s.computation.status == 'overdue').length;

    return Scaffold(
      backgroundColor: AppColors.backgroundLight,
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Wrap(
              spacing: 12,
              runSpacing: 10,
              alignment: WrapAlignment.spaceBetween,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'PENDING SALARY DASHBOARD',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: AppColors.primaryNavy),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'Total Outstanding Obligations: ${CurrencyFormatter.formatPaise(totalOutstanding)} • $overdueCount Overdue',
                      style: const TextStyle(fontSize: 13, color: AppColors.textSecondary),
                    ),
                  ],
                ),
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: [
                    _filterChip('PENDING', 'Pending & Overdue'),
                    _filterChip('OVERDUE', 'Overdue Only'),
                    _filterChip('PAID', 'Settled / Paid'),
                    _filterChip('ALL', 'All Records'),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 16),

            // Pending Salaries Table
            Expanded(
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: filtered.isEmpty
                      ? const Center(
                          child: Text(
                            'No salary records matching the selected filter.',
                            style: TextStyle(color: AppColors.textSecondary),
                          ),
                        )
                      : ListView(
                          children: [
                            DataTable(
                              columns: const [
                                DataColumn(label: Text('Employee', style: TextStyle(fontWeight: FontWeight.bold))),
                                DataColumn(label: Text('Month')),
                                DataColumn(label: Text('Net Payable')),
                                DataColumn(label: Text('Paid')),
                                DataColumn(label: Text('Outstanding Balance')),
                                DataColumn(label: Text('Due Date')),
                                DataColumn(label: Text('Status')),
                                DataColumn(label: Text('Action')),
                              ],
                              rows: [
                                for (final rec in filtered)
                                  DataRow(
                                    cells: [
                                      DataCell(Text(rec.employeeName, style: const TextStyle(fontWeight: FontWeight.bold))),
                                      DataCell(Text(rec.salaryMonth)),
                                      DataCell(Text(CurrencyFormatter.formatPaise(rec.computation.netSalaryPayablePaise))),
                                      DataCell(Text(CurrencyFormatter.formatPaise(rec.computation.amountPaidPaise), style: const TextStyle(color: AppColors.successEmerald))),
                                      DataCell(
                                        Text(
                                          CurrencyFormatter.formatPaise(rec.computation.outstandingBalancePaise),
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: rec.computation.status == 'overdue'
                                                ? AppColors.dangerCrimson
                                                : AppColors.primaryNavy,
                                          ),
                                        ),
                                      ),
                                      DataCell(Text(rec.dueDate.toString().substring(0, 10))),
                                      DataCell(_statusBadge(rec.computation.status)),
                                      DataCell(
                                        rec.computation.outstandingBalancePaise > 0
                                            ? ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                                                  textStyle: const TextStyle(fontSize: 11),
                                                ),
                                                onPressed: () => _showDisbursePaymentDialog(context, ref, rec),
                                                child: const Text('Record Payment'),
                                              )
                                            : const Icon(Icons.check_circle, color: AppColors.successEmerald, size: 20),
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

  Widget _filterChip(String code, String label) {
    final isSelected = _filter == code;
    return ChoiceChip(
      label: Text(label),
      selected: isSelected,
      onSelected: (_) => setState(() => _filter = code),
      selectedColor: AppColors.primaryNavy,
      labelStyle: TextStyle(
        color: isSelected ? Colors.white : AppColors.textPrimary,
        fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
        fontSize: 12,
      ),
    );
  }

  Widget _statusBadge(String status) {
    Color bg = AppColors.neutralGray.withOpacity(0.12);
    Color fg = AppColors.neutralGray;

    if (status == 'paid') {
      bg = AppColors.successEmerald.withOpacity(0.12);
      fg = AppColors.successEmerald;
    } else if (status == 'overdue') {
      bg = AppColors.dangerCrimson.withOpacity(0.12);
      fg = AppColors.dangerCrimson;
    } else if (status == 'partially_paid') {
      bg = AppColors.warningOrange.withOpacity(0.12);
      fg = AppColors.warningOrange;
    } else if (status == 'salary_due') {
      bg = AppColors.infoBlue.withOpacity(0.12);
      fg = AppColors.infoBlue;
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
      decoration: BoxDecoration(color: bg, borderRadius: BorderRadius.circular(4)),
      child: Text(
        status.replaceAll('_', ' ').toUpperCase(),
        style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: fg),
      ),
    );
  }

  void _showDisbursePaymentDialog(BuildContext context, WidgetRef ref, SalaryRecord rec) {
    final amountCtrl = TextEditingController(text: (rec.computation.outstandingBalancePaise ~/ 100).toString());
    String method = 'bank_transfer';

    showDialog(
      context: context,
      builder: (ctx) => StatefulBuilder(
        builder: (context, setDialogState) => AlertDialog(
          title: Text('Record Salary Payment: ${rec.employeeName}'),
          content: SizedBox(
            width: 420,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Period: ${rec.salaryMonth} • Outstanding: ${CurrencyFormatter.formatPaise(rec.computation.outstandingBalancePaise)}',
                  style: const TextStyle(fontSize: 12, color: AppColors.textSecondary),
                ),
                const SizedBox(height: 16),
                TextField(
                  controller: amountCtrl,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(labelText: 'Payment Amount (₹)', prefixText: '₹ '),
                ),
                const SizedBox(height: 12),
                DropdownButtonFormField<String>(
                  value: method,
                  decoration: const InputDecoration(labelText: 'Disbursement Method'),
                  items: const [
                    DropdownMenuItem(value: 'bank_transfer', child: Text('Bank Transfer / NEFT')),
                    DropdownMenuItem(value: 'upi', child: Text('UPI')),
                    DropdownMenuItem(value: 'cash', child: Text('Cash')),
                  ],
                  onChanged: (v) => setDialogState(() => method = v!),
                ),
              ],
            ),
          ),
          actions: [
            TextButton(onPressed: () => Navigator.pop(ctx), child: const Text('Cancel')),
            ElevatedButton(
              onPressed: () {
                final amount = double.tryParse(amountCtrl.text.trim()) ?? 0.0;
                final amountPaise = CurrencyFormatter.inrToPaise(amount);
                if (amountPaise <= 0) return;

                ref.read(salaryRecordsProvider.notifier).recordPayment(rec.id, amountPaise);
                Navigator.pop(ctx);
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Disbursed ${CurrencyFormatter.formatPaise(amountPaise)} to ${rec.employeeName}!')),
                );
              },
              child: const Text('Confirm Disbursement'),
            ),
          ],
        ),
      ),
    );
  }
}
