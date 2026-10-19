import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/constants/app_colors.dart';
import '../../core/constants/hotel_defaults.dart';
import '../../core/services/billing_engine.dart';
import '../../core/services/pdf_generator_service.dart';
import '../../core/services/room_service.dart';
import '../../core/utils/currency_formatter.dart';
import '../shared/providers.dart';
import 'package:printing/printing.dart';

class FrontDeskScreen extends ConsumerStatefulWidget {
  const FrontDeskScreen({super.key});

  @override
  ConsumerState<FrontDeskScreen> createState() => _FrontDeskScreenState();
}

class _FrontDeskScreenState extends ConsumerState<FrontDeskScreen> {
  String _filter = 'ALL'; // 'ALL', 'AVAILABLE', 'OCCUPIED', 'CLEANING'
  String _searchQuery = '';

  @override
  Widget build(BuildContext context) {
    final rooms = ref.watch(roomsProvider);
    final stays = ref.watch(staysProvider);
    final settings = ref.watch(hotelSettingsProvider);

    // Apply filters
    final filteredRooms = rooms.where((r) {
      if (_searchQuery.isNotEmpty && !r.roomNumber.contains(_searchQuery)) {
        return false;
      }
      if (_filter == 'AVAILABLE') {
        return r.occupancyStatus == 'available' &&
            r.housekeepingStatus != 'cleaning_required' &&
            r.maintenanceStatus == 'normal';
      }
      if (_filter == 'OCCUPIED') {
        return r.occupancyStatus == 'occupied';
      }
      if (_filter == 'CLEANING') {
        return r.housekeepingStatus == 'cleaning_required' ||
            r.housekeepingStatus == 'cleaning_in_progress';
      }
      return true;
    }).toList();

    // Group rooms by floor
    final floors = <int>{for (final r in filteredRooms) r.floorNumber}.toList()..sort();

    return Scaffold(
      backgroundColor: AppColors.backgroundLight,
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Top Bar: Search, Filters, and Action
            Row(
              children: [
                Expanded(
                  flex: 3,
                  child: TextField(
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.search, size: 20),
                      hintText: 'Search room number...',
                      contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                    ),
                    onChanged: (val) => setState(() => _searchQuery = val),
                  ),
                ),
                const SizedBox(width: 16),
                _filterButton('ALL', 'All Rooms'),
                const SizedBox(width: 8),
                _filterButton('AVAILABLE', 'Available'),
                const SizedBox(width: 8),
                _filterButton('OCCUPIED', 'Occupied'),
                const SizedBox(width: 8),
                _filterButton('CLEANING', 'Dirty / Cleaning'),
              ],
            ),
            const SizedBox(height: 16),

