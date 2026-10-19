import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/constants/app_colors.dart';
import '../../core/constants/hotel_defaults.dart';
import '../../core/utils/currency_formatter.dart';
import '../shared/providers.dart';

class OnlineBookingsScreen extends ConsumerWidget {
  const OnlineBookingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final reservations = ref.watch(reservationsProvider);
    final otaBookings = reservations.where((r) =>
        r.bookingSource != 'Walk-in' &&
        r.bookingSource != 'Telephone' &&
        r.bookingSource != 'WhatsApp').toList();

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
                      'ONLINE BOOKINGS & RECONCILIATION QUEUE',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: AppColors.primaryNavy),
                    ),
                    const SizedBox(height: 4),
                    const Text(
                      'MakeMyTrip, Goibibo, Booking.com, Agoda & Website Ingestion',
                      style: TextStyle(fontSize: 13, color: AppColors.textSecondary),
                    ),
                  ],
                ),
                ElevatedButton.icon(
                  icon: const Icon(Icons.cloud_download_outlined, size: 18),
                  label: const Text('Manual Ingestion / OTA Entry'),
                  onPressed: () => _showManualOTAEntryDialog(context, ref),
                ),
              ],
            ),
            const SizedBox(height: 16),

            // Ingestion status note
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: AppColors.infoBlue.withOpacity(0.08),
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: AppColors.infoBlue.withOpacity(0.2)),
              ),
              child: const Row(
                children: [
                  Icon(Icons.info_outline, color: AppColors.infoBlue, size: 20),
                  SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      'Notice: Official OTA webhook and channel manager credentials are intentionally configurable. All imported or manually reconciled bookings are held in this queue with strict duplicate reference detection before room assignment. Online bookings never check in guests automatically.',
                      style: TextStyle(fontSize: 12, color: AppColors.primaryNavy),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),

            // Reconciliation List Table
            Expanded(
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: otaBookings.isEmpty
                      ? const Center(
                          child: Text(
                            'No online travel agency bookings awaiting reconciliation.',
                            style: TextStyle(color: AppColors.textSecondary),
                          ),
                        )
                      : ListView(
                          children: [
                            DataTable(
                              columns: const [
                                DataColumn(label: Text('Platform', style: TextStyle(fontWeight: FontWeight.bold))),
                                DataColumn(label: Text('External Ref #')),
                                DataColumn(label: Text('Guest Name')),
                                DataColumn(label: Text('Category')),
                                DataColumn(label: Text('Dates')),
                                DataColumn(label: Text('Agreed Rate')),
                                DataColumn(label: Text('Advance Paid')),
                                DataColumn(label: Text('Status')),
                              ],
                              rows: [
                                for (final b in otaBookings)
                                  DataRow(
                                    cells: [
                                      DataCell(Text(b.bookingSource, style: const TextStyle(fontWeight: FontWeight.bold))),
                                      DataCell(Text(b.externalReference ?? 'DIRECT-WEB')),
                                      DataCell(Text(b.guestName)),
                                      DataCell(Text(b.categoryName)),
                                      DataCell(Text('${b.checkInDate.toString().substring(5, 10)} to ${b.checkOutDate.toString().substring(5, 10)}')),
                                      DataCell(Text(CurrencyFormatter.formatPaise(b.agreedNightlyTariffPaise))),
                                      DataCell(Text(CurrencyFormatter.formatPaise(b.advancePaidPaise), style: const TextStyle(color: AppColors.successEmerald))),
                                      DataCell(
                                        Container(
                                          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                                          decoration: BoxDecoration(color: AppColors.successEmerald.withOpacity(0.12), borderRadius: BorderRadius.circular(4)),
                                          child: Text(b.status.toUpperCase(), style: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: AppColors.successEmerald)),
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

  void _showManualOTAEntryDialog(BuildContext context, WidgetRef ref) {
    String platform = 'MakeMyTrip';
    final refCtrl = TextEditingController(text: 'MMT-${DateTime.now().millisecondsSinceEpoch.toString().substring(7)}');
    final nameCtrl = TextEditingController();
    final phoneCtrl = TextEditingController();
    String category = HotelDefaults.catElegant;
    final advanceCtrl = TextEditingController(text: '0');
    DateTime checkIn = DateTime.now().add(const Duration(days: 1));
    DateTime checkOut = DateTime.now().add(const Duration(days: 3));

    showDialog(
      context: context,
      builder: (ctx) => StatefulBuilder(
        builder: (context, setDialogState) => AlertDialog(
          title: const Text('Manual Online Booking Entry'),
          content: SizedBox(
            width: 480,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: DropdownButtonFormField<String>(
                        value: platform,
                        decoration: const InputDecoration(labelText: 'OTA Platform'),
                        items: ['MakeMyTrip', 'Goibibo', 'Booking.com', 'Agoda', 'Direct Website']
                            .map((p) => DropdownMenuItem(value: p, child: Text(p)))
                            .toList(),
                        onChanged: (v) => setDialogState(() => platform = v!),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: TextField(
                        controller: refCtrl,
                        decoration: const InputDecoration(labelText: 'External Booking Ref *'),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: nameCtrl,
                        decoration: const InputDecoration(labelText: 'Guest Name *'),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: TextField(
                        controller: phoneCtrl,
                        keyboardType: TextInputType.phone,
                        decoration: const InputDecoration(labelText: 'Guest Mobile *'),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    Expanded(
                      child: DropdownButtonFormField<String>(
                        value: category,
                        decoration: const InputDecoration(labelText: 'Booked Room Category'),
                        items: [HotelDefaults.catElegant, HotelDefaults.catRoyal, HotelDefaults.catCorporate, HotelDefaults.catSuite]
                            .map((c) => DropdownMenuItem(value: c, child: Text(c)))
                            .toList(),
                        onChanged: (v) => setDialogState(() => category = v!),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: TextField(
                        controller: advanceCtrl,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(labelText: 'Advance Paid Online (₹)', prefixText: '₹ '),
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
                if (nameCtrl.text.trim().isEmpty || phoneCtrl.text.trim().isEmpty || refCtrl.text.trim().isEmpty) return;
                try {
                  final adv = CurrencyFormatter.inrToPaise(double.tryParse(advanceCtrl.text.trim()) ?? 0.0);
                  ref.read(reservationsProvider.notifier).addReservation(
                    guestName: nameCtrl.text.trim(),
                    guestPhone: phoneCtrl.text.trim(),
                    bookingSource: platform,
                    externalReference: refCtrl.text.trim(),
                    categoryName: category,
                    checkInDate: checkIn,
                    checkOutDate: checkOut,
                    advancePaidPaise: adv,
                  );
                  Navigator.pop(ctx);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Reconciled booking $platform #${refCtrl.text}!')),
                  );
                } catch (e) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(e.toString())));
                }
              },
              child: const Text('Reconcile & Ingest'),
            ),
          ],
        ),
      ),
    );
  }
}
