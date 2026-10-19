import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/constants/app_colors.dart';
import '../shared/providers.dart';

class MaintenanceScreen extends ConsumerWidget {
  const MaintenanceScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final rooms = ref.watch(roomsProvider);

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
                      'MAINTENANCE & PROPERTY REPAIRS',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: AppColors.primaryNavy),
                    ),
                    const SizedBox(height: 4),
                    const Text(
                      'Hotel New Shivam Inn • HVAC, Electrical, Plumbing & Fixture tracking',
                      style: TextStyle(fontSize: 13, color: AppColors.textSecondary),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 16),
            Expanded(
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: ListView(
                    children: [
                      DataTable(
                        columns: const [
                          DataColumn(label: Text('Room #', style: TextStyle(fontWeight: FontWeight.bold))),
                          DataColumn(label: Text('Category')),
                          DataColumn(label: Text('Floor')),
                          DataColumn(label: Text('Current Maintenance Status')),
                          DataColumn(label: Text('Actions')),
                        ],
                        rows: [
                          for (final r in rooms)
                            DataRow(
                              cells: [
                                DataCell(Text(r.roomNumber, style: const TextStyle(fontWeight: FontWeight.bold))),
                                DataCell(Text(r.categoryName)),
                                DataCell(Text('Floor ${r.floorNumber}')),
                                DataCell(
                                  Container(
                                    padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                                    decoration: BoxDecoration(
                                      color: r.maintenanceStatus == 'normal'
                                          ? AppColors.successEmerald.withOpacity(0.12)
                                          : AppColors.dangerCrimson.withOpacity(0.12),
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    child: Text(
                                      r.maintenanceStatus.replaceAll('_', ' ').toUpperCase(),
                                      style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                        color: r.maintenanceStatus == 'normal'
                                            ? AppColors.successEmerald
                                            : AppColors.dangerCrimson,
                                      ),
                                    ),
                                  ),
                                ),
                                DataCell(
                                  Row(
                                    children: [
                                      if (r.maintenanceStatus == 'normal') ...[
                                        OutlinedButton(
                                          style: OutlinedButton.styleFrom(
                                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                            textStyle: const TextStyle(fontSize: 11),
                                          ),
                                          onPressed: () => ref.read(roomsProvider.notifier).updateMaintenance(r.roomNumber, 'maintenance_required'),
                                          child: const Text('Log Issue'),
                                        ),
                                        const SizedBox(width: 8),
                                        OutlinedButton(
                                          style: OutlinedButton.styleFrom(
                                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                            foregroundColor: AppColors.dangerCrimson,
                                            side: const BorderSide(color: AppColors.dangerCrimson),
                                            textStyle: const TextStyle(fontSize: 11),
                                          ),
                                          onPressed: () => ref.read(roomsProvider.notifier).updateMaintenance(r.roomNumber, 'out_of_service'),
                                          child: const Text('Mark Out of Service'),
                                        ),
                                      ] else ...[
                                        ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                            backgroundColor: AppColors.successEmerald,
                                            textStyle: const TextStyle(fontSize: 11),
                                          ),
                                          onPressed: () => ref.read(roomsProvider.notifier).updateMaintenance(r.roomNumber, 'normal'),
                                          child: const Text('Return to Service (Normal)'),
                                        ),
                                      ],
                                    ],
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
}
