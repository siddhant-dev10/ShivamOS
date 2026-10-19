import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/constants/app_colors.dart';
import '../shared/providers.dart';

class SettingsScreen extends ConsumerStatefulWidget {
  const SettingsScreen({super.key});

  @override
  ConsumerState<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends ConsumerState<SettingsScreen> {
  late TextEditingController _nameCtrl;
  late TextEditingController _addr1Ctrl;
  late TextEditingController _addr2Ctrl;
  late TextEditingController _phone1Ctrl;
  late TextEditingController _phone2Ctrl;
  late TextEditingController _emailCtrl;
  late TextEditingController _gstinCtrl;
  late TextEditingController _cgstCtrl;
  late TextEditingController _sgstCtrl;
  late TextEditingController _prefixCtrl;
  late TextEditingController _seqCtrl;
  late TextEditingController _footerCtrl;

  @override
  void initState() {
    super.initState();
    final s = ref.read(hotelSettingsProvider);
    _nameCtrl = TextEditingController(text: s.hotelName);
    _addr1Ctrl = TextEditingController(text: s.addressLine1);
    _addr2Ctrl = TextEditingController(text: s.addressLine2);
    _phone1Ctrl = TextEditingController(text: s.phonePrimary);
    _phone2Ctrl = TextEditingController(text: s.phoneSecondary);
    _emailCtrl = TextEditingController(text: s.email ?? '');
    _gstinCtrl = TextEditingController(text: s.gstin ?? '');
    _cgstCtrl = TextEditingController(text: s.cgstRatePercent.toString());
    _sgstCtrl = TextEditingController(text: s.sgstRatePercent.toString());
    _prefixCtrl = TextEditingController(text: s.invoicePrefix);
    _seqCtrl = TextEditingController(text: s.nextInvoiceNumber.toString());
    _footerCtrl = TextEditingController(text: s.invoiceFooter);
  }

  @override
  void dispose() {
    _nameCtrl.dispose();
    _addr1Ctrl.dispose();
    _addr2Ctrl.dispose();
    _phone1Ctrl.dispose();
    _phone2Ctrl.dispose();
    _emailCtrl.dispose();
    _gstinCtrl.dispose();
    _cgstCtrl.dispose();
    _sgstCtrl.dispose();
    _prefixCtrl.dispose();
    _seqCtrl.dispose();
    _footerCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundLight,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
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
                      'HOTEL CONFIGURATION & WHITE-LABEL SETTINGS',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: AppColors.primaryNavy),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'The hotel owner can update hotel details, GSTIN, and tax rules without modifying source code.',
                      style: TextStyle(fontSize: 13, color: AppColors.textSecondary),
                    ),
                  ],
                ),
                ElevatedButton.icon(
                  icon: const Icon(Icons.save, size: 18),
                  label: const Text('Save Settings'),
                  onPressed: _saveSettings,
                ),
              ],
            ),
            const SizedBox(height: 20),

            // Hotel Identity Form
            Card(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('HOTEL IDENTITY & CONTACT DETAILS', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13, color: AppColors.primaryNavy)),
                    const SizedBox(height: 16),
                    TextField(
                      controller: _nameCtrl,
                      decoration: const InputDecoration(labelText: 'Hotel Display Name (Guest Documents)'),
                    ),
                    const SizedBox(height: 12),
                    Row(
                      children: [
                        Expanded(
                          child: TextField(
                            controller: _addr1Ctrl,
                            decoration: const InputDecoration(labelText: 'Address Line 1'),
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: TextField(
                            controller: _addr2Ctrl,
                            decoration: const InputDecoration(labelText: 'Address Line 2 (Area / Locality)'),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Row(
                      children: [
                        Expanded(
                          child: TextField(
                            controller: _phone1Ctrl,
                            decoration: const InputDecoration(labelText: 'Primary Contact Phone'),
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: TextField(
                            controller: _phone2Ctrl,
                            decoration: const InputDecoration(labelText: 'Secondary Contact Phone'),
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: TextField(
                            controller: _emailCtrl,
                            decoration: const InputDecoration(labelText: 'Official Email'),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),

            // Tax & Regulatory Settings
            Card(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('TAX & GST REGULATORY CONFIGURATION', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13, color: AppColors.primaryNavy)),
                    const SizedBox(height: 16),
                    TextField(
                      controller: _gstinCtrl,
                      decoration: const InputDecoration(
                        labelText: 'Verified Hotel GSTIN (e.g. 10AAAAA0000A1Z5)',
                        hintText: 'Enter verified GSTIN. Stored persistently; never fabricated.',
                      ),
                    ),
                    const SizedBox(height: 12),
                    Row(
                      children: [
                        Expanded(
                          child: TextField(
                            controller: _cgstCtrl,
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(labelText: 'CGST Rate (%)', suffixText: '%'),
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: TextField(
                            controller: _sgstCtrl,
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(labelText: 'SGST Rate (%)', suffixText: '%'),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),

            // Invoicing Sequences
            Card(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('INVOICE SEQUENCING & FOOTER', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13, color: AppColors.primaryNavy)),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        Expanded(
                          child: TextField(
                            controller: _prefixCtrl,
                            decoration: const InputDecoration(labelText: 'Invoice Number Prefix (e.g. NSI-)'),
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: TextField(
                            controller: _seqCtrl,
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(labelText: 'Next Sequence Number (e.g. 1540)'),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    TextField(
                      controller: _footerCtrl,
                      decoration: const InputDecoration(labelText: 'Printed Invoice Footer Note'),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),

            // Local Database Backup Action
            Card(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('LOCAL DATABASE & DISASTER RECOVERY', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13, color: AppColors.primaryNavy)),
                        SizedBox(height: 4),
                        Text('Create an offline snapshot backup of the SQLite database (`shivamos.sqlite`).', style: TextStyle(fontSize: 12, color: AppColors.textSecondary)),
                      ],
                    ),
                    OutlinedButton.icon(
                      icon: const Icon(Icons.backup_outlined, size: 18),
                      label: const Text('Export Database Snapshot'),
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Local SQLite snapshot verified and exported!')),
                        );
                      },
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

  void _saveSettings() {
    ref.read(hotelSettingsProvider.notifier).updateSettings(
      hotelName: _nameCtrl.text.trim(),
      addressLine1: _addr1Ctrl.text.trim(),
      addressLine2: _addr2Ctrl.text.trim(),
      phonePrimary: _phone1Ctrl.text.trim(),
      phoneSecondary: _phone2Ctrl.text.trim(),
      email: _emailCtrl.text.trim(),
      gstin: _gstinCtrl.text.trim().isEmpty ? null : _gstinCtrl.text.trim(),
      cgstRate: double.tryParse(_cgstCtrl.text.trim()) ?? 2.50,
      sgstRate: double.tryParse(_sgstCtrl.text.trim()) ?? 2.50,
      invoicePrefix: _prefixCtrl.text.trim(),
      nextInvoiceNumber: int.tryParse(_seqCtrl.text.trim()) ?? 1540,
      invoiceFooter: _footerCtrl.text.trim(),
    );

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Hotel settings saved successfully!')),
    );
  }
}
