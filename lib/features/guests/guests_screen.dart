import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/constants/app_colors.dart';
import '../shared/providers.dart';

class GuestsScreen extends ConsumerStatefulWidget {
  const GuestsScreen({super.key});

  @override
  ConsumerState<GuestsScreen> createState() => _GuestsScreenState();
}

class _GuestsScreenState extends ConsumerState<GuestsScreen> {
  String _search = '';

  @override
  Widget build(BuildContext context) {
    final guests = ref.watch(guestsProvider);

    final filtered = guests.where((g) {
      if (_search.isEmpty) return true;
      final q = _search.toLowerCase();
      return g.fullName.toLowerCase().contains(q) ||
          g.phone.contains(q) ||
          (g.companyName?.toLowerCase().contains(q) ?? false);
    }).toList();

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
                      'GUEST DIRECTORY & PROFILES',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: AppColors.primaryNavy),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'Hotel New Shivam Inn • ${guests.length} Registered Guest Profiles',
                      style: const TextStyle(fontSize: 13, color: AppColors.textSecondary),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 16),
            TextField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.search, size: 20),
                hintText: 'Search guests by name, phone number, company...',
                isDense: true,
              ),
              onChanged: (v) => setState(() => _search = v),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: filtered.isEmpty
                      ? const Center(
                          child: Text(
                            'No guest profiles found. Guests registered during Front Desk check-in will appear here.',
                            style: TextStyle(color: AppColors.textSecondary),
                          ),
                        )
                      : ListView(
                          children: [
                            DataTable(
                              columns: const [
                                DataColumn(label: Text('Full Name', style: TextStyle(fontWeight: FontWeight.bold))),
                                DataColumn(label: Text('Mobile')),
                                DataColumn(label: Text('Company / Designation')),
                                DataColumn(label: Text('ID Proof')),
                                DataColumn(label: Text('Nationality')),
                                DataColumn(label: Text('Registered Date')),
                              ],
                              rows: [
                                for (final g in filtered)
                                  DataRow(
                                    cells: [
                                      DataCell(Text(g.fullName, style: const TextStyle(fontWeight: FontWeight.bold))),
                                      DataCell(Text(g.phone)),
                                      DataCell(Text(g.companyName != null && g.companyName!.isNotEmpty ? '${g.companyName} (${g.designation ?? ""})' : 'Individual')),
                                      DataCell(Text('${g.idProofType?.toUpperCase() ?? "N/A"}: ${_maskId(g.idProofNumber)}')),
                                      DataCell(Text(g.nationality)),
                                      DataCell(Text(g.createdAt.toString().substring(0, 10))),
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

  String _maskId(String? id) {
    if (id == null || id.isEmpty) return 'Not Provided';
    if (id.length <= 4) return id;
    return 'XXXX-XXXX-${id.substring(id.length - 4)}';
  }
}
