import 'package:flutter/material.dart';
import '../constants/app_colors.dart';

class Breakpoints {
  static const double mobileMax = 768.0;
  static const double tabletMax = 1024.0;

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width <= mobileMax;

  static bool isTablet(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return width > mobileMax && width <= tabletMax;
  }

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width > tabletMax;
}

class NavigationItem {
  final String label;
  final IconData icon;
  final String route;
  final String? badge;

  const NavigationItem({
    required this.label,
    required this.icon,
    required this.route,
    this.badge,
  });
}

class ResponsiveShell extends StatelessWidget {
  final Widget child;
  final String currentRoute;
  final Function(String route) onNavigate;
  final Widget? headerAction;

  const ResponsiveShell({
    super.key,
    required this.child,
    required this.currentRoute,
    required this.onNavigate,
    this.headerAction,
  });

  static const List<NavigationItem> primaryNavItems = [
    NavigationItem(label: 'Dashboard', icon: Icons.dashboard_outlined, route: '/'),
    NavigationItem(label: 'Front Desk', icon: Icons.desk_outlined, route: '/front-desk'),
    NavigationItem(label: 'Rooms (20)', icon: Icons.meeting_room_outlined, route: '/rooms'),
    NavigationItem(label: 'Guests', icon: Icons.people_outline, route: '/guests'),
    NavigationItem(label: 'Reservations', icon: Icons.calendar_month_outlined, route: '/reservations'),
    NavigationItem(label: 'Online Bookings', icon: Icons.cloud_download_outlined, route: '/online-bookings'),
    NavigationItem(label: 'Billing & Invoices', icon: Icons.receipt_long_outlined, route: '/billing'),
    NavigationItem(label: 'Staff & Payroll', icon: Icons.badge_outlined, route: '/payroll'),
    NavigationItem(label: 'Pending Salaries', icon: Icons.pending_actions_outlined, route: '/pending-salaries'),
    NavigationItem(label: 'Salary Advances', icon: Icons.payments_outlined, route: '/salary-advances'),
    NavigationItem(label: 'Housekeeping', icon: Icons.cleaning_services_outlined, route: '/housekeeping'),
    NavigationItem(label: 'Maintenance', icon: Icons.build_outlined, route: '/maintenance'),
    NavigationItem(label: 'Expenses', icon: Icons.account_balance_wallet_outlined, route: '/expenses'),
    NavigationItem(label: 'Reports', icon: Icons.bar_chart_outlined, route: '/reports'),
    NavigationItem(label: 'Hotel Settings', icon: Icons.settings_outlined, route: '/settings'),
  ];

