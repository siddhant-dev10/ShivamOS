import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/constants/app_colors.dart';
import '../../core/constants/hotel_defaults.dart';
import '../../core/services/room_service.dart';
import '../../core/utils/currency_formatter.dart';
import '../shared/providers.dart';

class ReservationsScreen extends ConsumerWidget {
  const ReservationsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final reservations = ref.watch(reservationsProvider);
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
                      'RESERVATIONS MANAGEMENT',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: AppColors.primaryNavy),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'Hotel New Shivam Inn • ${reservations.length} Active / Upcoming Bookings',
                      style: const TextStyle(fontSize: 13, color: AppColors.textSecondary),
                    ),
                  ],
                ),
                ElevatedButton.icon(
                  icon: const Icon(Icons.add_circle_outline, size: 18),
                  label: const Text('New Reservation'),
                  onPressed: () => _showAddReservationDialog(context, ref, rooms),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Expanded(
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: reservations.isEmpty
                      ? const Center(
                          child: Text(
                            'No reservations on record. Click "New Reservation" to record a booking.',
                            style: TextStyle(color: AppColors.textSecondary),
                          ),
                        )
                      : ListView(
                          children: [
                            DataTable(
                              columns: const [
                                DataColumn(label: Text('Code', style: TextStyle(fontWeight: FontWeight.bold))),
                                DataColumn(label: Text('Guest Name')),
                                DataColumn(label: Text('Phone')),
                                DataColumn(label: Text('Source')),
                                DataColumn(label: Text('Category')),
                                DataColumn(label: Text('Room')),
                                DataColumn(label: Text('Check-In')),
                                DataColumn(label: Text('Check-Out')),
                                DataColumn(label: Text('Tariff / Nt')),
                                DataColumn(label: Text('Status')),
                                DataColumn(label: Text('Action')),
                              ],
                              rows: [
                                for (final r in reservations)
                                  DataRow(
                                    cells: [
                                      DataCell(Text(r.reservationCode, style: const TextStyle(fontWeight: FontWeight.bold))),
                                      DataCell(Text(r.guestName)),
                                      DataCell(Text(r.guestPhone)),
                                      DataCell(_sourceBadge(r.bookingSource)),
                                      DataCell(Text(r.categoryName)),
                                      DataCell(Text(r.assignedRoomNumber ?? 'Unassigned')),
                                      DataCell(Text(r.checkInDate.toString().substring(0, 10))),
                                      DataCell(Text(r.checkOutDate.toString().substring(0, 10))),
                                      DataCell(Text(CurrencyFormatter.formatPaise(r.agreedNightlyTariffPaise))),
                                      DataCell(
                                        Container(
                                          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                                          decoration: BoxDecoration(
                                            color: r.status == 'confirmed'
                                                ? AppColors.successEmerald.withOpacity(0.12)
                                                : AppColors.dangerCrimson.withOpacity(0.12),
                                            borderRadius: BorderRadius.circular(4),
                                          ),
                                          child: Text(
                                            r.status.toUpperCase(),
                                            style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.bold,
                                              color: r.status == 'confirmed'
                                                  ? AppColors.successEmerald
                                                  : AppColors.dangerCrimson,
                                            ),
                                          ),
                                        ),
                                      ),
                                      DataCell(
                                        r.status == 'confirmed'
                                            ? TextButton(
                                                onPressed: () => ref.read(reservationsProvider.notifier).cancelReservation(r.id),
                                                child: const Text('Cancel', style: TextStyle(color: AppColors.dangerCrimson)),
                                              )
                                            : const Text('—'),
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

  Widget _sourceBadge(String source) {
    Color color = AppColors.infoBlue;
    if (source.contains('Walk-in')) color = AppColors.primaryNavy;
    if (source.contains('WhatsApp')) color = Colors.green.shade700;
    if (source.contains('MakeMyTrip') || source.contains('Goibibo')) color = Colors.orange.shade800;
    if (source.contains('Booking.com')) color = Colors.blue.shade800;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
      decoration: BoxDecoration(color: color.withOpacity(0.1), borderRadius: BorderRadius.circular(4)),
      child: Text(source, style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: color)),
    );
  }

  void _showAddReservationDialog(BuildContext context, WidgetRef ref, List<RoomModel> rooms) {
    final nameCtrl = TextEditingController();
    final phoneCtrl = TextEditingController();
    String source = 'Telephone';
    String category = HotelDefaults.catElegant;
    String? assignedRoom;
    DateTime checkIn = DateTime.now().add(const Duration(days: 1));
    DateTime checkOut = DateTime.now().add(const Duration(days: 3));

    showDialog(
      context: context,
      builder: (ctx) => StatefulBuilder(
        builder: (context, setDialogState) => AlertDialog(
          title: const Text('Create New Reservation'),
          content: SizedBox(
            width: 480,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: nameCtrl,
                        decoration: const InputDecoration(labelText: 'Guest Full Name *'),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: TextField(
                        controller: phoneCtrl,
                        keyboardType: TextInputType.phone,
                        decoration: const InputDecoration(labelText: 'Mobile Number *'),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    Expanded(
                      child: DropdownButtonFormField<String>(
                        value: source,
                        decoration: const InputDecoration(labelText: 'Booking Channel Source'),
                        items: ['Walk-in', 'Telephone', 'WhatsApp', 'Direct Website', 'MakeMyTrip', 'Goibibo', 'Booking.com', 'Agoda']
                            .map((s) => DropdownMenuItem(value: s, child: Text(s)))
                            .toList(),
                        onChanged: (v) => setDialogState(() => source = v!),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: DropdownButtonFormField<String>(
                        value: category,
                        decoration: const InputDecoration(labelText: 'Room Category'),
                        items: [HotelDefaults.catElegant, HotelDefaults.catRoyal, HotelDefaults.catCorporate, HotelDefaults.catSuite]
                            .map((c) => DropdownMenuItem(value: c, child: Text(c)))
                            .toList(),
                        onChanged: (v) => setDialogState(() => category = v!),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                DropdownButtonFormField<String?>(
                  value: assignedRoom,
                  decoration: const InputDecoration(labelText: 'Assign Room (Optional - Can allocate later)'),
                  items: [
                    const DropdownMenuItem(value: null, child: Text('Unassigned (Assign upon arrival)')),
                    for (final r in rooms.where((rm) => rm.categoryName == category))
                      DropdownMenuItem(value: r.roomNumber, child: Text('Room ${r.roomNumber}')),
                  ],
                  onChanged: (v) => setDialogState(() => assignedRoom = v),
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    Expanded(
                      child: ListTile(
                        title: const Text('Check-In Date', style: TextStyle(fontSize: 12)),
                        subtitle: Text(checkIn.toString().substring(0, 10), style: const TextStyle(fontWeight: FontWeight.bold)),
                        trailing: const Icon(Icons.calendar_today, size: 18),
                        onTap: () async {
                          final picked = await showDatePicker(
                            context: context,
                            initialDate: checkIn,
                            firstDate: DateTime.now(),
                            lastDate: DateTime.now().add(const Duration(days: 365)),
                          );
                          if (picked != null) setDialogState(() => checkIn = picked);
                        },
                      ),
                    ),
                    Expanded(
                      child: ListTile(
                        title: const Text('Check-Out Date', style: TextStyle(fontSize: 12)),
                        subtitle: Text(checkOut.toString().substring(0, 10), style: const TextStyle(fontWeight: FontWeight.bold)),
                        trailing: const Icon(Icons.calendar_today, size: 18),
                        onTap: () async {
                          final picked = await showDatePicker(
                            context: context,
                            initialDate: checkOut,
                            firstDate: checkIn.add(const Duration(days: 1)),
                            lastDate: DateTime.now().add(const Duration(days: 365)),
                          );
                          if (picked != null) setDialogState(() => checkOut = picked);
                        },
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
                if (nameCtrl.text.trim().isEmpty || phoneCtrl.text.trim().isEmpty) return;
                try {
                  ref.read(reservationsProvider.notifier).addReservation(
                    guestName: nameCtrl.text.trim(),
                    guestPhone: phoneCtrl.text.trim(),
                    bookingSource: source,
                    categoryName: category,
                    assignedRoomNumber: assignedRoom,
                    checkInDate: checkIn,
                    checkOutDate: checkOut,
                  );
                  Navigator.pop(ctx);
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Reservation successfully confirmed!')),
                  );
                } catch (e) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(e.toString())));
                }
              },
              child: const Text('Save Reservation'),
            ),
          ],
        ),
      ),
    );
  }
}
