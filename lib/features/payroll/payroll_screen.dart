import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/constants/app_colors.dart';
import '../../core/utils/currency_formatter.dart';
import '../shared/providers.dart';

class PayrollScreen extends ConsumerStatefulWidget {
  const PayrollScreen({super.key});

  @override
  ConsumerState<PayrollScreen> createState() => _PayrollScreenState();
}

class _PayrollScreenState extends ConsumerState<PayrollScreen> {
  @override
  Widget build(BuildContext context) {
    final employees = ref.watch(employeesProvider);
    final salaryRecords = ref.watch(salaryRecordsProvider);
    final advances = ref.watch(salaryAdvancesProvider);

    final totalMonthlyObligation = employees.fold(0, (acc, e) => acc + e.baseMonthlySalaryPaise);
    final totalDisbursed = salaryRecords.fold(0, (acc, s) => acc + s.computation.amountPaidPaise);
    final totalPending = salaryRecords.fold(0, (acc, s) => acc + s.computation.outstandingBalancePaise);

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
                      'EMPLOYEES & PAYROLL MANAGEMENT',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: AppColors.primaryNavy),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'Hotel New Shivam Inn • ${employees.length} Staff Members Configured',
                      style: const TextStyle(fontSize: 13, color: AppColors.textSecondary),
                    ),
                  ],
                ),
                ElevatedButton.icon(
                  icon: const Icon(Icons.person_add, size: 18),
                  label: const Text('Add Staff Member'),
                  onPressed: () => _showAddEmployeeDialog(context, ref),
                ),
              ],
            ),
            const SizedBox(height: 16),

            // Summary metrics
            Row(
              children: [
                _metricCard('Monthly Salary Obligation', CurrencyFormatter.formatPaise(totalMonthlyObligation), AppColors.primaryNavy),
                const SizedBox(width: 12),
                _metricCard('Salaries Disbursed', CurrencyFormatter.formatPaise(totalDisbursed), AppColors.successEmerald),
                const SizedBox(width: 12),
                _metricCard('Outstanding / Pending', CurrencyFormatter.formatPaise(totalPending), AppColors.warningOrange),
              ],
            ),
            const SizedBox(height: 16),

            // Employee Directory & Payroll Action Table
            Expanded(
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: employees.isEmpty
                      ? Center(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Icon(Icons.people_outline, size: 48, color: AppColors.neutralGray),
                              const SizedBox(height: 12),
                              const Text('No employees added yet.', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                              const SizedBox(height: 4),
                              const Text('Add staff members to track monthly payroll, attendance, and salary advances.', style: TextStyle(color: AppColors.textSecondary)),
                              const SizedBox(height: 16),
                              ElevatedButton(
                                onPressed: () => _showAddEmployeeDialog(context, ref),
                                child: const Text('Add First Employee'),
                              ),
                            ],
                          ),
                        )
                      : ListView(
                          children: [
                            DataTable(
                              columns: const [
                                DataColumn(label: Text('Code', style: TextStyle(fontWeight: FontWeight.bold))),
                                DataColumn(label: Text('Name')),
                                DataColumn(label: Text('Mobile')),
                                DataColumn(label: Text('Designation')),
                                DataColumn(label: Text('Base Salary')),
                                DataColumn(label: Text('Due Day')),
                                DataColumn(label: Text('Active Advance')),
                                DataColumn(label: Text('Actions')),
                              ],
                              rows: [
                                for (final emp in employees) ...[
                                  () {
                                    final empAdvances = advances.where((a) => a.employeeId == emp.id && a.status != 'fully_recovered');
                                    final totalAdv = empAdvances.fold(0, (acc, a) => acc + a.outstandingBalancePaise);

                                    return DataRow(
                                      cells: [
                                        DataCell(Text(emp.employeeCode, style: const TextStyle(fontWeight: FontWeight.bold))),
                                        DataCell(Text(emp.fullName)),
                                        DataCell(Text(emp.mobile)),
                                        DataCell(Text(emp.designation)),
                                        DataCell(Text(CurrencyFormatter.formatPaise(emp.baseMonthlySalaryPaise), style: const TextStyle(fontWeight: FontWeight.bold))),
                                        DataCell(Text('Day ${emp.salaryDueDay} of month')),
                                        DataCell(
                                          Text(
                                            CurrencyFormatter.formatPaise(totalAdv),
                                            style: TextStyle(
                                              color: totalAdv > 0 ? AppColors.accentAmber : AppColors.neutralGray,
                                              fontWeight: totalAdv > 0 ? FontWeight.bold : FontWeight.normal,
                                            ),
                                          ),
                                        ),
                                        DataCell(
                                          ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                                              textStyle: const TextStyle(fontSize: 12),
                                            ),
                                            onPressed: () => _showGenerateSalaryDialog(context, ref, emp, totalAdv),
                                            child: const Text('Process Salary'),
                                          ),
                                        ),
                                      ],
                                    );
                                  }(),
                                ],
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

  Widget _metricCard(String title, String val, Color color) {
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

  void _showAddEmployeeDialog(BuildContext context, WidgetRef ref) {
    final nameCtrl = TextEditingController();
    final mobileCtrl = TextEditingController();
    final desigCtrl = TextEditingController(text: 'Receptionist');
    final salaryCtrl = TextEditingController(text: '18000');
    int dueDay = 5;

    showDialog(
      context: context,
      builder: (ctx) => StatefulBuilder(
        builder: (context, setDialogState) => AlertDialog(
          title: const Text('Add Hotel Employee'),
          content: SizedBox(
            width: 440,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  controller: nameCtrl,
                  decoration: const InputDecoration(labelText: 'Full Name *', hintText: 'e.g. Ramesh Kumar'),
                ),
                const SizedBox(height: 12),
                TextField(
                  controller: mobileCtrl,
                  keyboardType: TextInputType.phone,
                  decoration: const InputDecoration(labelText: 'Mobile Number *', hintText: 'e.g. 9876543210'),
                ),
                const SizedBox(height: 12),
                TextField(
                  controller: desigCtrl,
                  decoration: const InputDecoration(labelText: 'Designation *', hintText: 'e.g. Manager, Receptionist, Housekeeper'),
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: salaryCtrl,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(labelText: 'Monthly Base Salary (₹)', prefixText: '₹ '),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: DropdownButtonFormField<int>(
                        value: dueDay,
                        decoration: const InputDecoration(labelText: 'Salary Due Day'),
                        items: [1, 5, 7, 10, 15]
                            .map((d) => DropdownMenuItem(value: d, child: Text('Day $d of month')))
                            .toList(),
                        onChanged: (v) => setDialogState(() => dueDay = v!),
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
                if (nameCtrl.text.trim().isEmpty || mobileCtrl.text.trim().isEmpty) return;
                final sal = (double.tryParse(salaryCtrl.text.trim()) ?? 0.0);
                final salPaise = CurrencyFormatter.inrToPaise(sal);

                ref.read(employeesProvider.notifier).addEmployee(
                  fullName: nameCtrl.text.trim(),
                  mobile: mobileCtrl.text.trim(),
                  designation: desigCtrl.text.trim(),
                  baseMonthlySalaryPaise: salPaise,
                  salaryDueDay: dueDay,
                );
                Navigator.pop(ctx);
              },
              child: const Text('Save Employee'),
            ),
          ],
        ),
      ),
    );
  }

  void _showGenerateSalaryDialog(BuildContext context, WidgetRef ref, EmployeeRecord emp, int availableAdvancePaise) {
    String month = '${DateTime.now().year}-${DateTime.now().month.toString().padLeft(2, '0')}';
    final earningsCtrl = TextEditingController(text: '0');
    final deductionsCtrl = TextEditingController(text: '0');
    final advanceRecCtrl = TextEditingController(text: availableAdvancePaise > 0 ? (availableAdvancePaise ~/ 100).toString() : '0');

    showDialog(
      context: context,
      builder: (ctx) => StatefulBuilder(
        builder: (context, setDialogState) {
          final addEarnPaise = CurrencyFormatter.inrToPaise(double.tryParse(earningsCtrl.text) ?? 0.0);
          final dedPaise = CurrencyFormatter.inrToPaise(double.tryParse(deductionsCtrl.text) ?? 0.0);
          final recPaise = CurrencyFormatter.inrToPaise(double.tryParse(advanceRecCtrl.text) ?? 0.0);

          final grossPaise = emp.baseMonthlySalaryPaise + addEarnPaise;
          final netPaise = grossPaise - (dedPaise + recPaise);

          return AlertDialog(
            title: Text('Process Salary: ${emp.fullName}'),
            content: SizedBox(
              width: 480,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Designation: ${emp.designation} • Base: ${CurrencyFormatter.formatPaise(emp.baseMonthlySalaryPaise)}', style: const TextStyle(fontSize: 12, color: AppColors.textSecondary)),
                  const SizedBox(height: 12),
                  DropdownButtonFormField<String>(
                    value: month,
                    decoration: const InputDecoration(labelText: 'Salary Period (Month)'),
                    items: [
                      '${DateTime.now().year}-${DateTime.now().month.toString().padLeft(2, '0')}',
                      '${DateTime.now().year}-${(DateTime.now().month - 1).toString().padLeft(2, '0')}',
                    ].map((m) => DropdownMenuItem(value: m, child: Text(m))).toList(),
                    onChanged: (v) => setDialogState(() => month = v!),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          controller: earningsCtrl,
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(labelText: 'Addl. Earnings (₹)', prefixText: '₹ '),
                          onChanged: (_) => setDialogState(() {}),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: TextField(
                          controller: deductionsCtrl,
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(labelText: 'Deductions (₹)', prefixText: '₹ '),
                          onChanged: (_) => setDialogState(() {}),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  TextField(
                    controller: advanceRecCtrl,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: 'Advance Recovery (Max: ${CurrencyFormatter.formatPaise(availableAdvancePaise)})',
                      prefixText: '₹ ',
                    ),
                    onChanged: (_) => setDialogState(() {}),
                  ),
                  const Divider(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Gross Salary:', style: TextStyle(fontSize: 13)),
                      Text(CurrencyFormatter.formatPaise(grossPaise), style: const TextStyle(fontSize: 13, fontWeight: FontWeight.bold)),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Net Salary Payable:', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: AppColors.primaryNavy)),
                      Text(CurrencyFormatter.formatPaise(netPaise), style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: AppColors.primaryNavy)),
                    ],
                  ),
                ],
              ),
            ),
            actions: [
              TextButton(onPressed: () => Navigator.pop(ctx), child: const Text('Cancel')),
              ElevatedButton(
                onPressed: () {
                  try {
                    ref.read(salaryRecordsProvider.notifier).generateSalaryPeriod(
                      employee: emp,
                      salaryMonth: month,
                      additionalEarningsPaise: addEarnPaise,
                      deductionsPaise: dedPaise,
                      advanceRecoveryPaise: recPaise,
                    );
                    Navigator.pop(ctx);
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Salary period generated for ${emp.fullName}!')),
                    );
                  } catch (e) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(e.toString())));
                  }
                },
                child: const Text('Confirm Salary Record'),
              ),
            ],
          );
        },
      ),
    );
  }
}
