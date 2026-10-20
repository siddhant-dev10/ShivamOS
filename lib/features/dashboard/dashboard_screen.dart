import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/constants/app_colors.dart';
import '../../core/constants/hotel_defaults.dart';
import '../../core/services/room_service.dart';
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
    final availableRooms = rooms.where((r) =>
        r.occupancyStatus == 'available' &&
        r.housekeepingStatus != 'cleaning_required' &&
        r.maintenanceStatus == 'normal').length;
    final occupiedRooms = rooms.where((r) => r.occupancyStatus == 'occupied').length;
    final reservedRooms = reservations.where((r) => r.status == 'confirmed').length;
    final cleaningRooms = rooms.where((r) =>
        r.housekeepingStatus == 'cleaning_required' ||
        r.housekeepingStatus == 'cleaning_in_progress').length;
    final outOfServiceRooms = rooms.where((r) => r.maintenanceStatus == 'out_of_service').length;

    final occupancyRate = totalRooms > 0 ? (occupiedRooms / totalRooms * 100).round() : 0;

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
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Welcome & Property Identity Banner
            _buildWelcomeBanner(context, settings, totalRooms, occupancyRate),

            const SizedBox(height: 24),

            // Operational Status Cards (5 Grid)
            _buildSectionHeader('ROOM OCCUPANCY & LIVE INVENTORY', '20 Total Rooms Configured • Real-time Status'),
            const SizedBox(height: 12),
            _buildRoomMetricsGrid(
              availableRooms,
              occupiedRooms,
              reservedRooms,
              cleaningRooms,
              outOfServiceRooms,
              totalRooms,
            ),

            const SizedBox(height: 24),

            // Financial & Collection Metrics Row
            _buildSectionHeader('FINANCIAL & COLLECTION SUMMARY', 'INR Exact Paise Calculations • 5% Intrastate GST Included'),
            const SizedBox(height: 12),
            _buildFinancialMetricsGrid(
              todayInvoicedPaise,
              todayPaidPaise,
              outstandingGuestPaise,
              totalPendingSalaryPaise,
              overdueSalaries.length,
              totalOutstandingAdvancesPaise,
            ),

            const SizedBox(height: 24),

            // Visual Analytics & Room Rack Row
            LayoutBuilder(
              builder: (context, constraints) {
                if (constraints.maxWidth > 960) {
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 6,
                        child: _buildRevenueAndOccupancyAnalytics(occupancyRate, occupiedRooms, availableRooms, cleaningRooms, outOfServiceRooms),
                      ),
                      const SizedBox(width: 20),
                      Expanded(
                        flex: 4,
                        child: _buildQuickRoomRackPreview(rooms),
                      ),
                    ],
                  );
                } else {
                  return Column(
                    children: [
                      _buildRevenueAndOccupancyAnalytics(occupancyRate, occupiedRooms, availableRooms, cleaningRooms, outOfServiceRooms),
                      const SizedBox(height: 20),
                      _buildQuickRoomRackPreview(rooms),
                    ],
                  );
                }
              },
            ),

            const SizedBox(height: 24),

            // Currently In-House Guests Table
            _buildActiveGuestsTable(stays),
          ],
        ),
      ),
    );
  }

  // Section Header
  Widget _buildSectionHeader(String title, String subtitle) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w800,
                color: AppColors.neutralGray,
                letterSpacing: 1.1,
              ),
            ),
            const SizedBox(height: 2),
            Text(
              subtitle,
              style: const TextStyle(
                fontSize: 11,
                color: AppColors.textMuted,
              ),
            ),
          ],
        ),
      ],
    );
  }

  // Welcome Hero Banner
  Widget _buildWelcomeBanner(BuildContext context, HotelSettingsState settings, int totalRooms, int occupancyRate) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isWide = constraints.maxWidth > 700;
        return Container(
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                AppColors.primaryNavy,
                Color(0xFF132247),
                Color(0xFF0F1E36),
              ],
            ),
            borderRadius: BorderRadius.circular(16),
            boxShadow: const [
              BoxShadow(
                color: Color(0x220A1128),
                blurRadius: 20,
                offset: Offset(0, 8),
              ),
            ],
          ),
          child: Flex(
            direction: isWide ? Axis.horizontal : Axis.vertical,
            crossAxisAlignment: isWide ? CrossAxisAlignment.center : CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: isWide ? 1 : 0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                          decoration: BoxDecoration(
                            color: AppColors.electricBlue.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: AppColors.electricBlueLight.withOpacity(0.4)),
                          ),
                          child: const Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(Icons.verified_rounded, color: AppColors.electricBlueLight, size: 14),
                              SizedBox(width: 6),
                              Text(
                                'HOTEL MANAGEMENT SYSTEM',
                                style: TextStyle(
                                  color: AppColors.electricBlueLight,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 1.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                          decoration: BoxDecoration(
                            color: AppColors.availableGreen.withOpacity(0.15),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                width: 6,
                                height: 6,
                                decoration: const BoxDecoration(
                                  color: AppColors.availableGreen,
                                  shape: BoxShape.circle,
                                ),
                              ),
                              const SizedBox(width: 6),
                              const Text(
                                'GST 5% Active',
                                style: TextStyle(color: AppColors.availableGreen, fontSize: 10, fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Text(
                      settings.hotelName,
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w800,
                        color: Colors.white,
                        letterSpacing: -0.3,
                      ),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      '${settings.addressLine1}, ${settings.city} • Contact: ${HotelDefaults.phonePrimary} / ${HotelDefaults.phoneSecondary}',
                      style: const TextStyle(
                        fontSize: 13,
                        color: Color(0xFFCBD5E1),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              if (!isWide) const SizedBox(height: 16),
              if (isWide) const SizedBox(width: 20),
              // Quick Stats Pill in Hero Banner
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.06),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.white.withOpacity(0.12)),
                ),
                child: Column(
                  crossAxisAlignment: isWide ? CrossAxisAlignment.end : CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'OCCUPANCY RATE',
                      style: TextStyle(color: Color(0xFF94A3B8), fontSize: 10, fontWeight: FontWeight.bold, letterSpacing: 0.8),
                    ),
                    const SizedBox(height: 4),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          '$occupancyRate%',
                          style: const TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.w800),
                        ),
                        const SizedBox(width: 8),
                        Icon(
                          occupancyRate > 50 ? Icons.trending_up_rounded : Icons.trending_flat_rounded,
                          color: AppColors.electricBlueLight,
                          size: 22,
                        ),
                      ],
                    ),
                    Text(
                      'Target: 80% • Capacity: $totalRooms Rooms',
                      style: const TextStyle(color: Color(0xFF64748B), fontSize: 10),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  // Room Metrics Cards
  Widget _buildRoomMetricsGrid(
    int available,
    int occupied,
    int reserved,
    int cleaning,
    int outOfService,
    int total,
  ) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final crossAxisCount = constraints.maxWidth > 1000 ? 5 : (constraints.maxWidth > 650 ? 3 : 2);
        return GridView.count(
          crossAxisCount: crossAxisCount,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          crossAxisSpacing: 14,
          mainAxisSpacing: 14,
          childAspectRatio: 1.55,
          children: [
            _modernMetricCard(
              title: 'Available Rooms',
              value: '$available',
              subtext: 'of $total ready to sell',
              icon: Icons.check_circle_rounded,
              accentColor: AppColors.availableGreen,
              bgColor: AppColors.availableBg,
              onTap: () => onNavigate('/front-desk'),
            ),
            _modernMetricCard(
              title: 'Occupied Rooms',
              value: '$occupied',
              subtext: 'Guests in-house',
              icon: Icons.bed_rounded,
              accentColor: AppColors.occupiedIndigo,
              bgColor: AppColors.occupiedBg,
              onTap: () => onNavigate('/front-desk'),
            ),
            _modernMetricCard(
              title: 'Reservations',
              value: '$reserved',
              subtext: 'Confirmed bookings',
              icon: Icons.event_available_rounded,
              accentColor: AppColors.reservedAmber,
              bgColor: AppColors.reservedBg,
              onTap: () => onNavigate('/reservations'),
            ),
            _modernMetricCard(
              title: 'Housekeeping',
              value: '$cleaning',
              subtext: 'Dirty / cleaning in prog.',
              icon: Icons.cleaning_services_rounded,
              accentColor: AppColors.cleaningOrange,
              bgColor: AppColors.cleaningBg,
              onTap: () => onNavigate('/housekeeping'),
            ),
            _modernMetricCard(
              title: 'Maintenance',
              value: '$outOfService',
              subtext: 'Out of service',
              icon: Icons.handyman_rounded,
              accentColor: AppColors.outOfServiceRed,
              bgColor: AppColors.outOfServiceBg,
              onTap: () => onNavigate('/maintenance'),
            ),
          ],
        );
      },
    );
  }

  Widget _modernMetricCard({
    required String title,
    required String value,
    required String subtext,
    required IconData icon,
    required Color accentColor,
    required Color bgColor,
    required VoidCallback onTap,
  }) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(14),
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(14),
            border: Border.all(color: AppColors.borderLight),
            boxShadow: AppColors.cardShadow,
          ),
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
                  const SizedBox(width: 6),
                  Container(
                    padding: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      color: bgColor,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Icon(icon, color: accentColor, size: 16),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    value,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w800,
                      color: accentColor,
                      letterSpacing: -0.5,
                    ),
                  ),
                  Text(
                    subtext,
                    style: const TextStyle(fontSize: 10, color: AppColors.textMuted),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Financial Metrics Grid
  Widget _buildFinancialMetricsGrid(
    int todayInvoicedPaise,
    int todayPaidPaise,
    int outstandingGuestPaise,
    int totalPendingSalaryPaise,
    int overdueSalaryCount,
    int totalOutstandingAdvancesPaise,
  ) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final crossAxisCount = constraints.maxWidth > 900 ? 4 : 2;
        return GridView.count(
          crossAxisCount: crossAxisCount,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          crossAxisSpacing: 14,
          mainAxisSpacing: 14,
          childAspectRatio: 1.75,
          children: [
            _financialSummaryCard(
              title: 'Today Invoiced',
              amount: CurrencyFormatter.formatPaise(todayInvoicedPaise),
              detail: 'Inclusive of 2.5% CGST + 2.5% SGST',
              icon: Icons.receipt_long_rounded,
              color: AppColors.primaryNavy,
              iconBg: const Color(0xFFF1F5F9),
            ),
            _financialSummaryCard(
              title: 'Collected Today',
              amount: CurrencyFormatter.formatPaise(todayPaidPaise),
              detail: 'Verified Cash / UPI / Card',
              icon: Icons.account_balance_wallet_rounded,
              color: AppColors.successEmerald,
              iconBg: AppColors.availableBg,
            ),
            _financialSummaryCard(
              title: 'Guest Outstanding',
              amount: CurrencyFormatter.formatPaise(outstandingGuestPaise),
              detail: 'Pending guest check-out dues',
              icon: Icons.person_search_rounded,
              color: AppColors.dangerCrimson,
              iconBg: AppColors.outOfServiceBg,
            ),
            _financialSummaryCard(
              title: 'Pending Salaries',
              amount: CurrencyFormatter.formatPaise(totalPendingSalaryPaise),
              detail: '$overdueSalaryCount Overdue • Adv: ${CurrencyFormatter.formatPaise(totalOutstandingAdvancesPaise)}',
              icon: Icons.badge_rounded,
              color: AppColors.warningOrange,
              iconBg: AppColors.cleaningBg,
            ),
          ],
        );
      },
    );
  }

  Widget _financialSummaryCard({
    required String title,
    required String amount,
    required String detail,
    required IconData icon,
    required Color color,
    required Color iconBg,
  }) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: AppColors.borderLight),
        boxShadow: AppColors.cardShadow,
      ),
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
              const SizedBox(width: 6),
              Container(
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: iconBg,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(icon, color: color, size: 16),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                amount,
                style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.w800,
                  color: color,
                  letterSpacing: -0.3,
                ),
              ),
              Text(
                detail,
                style: const TextStyle(fontSize: 10, color: AppColors.textMuted),
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ],
      ),
    );
  }

  // Visual Analytics & Trend Section
  Widget _buildRevenueAndOccupancyAnalytics(
    int occupancyRate,
    int occupied,
    int available,
    int cleaning,
    int oos,
  ) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: AppColors.borderLight),
        boxShadow: AppColors.cardShadow,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'ROOM UTILIZATION & CATEGORY BREAKDOWN',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w800, color: AppColors.neutralGray, letterSpacing: 0.8),
                  ),
                  Text('20 Rooms • Elegant, Royal, Corporate, Suite', style: TextStyle(fontSize: 11, color: AppColors.textMuted)),
                ],
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                decoration: BoxDecoration(
                  color: AppColors.electricBlue.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  '$occupancyRate% Occupied',
                  style: const TextStyle(color: AppColors.electricBlue, fontSize: 11, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),

          // Stacked Progress Bar for 20 Rooms
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: SizedBox(
              height: 14,
              child: Row(
                children: [
                  if (occupied > 0)
                    Expanded(
                      flex: occupied,
                      child: Container(color: AppColors.occupiedIndigo),
                    ),
                  if (available > 0)
                    Expanded(
                      flex: available,
                      child: Container(color: AppColors.availableGreen),
                    ),
                  if (cleaning > 0)
                    Expanded(
                      flex: cleaning,
                      child: Container(color: AppColors.cleaningOrange),
                    ),
                  if (oos > 0)
                    Expanded(
                      flex: oos,
                      child: Container(color: AppColors.outOfServiceRed),
                    ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 14),

          // Legend
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _analyticsLegendItem('Occupied ($occupied)', AppColors.occupiedIndigo),
              _analyticsLegendItem('Available ($available)', AppColors.availableGreen),
              _analyticsLegendItem('Cleaning ($cleaning)', AppColors.cleaningOrange),
              _analyticsLegendItem('Out of Svc ($oos)', AppColors.outOfServiceRed),
            ],
          ),

          const Divider(height: 32),

          // Category Allocation Bar Breakdown
          const Text(
            'OFFICIAL INVENTORY CATEGORIES',
            style: TextStyle(fontSize: 11, fontWeight: FontWeight.w700, color: AppColors.textSecondary),
          ),
          const SizedBox(height: 10),
          _categoryRow('Elegant Class (9 Rooms • Confirmed)', '9 Rooms', '₹1,890 / ₹2,190', 0.45, AppColors.electricBlue),
          const SizedBox(height: 8),
          _categoryRow('Royal Class (6 Rooms)', '6 Rooms', '₹2,200 / ₹2,490', 0.30, AppColors.indigoAccent),
          const SizedBox(height: 8),
          _categoryRow('Corporate Class (4 Rooms)', '4 Rooms', '₹2,700 / ₹3,390', 0.20, AppColors.cyanAccent),
          const SizedBox(height: 8),
          _categoryRow('Suite Room (1 Room)', '1 Room', '₹4,500 / ₹5,500', 0.05, AppColors.accentAmber),
        ],
      ),
    );
  }

  Widget _analyticsLegendItem(String label, Color color) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(width: 8, height: 8, decoration: BoxDecoration(color: color, shape: BoxShape.circle)),
        const SizedBox(width: 6),
        Text(label, style: const TextStyle(fontSize: 11, fontWeight: FontWeight.w600, color: AppColors.textSecondary)),
      ],
    );
  }

  Widget _categoryRow(String title, String count, String tariff, double pct, Color color) {
    return Row(
      children: [
        Expanded(
          flex: 4,
          child: Text(title, style: const TextStyle(fontSize: 11, color: AppColors.textPrimary, fontWeight: FontWeight.w500)),
        ),
        Expanded(
          flex: 2,
          child: Text(count, style: const TextStyle(fontSize: 11, color: AppColors.textSecondary, fontWeight: FontWeight.bold)),
        ),
        Expanded(
          flex: 3,
          child: Text(tariff, style: const TextStyle(fontSize: 11, color: AppColors.electricBlue, fontWeight: FontWeight.w600)),
        ),
      ],
    );
  }

  // Quick Room Rack Preview
  Widget _buildQuickRoomRackPreview(List<RoomModel> rooms) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: AppColors.borderLight),
        boxShadow: AppColors.cardShadow,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'ROOM RACK QUICK GLANCE',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w800, color: AppColors.neutralGray, letterSpacing: 0.8),
                  ),
                  Text('Tap any room to manage', style: TextStyle(fontSize: 11, color: AppColors.textMuted)),
                ],
              ),
              TextButton(
                onPressed: () => onNavigate('/front-desk'),
                child: const Text('View All (20) →', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
              ),
            ],
          ),
          const SizedBox(height: 14),

          // Mini Room Chips Grid
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: rooms.map((r) {
              Color chipBg;
              Color chipBorder;
              Color textColor;

              if (r.occupancyStatus == 'occupied') {
                chipBg = AppColors.occupiedBg;
                chipBorder = AppColors.occupiedIndigo.withOpacity(0.3);
                textColor = AppColors.occupiedIndigo;
              } else if (r.housekeepingStatus == 'cleaning_required') {
                chipBg = AppColors.cleaningBg;
                chipBorder = AppColors.cleaningOrange.withOpacity(0.3);
                textColor = AppColors.cleaningOrange;
              } else if (r.maintenanceStatus == 'out_of_service') {
                chipBg = AppColors.outOfServiceBg;
                chipBorder = AppColors.outOfServiceRed.withOpacity(0.3);
                textColor = AppColors.outOfServiceRed;
              } else {
                chipBg = AppColors.availableBg;
                chipBorder = AppColors.availableGreen.withOpacity(0.3);
                textColor = AppColors.availableGreen;
              }

              return InkWell(
                borderRadius: BorderRadius.circular(8),
                onTap: () => onNavigate('/front-desk'),
                child: Container(
                  width: 58,
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  decoration: BoxDecoration(
                    color: chipBg,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: chipBorder),
                  ),
                  child: Column(
                    children: [
                      Text(
                        r.roomNumber,
                        style: TextStyle(fontWeight: FontWeight.w800, fontSize: 13, color: textColor),
                      ),
                      Text(
                        'Fl ${r.floorNumber}',
                        style: const TextStyle(fontSize: 9, color: AppColors.textMuted),
                      ),
                    ],
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }

  // Active Checked-In Guests Table
  Widget _buildActiveGuestsTable(List<StayRecord> stays) {
    final activeStays = stays.where((s) => s.status == 'active').toList();

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: AppColors.borderLight),
        boxShadow: AppColors.cardShadow,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            child: Wrap(
              spacing: 12,
              runSpacing: 8,
              alignment: WrapAlignment.spaceBetween,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'CURRENT IN-HOUSE GUESTS',
                      style: TextStyle(fontSize: 13, fontWeight: FontWeight.w800, color: AppColors.primaryNavy, letterSpacing: 0.5),
                    ),
                    Text(
                      '${activeStays.length} active stay records loaded from local SQLite',
                      style: const TextStyle(fontSize: 11, color: AppColors.textMuted),
                    ),
                  ],
                ),
                OutlinedButton.icon(
                  icon: const Icon(Icons.open_in_new_rounded, size: 14),
                  label: const Text('Open Front Desk Rack'),
                  onPressed: () => onNavigate('/front-desk'),
                ),
              ],
            ),
          ),
          const Divider(height: 1),
          if (activeStays.isEmpty)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 36),
              child: Center(
                child: Column(
                  children: [
                    Icon(Icons.hotel_outlined, size: 40, color: AppColors.textMuted.withOpacity(0.5)),
                    const SizedBox(height: 10),
                    const Text(
                      'No guests currently checked in.',
                      style: TextStyle(color: AppColors.textSecondary, fontWeight: FontWeight.w600, fontSize: 13),
                    ),
                    const SizedBox(height: 4),
                    const Text(
                      'Use the "New Check-In" button above to register walk-in arrivals.',
                      style: TextStyle(color: AppColors.textMuted, fontSize: 12),
                    ),
                  ],
                ),
              ),
            )
          else
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: DataTable(
                headingRowColor: WidgetStateProperty.all(AppColors.backgroundSubtle),
                columns: const [
                  DataColumn(label: Text('Room', style: TextStyle(fontWeight: FontWeight.bold))),
                  DataColumn(label: Text('Guest Name', style: TextStyle(fontWeight: FontWeight.bold))),
                  DataColumn(label: Text('Mobile', style: TextStyle(fontWeight: FontWeight.bold))),
                  DataColumn(label: Text('Category', style: TextStyle(fontWeight: FontWeight.bold))),
                  DataColumn(label: Text('Check-In Date/Time', style: TextStyle(fontWeight: FontWeight.bold))),
                  DataColumn(label: Text('Expected Checkout', style: TextStyle(fontWeight: FontWeight.bold))),
                  DataColumn(label: Text('Tariff / Night', style: TextStyle(fontWeight: FontWeight.bold))),
                  DataColumn(label: Text('Action', style: TextStyle(fontWeight: FontWeight.bold))),
                ],
                rows: activeStays.map((s) {
                  return DataRow(
                    cells: [
                      DataCell(
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                          decoration: BoxDecoration(
                            color: AppColors.occupiedBg,
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(color: AppColors.occupiedIndigo.withOpacity(0.3)),
                          ),
                          child: Text(
                            s.roomNumber,
                            style: const TextStyle(fontWeight: FontWeight.w800, color: AppColors.occupiedIndigo),
                          ),
                        ),
                      ),
                      DataCell(Text(s.guestName, style: const TextStyle(fontWeight: FontWeight.w600))),
                      DataCell(Text(s.guestPhone)),
                      DataCell(Text(s.categoryName)),
                      DataCell(Text(s.actualCheckInTime.toString().substring(0, 16))),
                      DataCell(Text(s.expectedCheckOutDate.toString().substring(0, 10))),
                      DataCell(Text(CurrencyFormatter.formatPaise(s.appliedNightlyTariffPaise), style: const TextStyle(fontWeight: FontWeight.w600))),
                      DataCell(
                        TextButton(
                          onPressed: () => onNavigate('/front-desk'),
                          child: const Text('Checkout / Bill'),
                        ),
                      ),
                    ],
                  );
                }).toList(),
              ),
            ),
        ],
      ),
    );
  }
}
