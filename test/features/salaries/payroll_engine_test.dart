import 'package:flutter_test/flutter_test.dart';
import 'package:shivamos/core/errors/exceptions.dart';
import 'package:shivamos/core/services/payroll_engine.dart';

void main() {
  group('PayrollEngine Unit Tests', () {
    test('TC-PAY-01: Prompt Example - Monthly ₹18,000 with ₹5,000 advance recovery leaves ₹13,000 net', () {
      final comp = PayrollEngine.computeSalary(
        baseSalaryPaise: 1800000, // ₹18,000.00
        advanceRecoveryPaise: 500000, // ₹5,000.00
        maxRecoverableAdvancePaise: 500000, // Available advance balance
        dueDate: DateTime(2026, 11, 5),
        evaluationDate: DateTime(2026, 11, 1),
      );

      expect(comp.grossSalaryPaise, 1800000);
      expect(comp.advanceRecoveryPaise, 500000);
      expect(comp.netSalaryPayablePaise, 1300000); // ₹13,000.00
      expect(comp.outstandingBalancePaise, 1300000);
      expect(comp.status, 'salary_due');
    });

    test('TC-PAY-02: Overdue Status Triggered when Evaluation Date is Past Due Date', () {
      final comp = PayrollEngine.computeSalary(
        baseSalaryPaise: 1500000, // ₹15,000
        maxRecoverableAdvancePaise: 0,
        dueDate: DateTime(2026, 10, 5),
        evaluationDate: DateTime(2026, 10, 6), // Past due date
      );

      expect(comp.status, 'overdue');
    });

    test('TC-PAY-03: Partially Paid Status when Installment Payment is Recorded', () {
      final comp = PayrollEngine.computeSalary(
        baseSalaryPaise: 2000000, // ₹20,000
        maxRecoverableAdvancePaise: 0,
        amountPaidPaise: 800000, // ₹8,000 paid
        dueDate: DateTime(2026, 11, 5),
        evaluationDate: DateTime(2026, 11, 2),
      );

      expect(comp.outstandingBalancePaise, 1200000); // ₹12,000 remaining
      expect(comp.status, 'partially_paid');
    });

    test('TC-PAY-04: Paid Status when Full Net Salary is Settled', () {
      final comp = PayrollEngine.computeSalary(
        baseSalaryPaise: 2000000, // ₹20,000
        maxRecoverableAdvancePaise: 0,
        amountPaidPaise: 2000000, // Full ₹20,000 paid
        dueDate: DateTime(2026, 11, 5),
        evaluationDate: DateTime(2026, 11, 2),
      );

      expect(comp.outstandingBalancePaise, 0);
      expect(comp.status, 'paid');
    });

    test('TC-PAY-05: Prevention of Over-Recovery throws AdvanceOverRecoveryException', () {
      expect(
        () => PayrollEngine.computeSalary(
          baseSalaryPaise: 1800000,
          advanceRecoveryPaise: 600000, // Attempting ₹6,000 recovery
          maxRecoverableAdvancePaise: 500000, // Only ₹5,000 available
          dueDate: DateTime(2026, 11, 5),
          evaluationDate: DateTime(2026, 11, 1),
        ),
        throwsA(isA<AdvanceOverRecoveryException>()),
      );
    });

    test('TC-PAY-06: applyAdvanceRecovery Updates Advance Ledger Balances Correctly', () {
      final result = PayrollEngine.applyAdvanceRecovery(
        currentAdvanceBalancePaise: 500000, // ₹5,000 outstanding
        currentRecoveredPaise: 200000, // ₹2,000 previously recovered
        recoveryAmountPaise: 300000, // Recover ₹3,000 now
      );

      expect(result['newAdvanceBalancePaise'], 200000); // ₹2,000 remaining
      expect(result['newTotalRecoveredPaise'], 500000); // ₹5,000 total recovered
    });
  });
}
