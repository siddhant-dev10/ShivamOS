import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/constants/app_colors.dart';
import '../../core/utils/currency_formatter.dart';
import '../shared/providers.dart';

class ExpensesScreen extends ConsumerWidget {
  const ExpensesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final expenses = ref.watch(expensesProvider);
    final totalExpensePaise = expenses.fold(0, (acc, e) => acc + e.amountPaise);

    return Scaffold(
      backgroundColor: AppColors.backgroundLight,
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'HOTEL OPERATING EXPENSES',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: AppColors.primaryNavy),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'Hotel New Shivam Inn • Total Logged: ${CurrencyFormatter.formatPaise(totalExpensePaise)}',
                      style: const TextStyle(fontSize: 13, color: AppColors.textSecondary),
                    ),
                  ],
                ),
                ElevatedButton.icon(
                  icon: const Icon(Icons.add, size: 18),
                  label: const Text('Record Expense'),
                  onPressed: () => _showAddExpenseDialog(context, ref),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Expanded(
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: expenses.isEmpty
                      ? const Center(
                          child: Text(
                            'No operating expenses logged yet. Click "Record Expense" to add utility or supply bills.',
                            style: TextStyle(color: AppColors.textSecondary),
                          ),
                        )
                      : ListView(
                          children: [
                            DataTable(
                              columns: const [
                                DataColumn(label: Text('Ref #', style: TextStyle(fontWeight: FontWeight.bold))),
                                DataColumn(label: Text('Date')),
                                DataColumn(label: Text('Category')),
                                DataColumn(label: Text('Description')),
                                DataColumn(label: Text('Payment Method')),
                                DataColumn(label: Text('Amount')),
                              ],
                              rows: [
                                for (final e in expenses)
                                  DataRow(
                                    cells: [
                                      DataCell(Text(e.reference, style: const TextStyle(fontWeight: FontWeight.bold))),
                                      DataCell(Text(e.date.toString().substring(0, 10))),
                                      DataCell(Text(e.categoryName)),
                                      DataCell(Text(e.description)),
                                      DataCell(Text(e.paymentMethod.toUpperCase())),
                                      DataCell(Text(CurrencyFormatter.formatPaise(e.amountPaise), style: const TextStyle(fontWeight: FontWeight.bold, color: AppColors.dangerCrimson))),
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

  void _showAddExpenseDialog(BuildContext context, WidgetRef ref) {
    String category = 'Utilities (Electricity / Water / Generator)';
    final descCtrl = TextEditingController();
    final amountCtrl = TextEditingController();
    String method = 'cash';

    showDialog(
      context: context,
      builder: (ctx) => StatefulBuilder(
        builder: (context, setDialogState) => AlertDialog(
          title: const Text('Record Operating Expense'),
          content: SizedBox(
            width: 440,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                DropdownButtonFormField<String>(
                  value: category,
                  decoration: const InputDecoration(labelText: 'Expense Category'),
                  items: [
                    'Utilities (Electricity / Water / Generator)',
                    'Housekeeping & Toiletries Supplies',
                    'Repairs & Property Maintenance',
                    'Linen & Laundry',
                    'Staff Welfare & Refreshments',
                    'Office & Administrative Stationery',
                  ].map((c) => DropdownMenuItem(value: c, child: Text(c, style: const TextStyle(fontSize: 12)))).toList(),
                  onChanged: (v) => setDialogState(() => category = v!),
                ),
                const SizedBox(height: 12),
                TextField(
                  controller: descCtrl,
                  decoration: const InputDecoration(labelText: 'Description / Purpose *', hintText: 'e.g. Generator diesel 20 Litres'),
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: amountCtrl,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(labelText: 'Amount (₹) *', prefixText: '₹ '),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: DropdownButtonFormField<String>(
                        value: method,
                        decoration: const InputDecoration(labelText: 'Paid Via'),
                        items: const [
                          DropdownMenuItem(value: 'cash', child: Text('Front Desk Cash')),
                          DropdownMenuItem(value: 'upi', child: Text('UPI')),
                          DropdownMenuItem(value: 'bank_transfer', child: Text('Bank Transfer')),
                        ],
                        onChanged: (v) => setDialogState(() => method = v!),
                      ),
                    ),
                  ],
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
                if (amtPaise <= 0 || descCtrl.text.trim().isEmpty) return;

                ref.read(expensesProvider.notifier).recordExpense(
                  categoryName: category,
                  amountPaise: amtPaise,
                  paymentMethod: method,
                  description: descCtrl.text.trim(),
                );
                Navigator.pop(ctx);
              },
              child: const Text('Save Expense'),
            ),
          ],
        ),
      ),
    );
  }
}
