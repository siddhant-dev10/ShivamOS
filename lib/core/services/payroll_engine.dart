import 'package:flutter/foundation.dart';
import '../errors/exceptions.dart';

@immutable
class SalaryComputation {
  final int baseSalaryPaise;
  final int additionalEarningsPaise;
  final int deductionsPaise;
  final int grossSalaryPaise;
  final int advanceRecoveryPaise;
  final int netSalaryPayablePaise;
  final int amountPaidPaise;
  final int outstandingBalancePaise;
  final String status; // 'salary_due', 'partially_paid', 'paid', 'overdue'

  const SalaryComputation({
    required this.baseSalaryPaise,
    required this.additionalEarningsPaise,
    required this.deductionsPaise,
    required this.grossSalaryPaise,
    required this.advanceRecoveryPaise,
    required this.netSalaryPayablePaise,
    required this.amountPaidPaise,
    required this.outstandingBalancePaise,
    required this.status,
  });
}

class PayrollEngine {
  /// Calculate monthly payroll components ensuring zero double-counting
  /// and strict bounds on advance recovery.
  static SalaryComputation computeSalary({
    required int baseSalaryPaise,
    int additionalEarningsPaise = 0,
    int deductionsPaise = 0,
    int advanceRecoveryPaise = 0,
    required int maxRecoverableAdvancePaise,
    int amountPaidPaise = 0,
    required DateTime dueDate,
    required DateTime evaluationDate,
  }) {
    if (baseSalaryPaise < 0 || additionalEarningsPaise < 0 || deductionsPaise < 0 || advanceRecoveryPaise < 0) {
      throw NegativeAmountException('Salary components cannot be negative.');
    }

    if (advanceRecoveryPaise > maxRecoverableAdvancePaise) {
      throw AdvanceOverRecoveryException(
        'Requested advance recovery ($advanceRecoveryPaise paise) exceeds outstanding advance balance ($maxRecoverableAdvancePaise paise).',
      );
    }

    final int grossSalaryPaise = baseSalaryPaise + additionalEarningsPaise;
    final int totalDeductions = deductionsPaise + advanceRecoveryPaise;

    if (totalDeductions > grossSalaryPaise) {
      throw ShivamException('Total deductions and advance recoveries cannot exceed gross salary.');
    }

    final int netSalaryPayablePaise = grossSalaryPaise - totalDeductions;
    final int outstandingBalancePaise = netSalaryPayablePaise - amountPaidPaise;

    if (outstandingBalancePaise < 0) {
      throw ShivamException('Amount paid ($amountPaidPaise paise) cannot exceed net payable ($netSalaryPayablePaise paise).');
    }

    // Determine status
    String status;
    if (amountPaidPaise >= netSalaryPayablePaise && netSalaryPayablePaise > 0) {
      status = 'paid';
    } else if (amountPaidPaise > 0 && outstandingBalancePaise > 0) {
      status = 'partially_paid';
    } else {
      final DateTime evalOnly = DateTime(evaluationDate.year, evaluationDate.month, evaluationDate.day);
      final DateTime dueOnly = DateTime(dueDate.year, dueDate.month, dueDate.day);
      if (evalOnly.isAfter(dueOnly)) {
        status = 'overdue';
      } else {
        status = 'salary_due';
      }
    }

    return SalaryComputation(
      baseSalaryPaise: baseSalaryPaise,
      additionalEarningsPaise: additionalEarningsPaise,
      deductionsPaise: deductionsPaise,
      grossSalaryPaise: grossSalaryPaise,
      advanceRecoveryPaise: advanceRecoveryPaise,
      netSalaryPayablePaise: netSalaryPayablePaise,
      amountPaidPaise: amountPaidPaise,
      outstandingBalancePaise: outstandingBalancePaise,
      status: status,
    );
  }

  /// Process an advance recovery against an advance record, returning updated balances
  static Map<String, int> applyAdvanceRecovery({
    required int currentAdvanceBalancePaise,
    required int currentRecoveredPaise,
    required int recoveryAmountPaise,
  }) {
    if (recoveryAmountPaise <= 0) {
      throw ShivamException('Recovery amount must be positive.');
    }
    if (recoveryAmountPaise > currentAdvanceBalancePaise) {
      throw AdvanceOverRecoveryException(
        'Cannot recover more than outstanding advance balance ($currentAdvanceBalancePaise paise).',
      );
    }

    final int newBalance = currentAdvanceBalancePaise - recoveryAmountPaise;
    final int newTotalRecovered = currentRecoveredPaise + recoveryAmountPaise;

    return {
      'newAdvanceBalancePaise': newBalance,
      'newTotalRecoveredPaise': newTotalRecovered,
    };
  }
}