            // Floors & Rooms Grid
            Expanded(
              child: filteredRooms.isEmpty
                  ? const Center(child: Text('No rooms found matching the criteria.'))
                  : ListView.builder(
                      itemCount: floors.length,
                      itemBuilder: (context, index) {
                        final floor = floors[index];
                        final floorRooms = filteredRooms.where((r) => r.floorNumber == floor).toList();
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 8),
                              child: Row(
                                children: [
                                  Text(
                                    'FLOOR $floor',
                                    style: const TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.neutralGray,
                                      letterSpacing: 0.5,
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                  Container(
                                    padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                                    decoration: BoxDecoration(
                                      color: AppColors.borderLight,
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    child: Text(
                                      '${floorRooms.length} Rooms',
                                      style: const TextStyle(fontSize: 11, color: AppColors.textSecondary),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            GridView.builder(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                                maxCrossAxisExtent: 220,
                                mainAxisExtent: 160,
                                crossAxisSpacing: 12,
                                mainAxisSpacing: 12,
                              ),
                              itemCount: floorRooms.length,
                              itemBuilder: (context, rIdx) {
                                final room = floorRooms[rIdx];
                                final activeStay = stays.where((s) => s.roomNumber == room.roomNumber && s.status == 'active').firstOrNull;
                                return _buildRoomCard(context, room, activeStay, settings);
                              },
                            ),
                            const SizedBox(height: 16),
                          ],
                        );
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _filterButton(String code, String label) {
    final isSelected = _filter == code;
    return ChoiceChip(
      label: Text(label),
      selected: isSelected,
      onSelected: (_) => setState(() => _filter = code),
      selectedColor: AppColors.primaryNavy,
      labelStyle: TextStyle(
        color: isSelected ? Colors.white : AppColors.textPrimary,
        fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
        fontSize: 12,
      ),
    );
  }

  Widget _buildRoomCard(BuildContext context, RoomModel room, StayRecord? activeStay, HotelSettingsState settings) {
    Color statusColor;
    String statusText;

    if (room.occupancyStatus == 'occupied') {
      statusColor = AppColors.dangerCrimson;
      statusText = 'Occupied';
    } else if (room.housekeepingStatus == 'cleaning_required') {
      statusColor = AppColors.warningOrange;
      statusText = 'Cleaning Req.';
    } else if (room.housekeepingStatus == 'cleaning_in_progress') {
      statusColor = AppColors.infoBlue;
      statusText = 'Cleaning';
    } else if (room.maintenanceStatus == 'out_of_service') {
      statusColor = Colors.grey.shade700;
      statusText = 'Out of Service';
    } else {
      statusColor = AppColors.successEmerald;
      statusText = 'Available';
    }

    return Card(
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: () {
          if (room.occupancyStatus == 'occupied' && activeStay != null) {
            _showCheckoutDialog(context, room, activeStay, settings);
          } else if (RoomService.canCheckIn(room)) {
            _showCheckInDialog(context, room, settings);
          } else if (room.housekeepingStatus == 'cleaning_required') {
            _showQuickCleaningDialog(context, room);
          }
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header: Room Number & Status Pill
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              color: statusColor.withOpacity(0.12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Room ${room.roomNumber}',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: statusColor,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                    decoration: BoxDecoration(
                      color: statusColor,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Text(
                      statusText,
                      style: const TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            // Body
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    room.categoryName,
                    style: const TextStyle(fontSize: 11, fontWeight: FontWeight.w600, color: AppColors.textSecondary),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 4),
                  if (activeStay != null) ...[
                    Text(
                      activeStay.guestName,
                      style: const TextStyle(fontSize: 13, fontWeight: FontWeight.bold, color: AppColors.primaryNavy),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      'Out: ${activeStay.expectedCheckOutDate.toString().substring(0, 10)}',
                      style: const TextStyle(fontSize: 10, color: AppColors.neutralGray),
                    ),
                  ] else ...[
                    Text(
                      'HK: ${room.housekeepingStatus.replaceAll('_', ' ').toUpperCase()}',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                        color: room.housekeepingStatus == 'clean' ? AppColors.successEmerald : AppColors.warningOrange,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      'Rate: ₹${room.categoryName == HotelDefaults.catElegant ? "2,190" : "Tariff"}',
                      style: const TextStyle(fontSize: 11, color: AppColors.textSecondary),
                    ),
                  ],
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showCheckInDialog(BuildContext context, RoomModel room, HotelSettingsState settings) {
    final nameCtrl = TextEditingController();
    final phoneCtrl = TextEditingController();
    final addressCtrl = TextEditingController();
    final companyCtrl = TextEditingController();
    final gstinCtrl = TextEditingController();
    final idNumberCtrl = TextEditingController();
    String idType = 'aadhaar';
    String occupancy = 'double';
    int nights = 1;
    final advanceCtrl = TextEditingController(text: '0');
    bool isForeign = false;
    final passportCtrl = TextEditingController();
    final visaCtrl = TextEditingController();

    showDialog(
      context: context,
      builder: (ctx) => StatefulBuilder(
        builder: (context, setDialogState) {
          final tariffPaise = BillingEngine.getBaselineTariffPaise(room.categoryName, occupancy);

          return AlertDialog(
            title: Text('Check-In: Room ${room.roomNumber} (${room.categoryName})'),
            content: SizedBox(
              width: 560,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('GUEST DETAILS (Police Verification Standard)', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 11, color: AppColors.neutralGray)),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Expanded(
                          child: TextField(
                            controller: nameCtrl,
                            decoration: const InputDecoration(labelText: 'Guest Full Name *', isDense: true),
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: TextField(
                            controller: phoneCtrl,
                            keyboardType: TextInputType.phone,
                            decoration: const InputDecoration(labelText: 'Mobile Number *', isDense: true),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    TextField(
                      controller: addressCtrl,
                      decoration: const InputDecoration(labelText: 'Residential Address', isDense: true),
                    ),
                    const SizedBox(height: 12),
                    Row(
                      children: [
                        Expanded(
                          child: TextField(
                            controller: companyCtrl,
                            decoration: const InputDecoration(labelText: 'Company Name', isDense: true),
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: TextField(
                            controller: gstinCtrl,
                            decoration: const InputDecoration(labelText: 'Company GSTIN', isDense: true),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Row(
                      children: [
                        Expanded(
                          child: DropdownButtonFormField<String>(
                            value: idType,
                            decoration: const InputDecoration(labelText: 'ID Proof Type', isDense: true),
                            items: const [
                              DropdownMenuItem(value: 'aadhaar', child: Text('Aadhaar Card')),
                              DropdownMenuItem(value: 'passport', child: Text('Passport')),
                              DropdownMenuItem(value: 'driving_license', child: Text('Driving License')),
                              DropdownMenuItem(value: 'voter_id', child: Text('Voter ID')),
                            ],
                            onChanged: (v) => setDialogState(() => idType = v!),
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: TextField(
                            controller: idNumberCtrl,
                            decoration: const InputDecoration(labelText: 'ID Reference Number', isDense: true),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Row(
                      children: [
                        Checkbox(
                          value: isForeign,
                          onChanged: (v) => setDialogState(() => isForeign = v!),
                        ),
                        const Text('Guest is a Foreign National', style: TextStyle(fontSize: 13)),
                      ],
                    ),
                    if (isForeign) ...[
                      Row(
                        children: [
                          Expanded(
                            child: TextField(
                              controller: passportCtrl,
                              decoration: const InputDecoration(labelText: 'Passport Number *', isDense: true),
                            ),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: TextField(
                              controller: visaCtrl,
                              decoration: const InputDecoration(labelText: 'Visa Number *', isDense: true),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 12),
                    ],
                    const Divider(height: 24),
                    const Text('STAY & TARIFF DETAILS', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 11, color: AppColors.neutralGray)),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Expanded(
                          child: DropdownButtonFormField<String>(
                            value: occupancy,
                            decoration: const InputDecoration(labelText: 'Occupancy', isDense: true),
                            items: const [
                              DropdownMenuItem(value: 'single', child: Text('Single Occupancy')),
                              DropdownMenuItem(value: 'double', child: Text('Double Occupancy')),
                            ],
                            onChanged: (v) => setDialogState(() => occupancy = v!),
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: DropdownButtonFormField<int>(
                            value: nights,
                            decoration: const InputDecoration(labelText: 'Stay Duration', isDense: true),
                            items: [1, 2, 3, 4, 5, 7, 10, 14, 30]
                                .map((n) => DropdownMenuItem(value: n, child: Text('$n Night${n > 1 ? "s" : ""}')))
                                .toList(),
                            onChanged: (v) => setDialogState(() => nights = v!),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: AppColors.primaryNavy.withOpacity(0.06),
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('Nightly Tariff', style: TextStyle(fontSize: 10, color: AppColors.textSecondary)),
                                Text(
                                  CurrencyFormatter.formatPaise(tariffPaise),
                                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: AppColors.primaryNavy),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: TextField(
                            controller: advanceCtrl,
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                              labelText: 'Advance Payment (₹)',
                              prefixText: '₹ ',
                              isDense: true,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(ctx),
                child: const Text('Cancel'),
              ),
              ElevatedButton.icon(
                icon: const Icon(Icons.check, size: 18),
                label: const Text('Confirm Check-In & Generate GRC'),
                onPressed: () async {
                  if (nameCtrl.text.trim().isEmpty || phoneCtrl.text.trim().isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Please enter guest name and phone number.')),
                    );
                    return;
                  }

                  final guest = ref.read(guestsProvider.notifier).registerGuest(
                    fullName: nameCtrl.text.trim(),
                    phone: phoneCtrl.text.trim(),
                    addressStreet: addressCtrl.text.trim(),
                    companyName: companyCtrl.text.trim(),
                    companyGstin: gstinCtrl.text.trim(),
                    idProofType: idType,
                    idProofNumber: idNumberCtrl.text.trim(),
                    isForeignNational: isForeign,
                    passportNumber: passportCtrl.text.trim(),
                    visaNumber: visaCtrl.text.trim(),
                  );

                  final checkInDate = DateTime.now();
                  final checkOutDate = checkInDate.add(Duration(days: nights));

                  ref.read(staysProvider.notifier).checkInGuest(
                    guest: guest,
                    roomNumber: room.roomNumber,
                    categoryName: room.categoryName,
                    expectedCheckOutDate: checkOutDate,
                    occupancyType: occupancy,
                  );

                  Navigator.pop(ctx);

                  // Offer GRC PDF generation
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Checked in guest to Room ${room.roomNumber}!'),
                      action: SnackBarAction(
                        label: 'Print GRC',
                        onPressed: () async {
                          final pdfBytes = await PdfGeneratorService.generateGuestRegistrationCard(
                            hotelName: settings.hotelName,
                            address: '${settings.addressLine1}, ${settings.city}',
                            phoneNumbers: '${settings.phonePrimary} / ${settings.phoneSecondary}',
                            gstin: settings.gstin,
                            guestName: guest.fullName,
                            phone: guest.phone,
                            addressStreet: guest.addressStreet,
                            companyName: guest.companyName,
                            companyGstin: guest.companyGstin,
                            roomNumber: room.roomNumber,
                            categoryName: room.categoryName,
                            occupancyType: occupancy,
                            adultsCount: 1,
                            childrenCount: 0,
                            agreedTariffPaise: tariffPaise,
                            checkInDate: checkInDate,
                            expectedCheckOutDate: checkOutDate,
                            idProofType: idType,
                            idProofNumber: idNumberCtrl.text.trim(),
                            isForeignNational: isForeign,
                            passportNumber: passportCtrl.text.trim(),
                            visaNumber: visaCtrl.text.trim(),
                          );
                          await Printing.layoutPdf(onLayout: (_) => pdfBytes);
                        },
                      ),
                    ),
                  );
                },
              ),
            ],
          );
        },
      ),
    );
  }

  void _showCheckoutDialog(BuildContext context, RoomModel room, StayRecord stay, HotelSettingsState settings) {
    final nights = BillingEngine.calculateBillableNights(stay.actualCheckInTime, DateTime.now());
    double discountPercent = 0.0;
    int extraCharges = 0;
    String paymentMethod = 'cash';

    showDialog(
      context: context,
      builder: (ctx) => StatefulBuilder(
        builder: (context, setDialogState) {
          final bill = BillingEngine.computeBill(
            nightlyTariffPaise: stay.appliedNightlyTariffPaise,
            billableNights: nights,
            extraChargesPaise: extraCharges,
            discountPercentage: discountPercent,
            cgstRate: settings.cgstRatePercent,
            sgstRate: settings.sgstRatePercent,
          );

          return AlertDialog(
            title: Text('Checkout & Final Invoice: Room ${room.roomNumber}'),
            content: SizedBox(
              width: 520,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Guest: ${stay.guestName} (${stay.guestPhone})', style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                    Text('Check-in: ${stay.actualCheckInTime.toString().substring(0, 16)} • Billable Nights: $nights', style: const TextStyle(fontSize: 12, color: AppColors.textSecondary)),
                    const Divider(height: 24),
                    // Bill breakdown
                    _billRow('Room Charges ($nights nights @ ${CurrencyFormatter.formatPaise(stay.appliedNightlyTariffPaise)})', CurrencyFormatter.formatPaise(bill.roomChargesPaise)),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        const Expanded(child: Text('Discount Percentage:')),
                        DropdownButton<double>(
                          value: discountPercent,
                          items: const [
                            DropdownMenuItem(value: 0.0, child: Text('0% (None)')),
                            DropdownMenuItem(value: 5.0, child: Text('5%')),
                            DropdownMenuItem(value: 10.0, child: Text('10%')),
                            DropdownMenuItem(value: 15.0, child: Text('15% (Requires Manager)')),
                            DropdownMenuItem(value: 20.0, child: Text('20% (Requires Admin)')),
                          ],
                          onChanged: (v) => setDialogState(() => discountPercent = v!),
                        ),
                      ],
                    ),
                    if (bill.discountAmountPaise > 0)
                      _billRow('Discount Amount', '- ${CurrencyFormatter.formatPaise(bill.discountAmountPaise)}', color: AppColors.accentAmber),
                    _billRow('Taxable Value', CurrencyFormatter.formatPaise(bill.taxableAmountPaise), bold: true),
                    _billRow('CGST (${settings.cgstRatePercent}%)', CurrencyFormatter.formatPaise(bill.cgstAmountPaise)),
                    _billRow('SGST (${settings.sgstRatePercent}%)', CurrencyFormatter.formatPaise(bill.sgstAmountPaise)),
                    const Divider(height: 16),
                    _billRow('Grand Total', CurrencyFormatter.formatPaise(bill.totalAmountPaise), bold: true, fontSize: 16, color: AppColors.primaryNavy),
                    const SizedBox(height: 8),
                    Text(
                      CurrencyFormatter.amountInWords(bill.totalAmountPaise),
                      style: const TextStyle(fontSize: 11, fontStyle: FontStyle.italic, color: AppColors.neutralGray),
                    ),
                    const Divider(height: 24),
                    DropdownButtonFormField<String>(
                      value: paymentMethod,
                      decoration: const InputDecoration(labelText: 'Payment Settlement Method', isDense: true),
                      items: const [
                        DropdownMenuItem(value: 'cash', child: Text('Cash at Desk')),
                        DropdownMenuItem(value: 'upi', child: Text('UPI / QR Code')),
                        DropdownMenuItem(value: 'card', child: Text('Debit / Credit Card')),
                        DropdownMenuItem(value: 'bank_transfer', child: Text('Bank Transfer / NEFT')),
                      ],
                      onChanged: (v) => setDialogState(() => paymentMethod = v!),
                    ),
                  ],
                ),
              ),
            ),
            actions: [
              TextButton(onPressed: () => Navigator.pop(ctx), child: const Text('Cancel')),
              ElevatedButton.icon(
                icon: const Icon(Icons.print, size: 18),
                label: const Text('Settle, Checkout & Print Invoice'),
                onPressed: () async {
                  final invNumber = ref.read(hotelSettingsProvider.notifier).generateNextInvoiceNumber();

                  final invoiceRecord = InvoiceRecord(
                    id: 'inv_${DateTime.now().millisecondsSinceEpoch}',
                    invoiceNumber: invNumber,
                    stayId: stay.id,
                    guestName: stay.guestName,
                    guestPhone: stay.guestPhone,
                    roomNumber: room.roomNumber,
                    categoryName: room.categoryName,
                    checkInDate: stay.actualCheckInTime,
                    checkOutDate: DateTime.now(),
                    breakdown: bill,
                    totalPaidPaise: bill.totalAmountPaise,
                    outstandingBalancePaise: 0,
                    paymentMethod: paymentMethod,
                    status: 'paid',
                  );

                  ref.read(invoicesProvider.notifier).addFinalizedInvoice(invoiceRecord);
                  ref.read(staysProvider.notifier).completeStay(stay.id, room.roomNumber);

                  Navigator.pop(ctx);

                  // Trigger invoice PDF generation and printing
                  final pdfBytes = await PdfGeneratorService.generateInvoice(
                    hotelName: settings.hotelName,
                    address: '${settings.addressLine1}, ${settings.city}',
                    phoneNumbers: '${settings.phonePrimary} / ${settings.phoneSecondary}',
                    gstin: settings.gstin,
                    invoiceNumber: invNumber,
                    invoiceDate: DateTime.now(),
                    guestName: stay.guestName,
                    guestPhone: stay.guestPhone,
                    roomNumber: room.roomNumber,
                    categoryName: room.categoryName,
                    checkInDate: stay.actualCheckInTime,
                    checkOutDate: DateTime.now(),
                    breakdown: bill,
                    totalPaidPaise: bill.totalAmountPaise,
                    outstandingBalancePaise: 0,
                    paymentMethod: paymentMethod,
                  );

                  await Printing.layoutPdf(onLayout: (_) => pdfBytes);
                },
              ),
            ],
          );
        },
      ),
    );
  }

  void _showQuickCleaningDialog(BuildContext context, RoomModel room) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text('Housekeeping: Room ${room.roomNumber}'),
        content: Text('Room ${room.roomNumber} is currently marked as ${room.housekeepingStatus.toUpperCase()}. Update status:'),
        actions: [
          TextButton(
            onPressed: () {
              ref.read(roomsProvider.notifier).updateHousekeeping(room.roomNumber, 'cleaning_in_progress');
              Navigator.pop(ctx);
            },
            child: const Text('Mark Cleaning In Progress'),
          ),
          ElevatedButton(
            onPressed: () {
              ref.read(roomsProvider.notifier).updateHousekeeping(room.roomNumber, 'ready');
              Navigator.pop(ctx);
            },
            child: const Text('Mark Inspected & Ready'),
          ),
        ],
      ),
    );
  }

  Widget _billRow(String label, String value, {bool bold = false, double fontSize = 13, Color? color}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: TextStyle(fontSize: fontSize, fontWeight: bold ? FontWeight.bold : FontWeight.normal)),
          Text(value, style: TextStyle(fontSize: fontSize, fontWeight: bold ? FontWeight.bold : FontWeight.normal, color: color)),
        ],
      ),
    );
  }
}
