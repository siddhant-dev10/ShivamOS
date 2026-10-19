import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/constants/app_colors.dart';
import '../../core/constants/hotel_defaults.dart';
import '../../core/utils/currency_formatter.dart';
import '../shared/providers.dart';

class DashboardScreen extends ConsumerWidget {
  final Function(String route) onNavigate;

  const DashboardScreen({super.key, required this.onNavigate});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final settings = ref.watch(hotelSettingsProvider);
    final rooms = ref.watch(roomsProvider);
    final stays = ref.watch(staysProvider);
    final reservations = ref.watch(reservationsProvider);
    final invoices = ref.watch(invoicesProvider);
    final salaryRecords = ref.watch(salaryRecordsProvider);
    final salaryAdvances = ref.watch(salaryAdvancesProvider);

    // Compute room metrics
    final totalRooms = rooms.length;
    final availableRooms = rooms.where((r) => r.occupancyStatus == 'available' && r.housekeepingStatus != 'cleaning_required' && r.maintenanceStatus == 'normal').length;
    final occupiedRooms = rooms.where((r) => r.occupancyStatus == 'occupied').length;
    final reservedRooms = reservations.where((r) => r.status == 'confirmed').length;
    final cleaningRooms = rooms.where((r) => r.housekeepingStatus == 'cleaning_required' || r.housekeepingStatus == 'cleaning_in_progress').length;
    final outOfServiceRooms = rooms.where((r) => r.maintenanceStatus == 'out_of_service').length;

    // Financial metrics
    final today = DateTime.now();
    final todayInvoices = invoices.where((inv) =>
        inv.checkOutDate.year == today.year &&
        inv.checkOutDate.month == today.month &&
        inv.checkOutDate.day == today.day);
    final todayInvoicedPaise = todayInvoices.fold(0, (acc, inv) => acc + inv.breakdown.totalAmountPaise);
    final todayPaidPaise = todayInvoices.fold(0, (acc, inv) => acc + inv.totalPaidPaise);
    final outstandingGuestPaise = invoices.fold(0, (acc, inv) => acc + inv.outstandingBalancePaise);

    // Payroll metrics
    final pendingSalaries = salaryRecords.where((s) => s.computation.status == 'salary_due' || s.computation.status == 'overdue');
    final overdueSalaries = salaryRecords.where((s) => s.computation.status == 'overdue');
    final totalPendingSalaryPaise = pendingSalaries.fold(0, (acc, s) => acc + s.computation.outstandingBalancePaise);
    final totalOutstandingAdvancesPaise = salaryAdvances.where((a) => a.status != 'fully_recovered').fold(0, (acc, a) => acc + a.outstandingBalancePaise);

