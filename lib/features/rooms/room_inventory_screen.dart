import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/constants/app_colors.dart';
import '../../core/constants/hotel_defaults.dart';
import '../../core/utils/currency_formatter.dart';
import '../shared/providers.dart';

class RoomInventoryScreen extends ConsumerWidget {
  const RoomInventoryScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final rooms = ref.watch(roomsProvider);

    // Calculate category counts
    final elegantCount = rooms.where((r) => r.categoryName == HotelDefaults.catElegant).length;
    final royalCount = rooms.where((r) => r.categoryName == HotelDefaults.catRoyal).length;
    final corporateCount = rooms.where((r) => r.categoryName == HotelDefaults.catCorporate).length;
    final suiteCount = rooms.where((r) => r.categoryName == HotelDefaults.catSuite).length;
    final totalConfigured = rooms.length;
    final remainingSlots = HotelDefaults.totalCapacityRooms - totalConfigured;

    return Scaffold(
      backgroundColor: AppColors.backgroundLight,
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'ROOM INVENTORY & CONFIGURATION',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: AppColors.primaryNavy),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'Configured: $totalConfigured / ${HotelDefaults.totalCapacityRooms} Rooms ($remainingSlots unassigned slots remaining)',
                      style: const TextStyle(fontSize: 13, color: AppColors.textSecondary),
                    ),
                  ],
                ),
                ElevatedButton.icon(
                  icon: const Icon(Icons.add, size: 18),
                  label: const Text('Configure / Add Room'),
                  onPressed: remainingSlots > 0
                      ? () => _showAddRoomDialog(context, ref)
                      : null,
                ),
              ],
            ),
            const SizedBox(height: 16),

            // Category Summary Cards
            LayoutBuilder(
              builder: (context, constraints) {
                final isWide = constraints.maxWidth > 800;
                return GridView.count(
                  crossAxisCount: isWide ? 4 : 2,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  childAspectRatio: isWide ? 2.2 : 1.8,
                  children: [
                    _categoryCard('Elegant Class', '$elegantCount / 9', HotelDefaults.elegantDoublePaise, AppColors.electricBlue),
                    _categoryCard('Royal Class', '$royalCount / 6', HotelDefaults.royalDoublePaise, AppColors.indigoAccent),
                    _categoryCard('Corporate Class', '$corporateCount / 4', HotelDefaults.corporateDoublePaise, AppColors.cyanAccent),
                    _categoryCard('Suite Room', '$suiteCount / 1', HotelDefaults.suiteDoublePaise, AppColors.accentAmber),
                  ],
                );
              },
            ),
            const SizedBox(height: 16),

            // Inventory Data Table
            Expanded(
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: ListView(
                    children: [
                      DataTable(
                        columnSpacing: 24,
                        columns: const [
                          DataColumn(label: Text('Room No.', style: TextStyle(fontWeight: FontWeight.bold))),
                          DataColumn(label: Text('Floor')),
                          DataColumn(label: Text('Category')),
                          DataColumn(label: Text('Single Tariff')),
                          DataColumn(label: Text('Double Tariff')),
                          DataColumn(label: Text('Occupancy')),
                          DataColumn(label: Text('Housekeeping')),
                          DataColumn(label: Text('Maintenance')),
                          DataColumn(label: Text('Active')),
                        ],
                        rows: [
                          for (final r in rooms)
                            DataRow(
                              cells: [
                                DataCell(
                                  Row(
                                    children: [
                                      Text(r.roomNumber, style: const TextStyle(fontWeight: FontWeight.bold)),
                                      if (HotelDefaults.confirmedElegantRooms.any((c) => c['roomNumber'] == r.roomNumber)) ...[
                                        const SizedBox(width: 6),
                                        const Icon(Icons.verified, color: AppColors.infoBlue, size: 16),
                                      ],
                                    ],
                                  ),
                                ),
                                DataCell(Text('Floor ${r.floorNumber}')),
                                DataCell(Text(r.categoryName)),
                                DataCell(Text(CurrencyFormatter.formatPaise(_getSingleTariff(r.categoryName)))),
                                DataCell(Text(CurrencyFormatter.formatPaise(_getDoubleTariff(r.categoryName)))),
                                DataCell(_statusBadge(r.occupancyStatus, AppColors.primaryNavy)),
                                DataCell(_statusBadge(r.housekeepingStatus, AppColors.warningOrange)),
                                DataCell(_statusBadge(r.maintenanceStatus, AppColors.successEmerald)),
                                DataCell(
                                  Switch(
                                    value: r.isActive,
                                    onChanged: (_) => ref.read(roomsProvider.notifier).toggleActive(r.roomNumber),
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

  static int _getSingleTariff(String cat) {
    switch (cat) {
      case HotelDefaults.catElegant:
        return HotelDefaults.elegantSinglePaise;
      case HotelDefaults.catRoyal:
        return HotelDefaults.royalSinglePaise;
      case HotelDefaults.catCorporate:
        return HotelDefaults.corporateSinglePaise;
      case HotelDefaults.catSuite:
        return HotelDefaults.suiteSinglePaise;
      default:
        return 0;
    }
  }

  static int _getDoubleTariff(String cat) {
    switch (cat) {
      case HotelDefaults.catElegant:
        return HotelDefaults.elegantDoublePaise;
      case HotelDefaults.catRoyal:
        return HotelDefaults.royalDoublePaise;
      case HotelDefaults.catCorporate:
        return HotelDefaults.corporateDoublePaise;
      case HotelDefaults.catSuite:
        return HotelDefaults.suiteDoublePaise;
      default:
        return 0;
    }
  }

  Widget _categoryCard(String name, String count, int doubleTariff, Color color) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
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
              Text(name, style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: color)),
              Container(
                width: 8,
                height: 8,
                decoration: BoxDecoration(color: color, shape: BoxShape.circle),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text(count, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w800, color: AppColors.primaryNavy)),
              Text('Dbl: ${CurrencyFormatter.formatPaise(doubleTariff)}', style: const TextStyle(fontSize: 11, color: AppColors.textSecondary, fontWeight: FontWeight.w600)),
            ],
          ),
        ],
      ),
    );
  }

  Widget _statusBadge(String status, Color defaultColor) {
    Color bg = defaultColor.withOpacity(0.12);
    Color fg = defaultColor;

    if (status == 'clean' || status == 'ready' || status == 'available' || status == 'normal') {
      bg = AppColors.availableBg;
      fg = AppColors.availableGreen;
    } else if (status == 'occupied') {
      bg = AppColors.occupiedBg;
      fg = AppColors.occupiedIndigo;
    } else if (status == 'cleaning_required') {
      bg = AppColors.cleaningBg;
      fg = AppColors.cleaningOrange;
    } else if (status == 'out_of_service') {
      bg = AppColors.outOfServiceBg;
      fg = AppColors.outOfServiceRed;
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
      decoration: BoxDecoration(
        color: bg,
        borderRadius: BorderRadius.circular(6),
        border: Border.all(color: fg.withOpacity(0.3)),
      ),
      child: Text(
        status.replaceAll('_', ' ').toUpperCase(),
        style: TextStyle(fontSize: 9.5, fontWeight: FontWeight.w800, color: fg),
      ),
    );
  }

  void _showAddRoomDialog(BuildContext context, WidgetRef ref) {
    final roomNumCtrl = TextEditingController();
    int floor = 2;
    String category = HotelDefaults.catRoyal;
    final notesCtrl = TextEditingController();

    showDialog(
      context: context,
      builder: (ctx) => StatefulBuilder(
        builder: (context, setDialogState) {
          return AlertDialog(
            title: const Text('Configure Unassigned Room'),
            content: SizedBox(
              width: 440,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Assign physical room number and category for Hotel New Shivam Inn.',
                    style: TextStyle(fontSize: 12, color: AppColors.textSecondary),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          controller: roomNumCtrl,
                          decoration: const InputDecoration(labelText: 'Room Number *', hintText: 'e.g. 202, 302'),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: DropdownButtonFormField<int>(
                          value: floor,
                          decoration: const InputDecoration(labelText: 'Floor Number'),
                          items: [1, 2, 3, 4, 5].map((f) => DropdownMenuItem(value: f, child: Text('Floor $f'))).toList(),
                          onChanged: (v) => setDialogState(() => floor = v!),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  DropdownButtonFormField<String>(
                    value: category,
                    decoration: const InputDecoration(labelText: 'Room Category'),
                    items: const [
                      DropdownMenuItem(value: HotelDefaults.catRoyal, child: Text('Royal Class (Single: ₹2,200 / Double: ₹2,490)')),
                      DropdownMenuItem(value: HotelDefaults.catCorporate, child: Text('Corporate Class (Single: ₹2,700 / Double: ₹3,390)')),
                      DropdownMenuItem(value: HotelDefaults.catSuite, child: Text('Suite Room (Single: ₹4,500 / Double: ₹5,500)')),
                      DropdownMenuItem(value: HotelDefaults.catElegant, child: Text('Elegant Class (Single: ₹1,890 / Double: ₹2,190)')),
                    ],
                    onChanged: (v) => setDialogState(() => category = v!),
                  ),
                  const SizedBox(height: 16),
                  TextField(
                    controller: notesCtrl,
                    decoration: const InputDecoration(labelText: 'Notes / Description', hintText: 'e.g. Balcony view, Road-facing'),
                  ),
                ],
              ),
            ),
            actions: [
              TextButton(onPressed: () => Navigator.pop(ctx), child: const Text('Cancel')),
              ElevatedButton(
                onPressed: () {
                  if (roomNumCtrl.text.trim().isEmpty) return;
                  try {
                    ref.read(roomsProvider.notifier).addRoom(
                      roomNumber: roomNumCtrl.text.trim(),
                      floorNumber: floor,
                      categoryName: category,
                      notes: notesCtrl.text.trim(),
                    );
                    Navigator.pop(ctx);
                  } catch (e) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(e.toString())));
                  }
                },
                child: const Text('Save Room'),
              ),
            ],
          );
        },
      ),
    );
  }
}