  @override
  Widget build(BuildContext context) {
    final isDesktop = Breakpoints.isDesktop(context);
    final isMobile = Breakpoints.isMobile(context);

    if (isDesktop) {
      return Scaffold(
        body: Row(
          children: [
            // Desktop Sidebar
            Container(
              width: 260,
              color: AppColors.primaryNavy,
              child: Column(
                children: [
                  // Branding Header
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(6),
                              decoration: BoxDecoration(
                                color: AppColors.accentAmber,
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: const Icon(Icons.hotel, color: Colors.white, size: 20),
                            ),
                            const SizedBox(width: 10),
                            const Text(
                              'ShivamOS',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 0.5,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 6),
                        const Text(
                          'Hotel New Shivam Inn',
                          style: TextStyle(
                            color: Color(0xFF93C5FD),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const Text(
                          'Motijheel, Muzaffarpur',
                          style: TextStyle(
                            color: Color(0xFF64748B),
                            fontSize: 11,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Divider(color: Color(0xFF1E3A8A), height: 1),
                  // Navigation Items
                  Expanded(
                    child: ListView.builder(
                      itemCount: primaryNavItems.length,
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      itemBuilder: (context, index) {
                        final item = primaryNavItems[index];
                        final isSelected = currentRoute == item.route;
                        return ListTile(
                          dense: true,
                          leading: Icon(
                            item.icon,
                            color: isSelected ? AppColors.accentAmber : Colors.white70,
                            size: 18,
                          ),
                          title: Text(
                            item.label,
                            style: TextStyle(
                              color: isSelected ? Colors.white : Colors.white70,
                              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                              fontSize: 13,
                            ),
                          ),
                          tileColor: isSelected ? const Color(0xFF1E3A8A) : Colors.transparent,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                          contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
                          onTap: () => onNavigate(item.route),
                        );
                      },
                    ),
                  ),
                  // Bottom Footer with Sync Indicator
                  Container(
                    padding: const EdgeInsets.all(12),
                    color: const Color(0xFF091E38),
                    child: Row(
                      children: [
                        const Icon(Icons.circle, color: AppColors.successEmerald, size: 10),
                        const SizedBox(width: 8),
                        const Expanded(
                          child: Text(
                            'Local Offline Ready • Synced',
                            style: TextStyle(color: Colors.white70, fontSize: 11),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // Main Content Area
            Expanded(
              child: Column(
                children: [
                  if (headerAction != null) headerAction!,
                  Expanded(child: child),
                ],
              ),
            ),
          ],
        ),
      );
    }

    // Android Mobile & Tablet Layout
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('ShivamOS', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            const Text('Hotel New Shivam Inn', style: TextStyle(fontSize: 11, color: Color(0xFF93C5FD))),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.sync),
            tooltip: 'Sync Status',
            onPressed: () {},
          ),
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              decoration: const BoxDecoration(color: AppColors.primaryNavy),
              currentAccountPicture: Container(
                decoration: BoxDecoration(
                  color: AppColors.accentAmber,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Icon(Icons.hotel, color: Colors.white, size: 36),
              ),
              accountName: const Text('Hotel New Shivam Inn', style: TextStyle(fontWeight: FontWeight.bold)),
              accountEmail: const Text('Motijheel, Muzaffarpur • 20 Rooms'),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: primaryNavItems.length,
                itemBuilder: (context, index) {
                  final item = primaryNavItems[index];
                  final isSelected = currentRoute == item.route;
                  return ListTile(
                    leading: Icon(item.icon, color: isSelected ? AppColors.primaryNavy : Colors.black87),
                    title: Text(
                      item.label,
                      style: TextStyle(
                        fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                        color: isSelected ? AppColors.primaryNavy : Colors.black87,
                      ),
                    ),
                    selected: isSelected,
                    onTap: () {
                      Navigator.pop(context); // Close drawer
                      onNavigate(item.route);
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
      body: child,
      bottomNavigationBar: isMobile
          ? BottomNavigationBar(
              currentIndex: _getBottomNavIndex(currentRoute),
              type: BottomNavigationBarType.fixed,
              selectedItemColor: AppColors.primaryNavy,
              unselectedItemColor: Colors.black54,
              selectedFontSize: 11,
              unselectedFontSize: 11,
              onTap: (index) {
                switch (index) {
                  case 0:
                    onNavigate('/');
                    break;
                  case 1:
                    onNavigate('/front-desk');
                    break;
                  case 2:
                    onNavigate('/rooms');
                    break;
                  case 3:
                    onNavigate('/billing');
                    break;
                  case 4:
                    onNavigate('/payroll');
                    break;
                }
              },
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.dashboard_outlined), label: 'Dashboard'),
                BottomNavigationBarItem(icon: Icon(Icons.desk_outlined), label: 'Front Desk'),
                BottomNavigationBarItem(icon: Icon(Icons.meeting_room_outlined), label: 'Rooms'),
                BottomNavigationBarItem(icon: Icon(Icons.receipt_long_outlined), label: 'Billing'),
                BottomNavigationBarItem(icon: Icon(Icons.badge_outlined), label: 'Payroll'),
              ],
            )
          : null,
    );
  }

  int _getBottomNavIndex(String route) {
    if (route == '/') return 0;
    if (route == '/front-desk') return 1;
    if (route == '/rooms') return 2;
    if (route == '/billing') return 3;
    if (route.contains('salary') || route == '/payroll') return 4;
    return 0;
  }
}
