import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/constants/app_colors.dart';
import '../../core/utils/currency_formatter.dart';
import '../shared/providers.dart';

class SalaryAdvancesScreen extends ConsumerWidget {
  const SalaryAdvancesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final advances = ref.watch(salaryAdvancesProvider);
    final employees = ref.watch(employeesProvider);

    final totalAdvancesPaid = advances.fold(0, (acc, a) => acc + a.amountPaise);
    final totalRecovered = advances.fold(0, (acc, a) => acc + a.recoveredAmountPaise);
    final totalOutstanding = advances.fold(0, (acc, a) => acc + a.outstandingBalancePaise);

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
                      'SALARY ADVANCES & RECOVERY LEDGER',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: AppColors.primaryNavy),
                    ),
                    const SizedBox(height: 4),
                    const Text(
                      'Hotel New Shivam Inn • Double-entry staff loan & recovery tracking',
                      style: TextStyle(fontSize: 13, color: AppColors.textSecondary),
                    ),
                  ],
                ),
                ElevatedButton.icon(
                  icon: const Icon(Icons.add_card, size: 18),
                  label: const Text('Issue Salary Advance'),
                  onPressed: employees.isNotEmpty
                      ? () => _showIssueAdvanceDialog(context, ref, employees)
                      : null,
                ),
              ],
            ),
            const SizedBox(height: 16),

            // Summary metrics
            Row(
              children: [
                _metric('Total Advances Issued', CurrencyFormatter.formatPaise(totalAdvancesPaid), AppColors.primaryNavy),
                const SizedBox(width: 12),
                _metric('Total Recovered via Payroll', CurrencyFormatter.formatPaise(totalRecovered), AppColors.successEmerald),
                const SizedBox(width: 12),
                _metric('Outstanding Unsettled Advances', CurrencyFormatter.formatPaise(totalOutstanding), AppColors.accentAmber),
              ],
            ),
            const SizedBox(height: 16),

            // Advances Table
            Expanded(
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: advances.isEmpty
                      ? const Center(
                          child: Text(
                            'No salary advances on record.',
                            style: TextStyle(color: AppColors.textSecondary),
                          ),
                        )
                      : ListView(
                          children: [
                            DataTable(
                              columns: const [
                                DataColumn(label: Text('Advance Code', style: TextStyle(fontWeight: FontWeight.bold))),
                                DataColumn(label: Text('Employee')),
                                DataColumn(label: Text('Issue Date')),
                                DataColumn(label: Text('Original Amount')),
                                DataColumn(label: Text('Recovered')),
                                DataColumn(label: Text('Remaining Balance')),
                                DataColumn(label: Text('Reason')),
                                DataColumn(label: Text('Status')),
                              ],
                              rows: [
                                for (final adv in advances)
                                  DataRow(
                                    cells: [
                                      DataCell(Text(adv.advanceCode, style: const TextStyle(fontWeight: FontWeight.bold))),
                                      DataCell(Text(adv.employeeName)),
                                      DataCell(Text(adv.advanceDate.toString().substring(0, 10))),
                                      DataCell(Text(CurrencyFormatter.formatPaise(adv.amountPaise))),
                                      DataCell(Text(CurrencyFormatter.formatPaise(adv.recoveredAmountPaise), style: const TextStyle(color: AppColors.successEmerald))),
                                      DataCell(
                                        Text(
                                          CurrencyFormatter.formatPaise(adv.outstandingBalancePaise),
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: adv.outstandingBalancePaise > 0 ? AppColors.accentAmber : AppColors.neutralGray,
                                          ),
                                        ),
                                      ),
                                      DataCell(Text(adv.reason ?? 'General Advance')),
                                      DataCell(
                                        Container(
                                          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                                          decoration: BoxDecoration(
                                            color: adv.status == 'fully_recovered'
                                                ? AppColors.successEmerald.withOpacity(0.12)
                                                : AppColors.accentAmber.withOpacity(0.12),
                                            borderRadius: BorderRadius.circular(4),
                                          ),
                                          child: Text(
                                            adv.status.replaceAll('_', ' ').toUpperCase(),
                                            style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.bold,
                                              color: adv.status == 'fully_recovered'
                                                  ? AppColors.successEmerald
                                                  : AppColors.accentAmber,
                                            ),
                                          ),
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

  void _showIssueAdvanceDialog(BuildContext context, WidgetRef ref, List<EmployeeRecord> employees) {
    String selectedEmpId = employees.first.id;
    final amountCtrl = TextEditingController(text: '5000');
    final reasonCtrl = TextEditingController(text: 'Family Medical Emergency');

    showDialog(
      context: context,
      builder: (ctx) => StatefulBuilder(
        builder: (context, setDialogState) {
          final emp = employees.firstWhere((e) => e.id == selectedEmpId);

          return AlertDialog(
            title: const Text('Issue Salary Advance'),
            content: SizedBox(
              width: 440,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Advances will be automatically tracked in the ledger and deducted from subsequent payroll calculations.',
                    style: TextStyle(fontSize: 12, color: AppColors.textSecondary),
                  ),
                  const SizedBox(height: 16),
                  DropdownButtonFormField<String>(
                    value: selectedEmpId,
                    decoration: const InputDecoration(labelText: 'Select Employee'),
                    items: employees
                        .map((e) => DropdownMenuItem(value: e.id, child: Text('${e.fullName} (${e.designation})')))
                        .toList(),
                    onChanged: (v) => setDialogState(() => selectedEmpId = v!),
                  ),
                  const SizedBox(height: 12),
                  TextField(
                    controller: amountCtrl,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(labelText: 'Advance Amount (₹)', prefixText: '₹ '),
                  ),
                  const SizedBox(height: 12),
                  TextField(
                    controller: reasonCtrl,
                    decoration: const InputDecoration(labelText: 'Reason for Advance'),
                  ),
                ],
              ),
            ),
            actions: [
              TextButton(onPressed: () => Navigator.pop(ctx), child: const Text('Cancel')),
              ElevatedButton(
                onPressed: () {
                  final amt = double.tryParse(amountCtrl.text.trim()) ?? 0.0;
                  final amtPaise = CurrencyFormatter.inrToPaise(amt);
                  if (amtPaise <= 0) return;

                  ref.read(salaryAdvancesProvider.notifier).issueAdvance(
                    employeeId: emp.id,
                    employeeName: emp.fullName,
                    amountPaise: amtPaise,
                    reason: reasonCtrl.text.trim(),
                  );
                  Navigator.pop(ctx);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Issued ${CurrencyFormatter.formatPaise(amtPaise)} advance to ${emp.fullName}!')),
                  );
                },
                child: const Text('Confirm & Issue Advance'),
              ),
            ],
          );
        },
      ),
    );
  }
}