    return Scaffold(
      backgroundColor: AppColors.backgroundLight,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Welcome Header
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        settings.hotelName,
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: AppColors.primaryNavy,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        '${settings.addressLine1}, ${settings.city} • Capacity: ${HotelDefaults.totalCapacityRooms} Rooms',
                        style: const TextStyle(fontSize: 13, color: AppColors.textSecondary),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 12),
                Row(
                  children: [
                    ElevatedButton.icon(
                      icon: const Icon(Icons.add, size: 18),
                      label: const Text('Front Desk Check-In'),
                      onPressed: () => onNavigate('/front-desk'),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 24),

            // Operational Status Cards
            const Text(
              'ROOM INVENTORY & OCCUPANCY',
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: AppColors.neutralGray, letterSpacing: 0.5),
            ),
            const SizedBox(height: 12),
            LayoutBuilder(
              builder: (context, constraints) {
                final crossAxisCount = constraints.maxWidth > 900 ? 5 : (constraints.maxWidth > 600 ? 3 : 2);
                return GridView.count(
                  crossAxisCount: crossAxisCount,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  childAspectRatio: 1.6,
                  children: [
                    _metricCard('Available Rooms', '$availableRooms / $totalRooms', Icons.check_circle_outline, AppColors.successEmerald, () => onNavigate('/front-desk')),
                    _metricCard('Occupied Rooms', '$occupiedRooms', Icons.bed_outlined, AppColors.primaryNavyLight, () => onNavigate('/front-desk')),
                    _metricCard('Active Reservations', '$reservedRooms', Icons.calendar_today_outlined, AppColors.accentAmber, () => onNavigate('/reservations')),
                    _metricCard('Cleaning Required', '$cleaningRooms', Icons.cleaning_services_outlined, AppColors.warningOrange, () => onNavigate('/housekeeping')),
                    _metricCard('Out of Service', '$outOfServiceRooms', Icons.build_outlined, AppColors.dangerCrimson, () => onNavigate('/maintenance')),
                  ],
                );
              },
            ),
            const SizedBox(height: 24),

            // Financial Summary Cards
            const Text(
              'TODAY\'S FINANCIAL & COLLECTION SUMMARY',
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: AppColors.neutralGray, letterSpacing: 0.5),
            ),
            const SizedBox(height: 12),
            LayoutBuilder(
              builder: (context, constraints) {
                final crossAxisCount = constraints.maxWidth > 900 ? 4 : 2;
                return GridView.count(
                  crossAxisCount: crossAxisCount,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  childAspectRatio: 1.8,
                  children: [
                    _financialCard('Today Invoiced', CurrencyFormatter.formatPaise(todayInvoicedPaise), Icons.receipt_long, AppColors.primaryNavy),
                    _financialCard('Collected Today', CurrencyFormatter.formatPaise(todayPaidPaise), Icons.account_balance_wallet, AppColors.successEmerald),
                    _financialCard('Guest Balances', CurrencyFormatter.formatPaise(outstandingGuestPaise), Icons.person_outline, AppColors.dangerCrimson),
                    _financialCard('Pending Salaries', CurrencyFormatter.formatPaise(totalPendingSalaryPaise), Icons.badge_outlined, AppColors.warningOrange, subtitle: '${overdueSalaries.length} overdue • Adv: ${CurrencyFormatter.formatPaise(totalOutstandingAdvancesPaise)}'),
                  ],
                );
              },
            ),
            const SizedBox(height: 24),

            // Active Checked-in Guests Table
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Expanded(
                          child: Text(
                            'CURRENTLY CHECKED-IN GUESTS',
                            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: AppColors.primaryNavy),
                          ),
                        ),
                        TextButton(
                          onPressed: () => onNavigate('/front-desk'),
                          child: const Text('View All in Front Desk'),
                        ),
                      ],
                    ),
                    const Divider(),
                    if (stays.where((s) => s.status == 'active').isEmpty)
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 32),
                        child: Center(
                          child: Text(
                            'No guests currently checked in. Use Front Desk to start a walk-in check-in.',
                            style: TextStyle(color: AppColors.textSecondary),
                          ),
                        ),
                      )
                    else
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: DataTable(
                          columns: const [
                            DataColumn(label: Text('Room')),
                            DataColumn(label: Text('Guest Name')),
                            DataColumn(label: Text('Phone')),
                            DataColumn(label: Text('Category')),
                            DataColumn(label: Text('Check-In Time')),
                            DataColumn(label: Text('Expected Checkout')),
                            DataColumn(label: Text('Tariff / Night')),
                          ],
                          rows: [
                            for (final s in stays.where((s) => s.status == 'active'))
                              DataRow(
                                cells: [
                                  DataCell(Text(s.roomNumber, style: const TextStyle(fontWeight: FontWeight.bold))),
                                  DataCell(Text(s.guestName)),
                                  DataCell(Text(s.guestPhone)),
                                  DataCell(Text(s.categoryName)),
                                  DataCell(Text(s.actualCheckInTime.toString().substring(0, 16))),
                                  DataCell(Text(s.expectedCheckOutDate.toString().substring(0, 10))),
                                  DataCell(Text(CurrencyFormatter.formatPaise(s.appliedNightlyTariffPaise))),
                                ],
                              ),
                          ],
                        ),
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

  Widget _metricCard(String title, String count, IconData icon, Color color, VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      title,
                      style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: AppColors.textSecondary),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(width: 4),
                  Icon(icon, color: color, size: 20),
                ],
              ),
              Text(
                count,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: color),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _financialCard(String title, String amount, IconData icon, Color color, {String? subtitle}) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    title,
                    style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: AppColors.textSecondary),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(width: 4),
                Icon(icon, color: color, size: 20),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  amount,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: color),
                ),
                if (subtitle != null)
                  Text(subtitle, style: const TextStyle(fontSize: 10, color: AppColors.dangerCrimson, fontWeight: FontWeight.w500)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
