import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/constants/app_colors.dart';
import '../shared/providers.dart';

class HousekeepingScreen extends ConsumerWidget {
  const HousekeepingScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final rooms = ref.watch(roomsProvider);

    final cleanCount = rooms.where((r) => r.housekeepingStatus == 'clean' || r.housekeepingStatus == 'ready').length;
    final dirtyCount = rooms.where((r) => r.housekeepingStatus == 'cleaning_required').length;
    final inProgressCount = rooms.where((r) => r.housekeepingStatus == 'cleaning_in_progress').length;

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
                      'HOUSEKEEPING & ROOM CLEANING BOARD',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: AppColors.primaryNavy),
                    ),
                    const SizedBox(height: 4),
                    const Text(
                      'Hotel New Shivam Inn • Real-time floor attendant turnover board',
                      style: TextStyle(fontSize: 13, color: AppColors.textSecondary),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 16),

            // Summary row
            Row(
              children: [
                _metric('Clean & Ready', '$cleanCount Rooms', AppColors.successEmerald),
                const SizedBox(width: 12),
                _metric('Cleaning In Progress', '$inProgressCount Rooms', AppColors.infoBlue),
                const SizedBox(width: 12),
                _metric('Dirty / Cleaning Required', '$dirtyCount Rooms', AppColors.warningOrange),
              ],
            ),
            const SizedBox(height: 16),

            // Housekeeping Room Cards
            Expanded(
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: GridView.builder(
                    gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 260,
                      mainAxisExtent: 170,
                      crossAxisSpacing: 12,
                      mainAxisSpacing: 12,
                    ),
                    itemCount: rooms.length,
                    itemBuilder: (context, index) {
                      final r = rooms[index];
                      return Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                          side: BorderSide(
                            color: r.housekeepingStatus == 'cleaning_required'
                                ? AppColors.warningOrange
                                : AppColors.borderLight,
                            width: r.housekeepingStatus == 'cleaning_required' ? 1.5 : 1,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Room ${r.roomNumber}',
                                    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: AppColors.primaryNavy),
                                  ),
                                  Text('Floor ${r.floorNumber}', style: const TextStyle(fontSize: 11, color: AppColors.textSecondary)),
                                ],
                              ),
                              Text(r.categoryName, style: const TextStyle(fontSize: 11, color: AppColors.neutralGray)),
                              Container(
                                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                                decoration: BoxDecoration(
                                  color: _statusColor(r.housekeepingStatus).withOpacity(0.12),
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: Text(
                                  r.housekeepingStatus.replaceAll('_', ' ').toUpperCase(),
                                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: _statusColor(r.housekeepingStatus)),
                                ),
                              ),
                              Row(
                                children: [
                                  if (r.housekeepingStatus == 'cleaning_required')
                                    Expanded(
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          padding: const EdgeInsets.symmetric(vertical: 6),
                                          backgroundColor: AppColors.infoBlue,
                                          textStyle: const TextStyle(fontSize: 11),
                                        ),
                                        onPressed: () => ref.read(roomsProvider.notifier).updateHousekeeping(r.roomNumber, 'cleaning_in_progress'),
                                        child: const Text('Start Clean'),
                                      ),
                                    )
                                  else if (r.housekeepingStatus == 'cleaning_in_progress')
                                    Expanded(
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          padding: const EdgeInsets.symmetric(vertical: 6),
                                          backgroundColor: AppColors.successEmerald,
                                          textStyle: const TextStyle(fontSize: 11),
                                        ),
                                        onPressed: () => ref.read(roomsProvider.notifier).updateHousekeeping(r.roomNumber, 'ready'),
                                        child: const Text('Mark Ready'),
                                      ),
                                    )
                                  else
                                    Expanded(
                                      child: OutlinedButton(
                                        style: OutlinedButton.styleFrom(
                                          padding: const EdgeInsets.symmetric(vertical: 6),
                                          textStyle: const TextStyle(fontSize: 11),
                                        ),
                                        onPressed: () => ref.read(roomsProvider.notifier).updateHousekeeping(r.roomNumber, 'cleaning_required'),
                                        child: const Text('Mark Dirty'),
                                      ),
                                    ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Color _statusColor(String status) {
    if (status == 'clean' || status == 'ready') return AppColors.successEmerald;
    if (status == 'cleaning_in_progress') return AppColors.infoBlue;
    return AppColors.warningOrange;
  }

  Widget _metric(String title, String val, Color color) {
    return Expanded(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(14),
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
}
