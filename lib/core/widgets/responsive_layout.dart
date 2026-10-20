import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../constants/app_colors.dart';

class Breakpoints {
  static const double mobileMax = 768.0;
  static const double tabletMax = 1100.0;

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
  final String category;

  const NavigationItem({
    required this.label,
    required this.icon,
    required this.route,
    required this.category,
    this.badge,
  });
}

class ResponsiveShell extends StatefulWidget {
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

  @override
  State<ResponsiveShell> createState() => _ResponsiveShellState();
}

class _ResponsiveShellState extends State<ResponsiveShell> {
  bool _isSidebarCollapsed = false;

  static const List<NavigationItem> navItems = [
    // Main Section
    NavigationItem(label: 'Dashboard', icon: Icons.grid_view_rounded, route: '/', category: 'OPERATIONS'),
    NavigationItem(label: 'Front Desk', icon: Icons.desk_rounded, route: '/front-desk', category: 'OPERATIONS'),
    NavigationItem(label: 'Room Rack (20)', icon: Icons.meeting_room_rounded, route: '/rooms', category: 'OPERATIONS'),
    NavigationItem(label: 'Guests Directory', icon: Icons.people_alt_rounded, route: '/guests', category: 'OPERATIONS'),
    NavigationItem(label: 'Reservations', icon: Icons.event_available_rounded, route: '/reservations', category: 'OPERATIONS'),
    NavigationItem(label: 'Online Bookings', icon: Icons.cloud_sync_rounded, route: '/online-bookings', category: 'OPERATIONS'),

    // Financials Section
    NavigationItem(label: 'Billing & Invoices', icon: Icons.receipt_long_rounded, route: '/billing', category: 'CASH & FINANCE'),
    NavigationItem(label: 'Staff & Payroll', icon: Icons.badge_rounded, route: '/payroll', category: 'CASH & FINANCE'),
    NavigationItem(label: 'Pending Salaries', icon: Icons.pending_actions_rounded, route: '/pending-salaries', category: 'CASH & FINANCE'),
    NavigationItem(label: 'Salary Advances', icon: Icons.payments_rounded, route: '/salary-advances', category: 'CASH & FINANCE'),
    NavigationItem(label: 'Hotel Expenses', icon: Icons.account_balance_wallet_rounded, route: '/expenses', category: 'CASH & FINANCE'),

    // Property Care Section
    NavigationItem(label: 'Housekeeping', icon: Icons.cleaning_services_rounded, route: '/housekeeping', category: 'PROPERTY CARE'),
    NavigationItem(label: 'Maintenance', icon: Icons.handyman_rounded, route: '/maintenance', category: 'PROPERTY CARE'),
    NavigationItem(label: 'Reports & Audits', icon: Icons.analytics_rounded, route: '/reports', category: 'PROPERTY CARE'),
    NavigationItem(label: 'Hotel Settings', icon: Icons.tune_rounded, route: '/settings', category: 'PROPERTY CARE'),
  ];

  String _getPageTitle(String route) {
    final match = navItems.where((i) => i.route == route).firstOrNull;
    if (match != null) return match.label;
    if (route == '/') return 'Dashboard Overview';
    return 'Hotel Operations';
  }

  @override
  Widget build(BuildContext context) {
    final isDesktop = Breakpoints.isDesktop(context);
    final isMobile = Breakpoints.isMobile(context);

    if (isDesktop) {
      return Scaffold(
        backgroundColor: AppColors.backgroundLight,
        body: Row(
          children: [
            // Collapsible Desktop Sidebar
            _buildDesktopSidebar(),

            // Main Content Layout with Top Navigation Header
            Expanded(
              child: Column(
                children: [
                  _buildDesktopHeader(),
                  Expanded(
                    child: Container(
                      color: AppColors.backgroundLight,
                      child: widget.child,
                    ),
                  ),
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
        backgroundColor: AppColors.midnightNavy,
        elevation: 0,
        title: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [AppColors.electricBlue, Color(0xFF1D4ED8)],
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Icon(Icons.hotel_rounded, color: Colors.white, size: 18),
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'ShivamOS',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: Colors.white, letterSpacing: 0.5),
                ),
                Text(
                  _getPageTitle(widget.currentRoute),
                  style: const TextStyle(fontSize: 11, color: Color(0xFF93C5FD), fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ],
        ),
        actions: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              color: AppColors.surfaceNavy,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: AppColors.borderNavy),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 8,
                  height: 8,
                  decoration: const BoxDecoration(
                    color: AppColors.availableGreen,
                    shape: BoxShape.circle,
                  ),
                ),
                const SizedBox(width: 6),
                const Text('SQLite Active', style: TextStyle(color: Colors.white70, fontSize: 10, fontWeight: FontWeight.w500)),
              ],
            ),
          ),
        ],
      ),
      drawer: _buildMobileDrawer(context),
      body: widget.child,
      bottomNavigationBar: isMobile ? _buildMobileBottomBar() : null,
    );
  }

  // Desktop Sidebar
  Widget _buildDesktopSidebar() {
    final sidebarWidth = _isSidebarCollapsed ? 76.0 : 260.0;

    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      width: sidebarWidth,
      decoration: const BoxDecoration(
        color: AppColors.primaryNavy,
        boxShadow: [
          BoxShadow(
            color: Color(0x1F000000),
            blurRadius: 10,
            offset: Offset(2, 0),
          ),
        ],
      ),
      child: Column(
        children: [
          // Sidebar Brand Header
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: _isSidebarCollapsed ? 12 : 20,
              vertical: 20,
            ),
            decoration: const BoxDecoration(
              border: Border(bottom: BorderSide(color: Color(0xFF162544), width: 1)),
            ),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [AppColors.electricBlue, Color(0xFF1E40AF)],
                    ),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0x332563EB),
                        blurRadius: 10,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                  child: const Icon(Icons.hotel_rounded, color: Colors.white, size: 22),
                ),
                if (!_isSidebarCollapsed) ...[
                  const SizedBox(width: 12),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'ShivamOS',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.w800,
                            letterSpacing: 0.8,
                          ),
                        ),
                        Text(
                          'Hotel New Shivam Inn',
                          style: TextStyle(
                            color: Color(0xFF60A5FA),
                            fontSize: 11,
                            fontWeight: FontWeight.w600,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          'Motijheel, Muzaffarpur',
                          style: TextStyle(
                            color: Color(0xFF94A3B8),
                            fontSize: 10,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                ],
              ],
            ),
          ),

          // Scrollable Navigation List with Group Headers
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
              children: [
                ..._buildNavGroup('OPERATIONS', navItems.where((i) => i.category == 'OPERATIONS').toList()),
                const SizedBox(height: 12),
                ..._buildNavGroup('CASH & FINANCE', navItems.where((i) => i.category == 'CASH & FINANCE').toList()),
                const SizedBox(height: 12),
                ..._buildNavGroup('PROPERTY CARE', navItems.where((i) => i.category == 'PROPERTY CARE').toList()),
              ],
            ),
          ),

          // Sidebar Footer with Collapse Toggle and Sync Status
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            decoration: const BoxDecoration(
              color: Color(0xFF070D1F),
              border: Border(top: BorderSide(color: Color(0xFF162544), width: 1)),
            ),
            child: Row(
              children: [
                Container(
                  width: 8,
                  height: 8,
                  decoration: BoxDecoration(
                    color: AppColors.availableGreen,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.availableGreen.withOpacity(0.6),
                        blurRadius: 6,
                        spreadRadius: 1,
                      ),
                    ],
                  ),
                ),
                if (!_isSidebarCollapsed) ...[
                  const SizedBox(width: 10),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Offline Ready • SQLite',
                          style: TextStyle(color: Colors.white, fontSize: 11, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          'Local sync persistent',
                          style: TextStyle(color: Color(0xFF64748B), fontSize: 9),
                        ),
                      ],
                    ),
                  ),
                ],
                IconButton(
                  icon: Icon(
                    _isSidebarCollapsed ? Icons.chevron_right_rounded : Icons.chevron_left_rounded,
                    color: Colors.white54,
                    size: 18,
                  ),
                  tooltip: _isSidebarCollapsed ? 'Expand Sidebar' : 'Collapse Sidebar',
                  onPressed: () => setState(() => _isSidebarCollapsed = !_isSidebarCollapsed),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _buildNavGroup(String categoryTitle, List<NavigationItem> items) {
    return [
      if (!_isSidebarCollapsed)
        Padding(
          padding: const EdgeInsets.only(left: 14, top: 8, bottom: 6),
          child: Text(
            categoryTitle,
            style: const TextStyle(
              color: Color(0xFF475569),
              fontSize: 10,
              fontWeight: FontWeight.w700,
              letterSpacing: 1.2,
            ),
          ),
        ),
      ...items.map((item) {
        final isSelected = widget.currentRoute == item.route;
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 2),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              borderRadius: BorderRadius.circular(10),
              onTap: () => widget.onNavigate(item.route),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 150),
                padding: EdgeInsets.symmetric(
                  horizontal: _isSidebarCollapsed ? 14 : 14,
                  vertical: 10,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: isSelected
                      ? const LinearGradient(
                          colors: [AppColors.electricBlue, Color(0xFF1D4ED8)],
                        )
                      : null,
                  boxShadow: isSelected
                      ? [
                          BoxShadow(
                            color: AppColors.electricBlue.withOpacity(0.35),
                            blurRadius: 10,
                            offset: const Offset(0, 3),
                          ),
                        ]
                      : null,
                ),
                child: Row(
                  children: [
                    Icon(
                      item.icon,
                      size: 20,
                      color: isSelected ? Colors.white : const Color(0xFF94A3B8),
                    ),
                    if (!_isSidebarCollapsed) ...[
                      const SizedBox(width: 12),
                      Expanded(
                        child: Text(
                          item.label,
                          style: TextStyle(
                            color: isSelected ? Colors.white : const Color(0xFFCBD5E1),
                            fontSize: 13,
                            fontWeight: isSelected ? FontWeight.w700 : FontWeight.w500,
                            letterSpacing: 0.1,
                          ),
                        ),
                      ),
                      if (item.badge != null)
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                          decoration: BoxDecoration(
                            color: isSelected ? Colors.white24 : AppColors.electricBlue.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Text(
                            item.badge!,
                            style: TextStyle(
                              color: isSelected ? Colors.white : AppColors.electricBlueLight,
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                    ],
                  ],
                ),
              ),
            ),
          ),
        );
      }),
    ];
  }

  // Desktop Header
  Widget _buildDesktopHeader() {
    final now = DateTime.now();
    final dateStr = DateFormat('EEE, dd MMM yyyy • hh:mm a').format(now);

    return Container(
      height: 68,
      padding: const EdgeInsets.symmetric(horizontal: 24),
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(bottom: BorderSide(color: AppColors.borderLight, width: 1)),
      ),
      child: Row(
        children: [
          // Current Page Title & Breadcrumb
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                _getPageTitle(widget.currentRoute),
                style: const TextStyle(
                  color: AppColors.primaryNavy,
                  fontSize: 18,
                  fontWeight: FontWeight.w800,
                  letterSpacing: -0.2,
                ),
              ),
              const Text(
                'Hotel New Shivam Inn • Management Portal',
                style: TextStyle(color: AppColors.textSecondary, fontSize: 11),
              ),
            ],
          ),

          const SizedBox(width: 32),

          // Search Bar
          Expanded(
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                color: AppColors.backgroundSubtle,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: AppColors.borderLight),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: Row(
                children: [
                  const Icon(Icons.search_rounded, size: 18, color: AppColors.textMuted),
                  const SizedBox(width: 10),
                  const Expanded(
                    child: Text(
                      'Search room number, guest name, invoice, or reservation...',
                      style: TextStyle(color: AppColors.textMuted, fontSize: 13),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(color: AppColors.borderLight),
                    ),
                    child: const Text('Ctrl + K', style: TextStyle(color: AppColors.textSecondary, fontSize: 10, fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(width: 24),

          // Live Hotel Time
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: AppColors.backgroundSubtle,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              children: [
                const Icon(Icons.schedule_rounded, size: 15, color: AppColors.electricBlue),
                const SizedBox(width: 6),
                Text(
                  dateStr,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: AppColors.textPrimary,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(width: 16),

          // Quick Action Button
          ElevatedButton.icon(
            icon: const Icon(Icons.add_rounded, size: 18),
            label: const Text('New Check-In'),
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.electricBlue,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            ),
            onPressed: () => widget.onNavigate('/front-desk'),
          ),

          const SizedBox(width: 16),

          // Staff Profile Pill
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(24),
              border: Border.all(color: AppColors.borderLight),
            ),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 14,
                  backgroundColor: AppColors.primaryNavy,
                  child: const Text('A', style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold)),
                ),
                const SizedBox(width: 8),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Receptionist / Admin', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: AppColors.textPrimary)),
                    Text('Duty Staff', style: TextStyle(fontSize: 10, color: AppColors.textSecondary)),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Mobile Drawer
  Widget _buildMobileDrawer(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.primaryNavy,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(20, 50, 20, 20),
            decoration: const BoxDecoration(
              color: Color(0xFF070D1F),
              border: Border(bottom: BorderSide(color: Color(0xFF162544))),
            ),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [AppColors.electricBlue, Color(0xFF1D4ED8)],
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Icon(Icons.hotel_rounded, color: Colors.white, size: 28),
                ),
                const SizedBox(width: 14),
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'ShivamOS',
                        style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w800, letterSpacing: 0.8),
                      ),
                      Text(
                        'Hotel New Shivam Inn',
                        style: TextStyle(color: Color(0xFF60A5FA), fontSize: 12, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        'Motijheel, Muzaffarpur • 20 Rooms',
                        style: TextStyle(color: Color(0xFF94A3B8), fontSize: 11),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              children: navItems.map((item) {
                final isSelected = widget.currentRoute == item.route;
                return ListTile(
                  dense: true,
                  leading: Icon(
                    item.icon,
                    color: isSelected ? AppColors.electricBlueLight : const Color(0xFF94A3B8),
                  ),
                  title: Text(
                    item.label,
                    style: TextStyle(
                      color: isSelected ? Colors.white : const Color(0xFFCBD5E1),
                      fontWeight: isSelected ? FontWeight.bold : FontWeight.w500,
                    ),
                  ),
                  tileColor: isSelected ? const Color(0xFF162544) : Colors.transparent,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                  onTap: () {
                    Navigator.pop(context);
                    widget.onNavigate(item.route);
                  },
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }

  // Mobile Bottom Navigation Bar
  Widget _buildMobileBottomBar() {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(top: BorderSide(color: AppColors.borderLight, width: 1)),
        boxShadow: [
          BoxShadow(
            color: Color(0x0F000000),
            blurRadius: 10,
            offset: Offset(0, -2),
          ),
        ],
      ),
      child: BottomNavigationBar(
        currentIndex: _getBottomNavIndex(widget.currentRoute),
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: AppColors.electricBlue,
        unselectedItemColor: const Color(0xFF64748B),
        selectedFontSize: 11,
        unselectedFontSize: 11,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
        elevation: 0,
        onTap: (index) {
          switch (index) {
            case 0:
              widget.onNavigate('/');
              break;
            case 1:
              widget.onNavigate('/front-desk');
              break;
            case 2:
              widget.onNavigate('/rooms');
              break;
            case 3:
              widget.onNavigate('/billing');
              break;
            case 4:
              widget.onNavigate('/payroll');
              break;
          }
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.grid_view_rounded), label: 'Dashboard'),
          BottomNavigationBarItem(icon: Icon(Icons.desk_rounded), label: 'Front Desk'),
          BottomNavigationBarItem(icon: Icon(Icons.meeting_room_rounded), label: 'Rooms'),
          BottomNavigationBarItem(icon: Icon(Icons.receipt_long_rounded), label: 'Billing'),
          BottomNavigationBarItem(icon: Icon(Icons.badge_rounded), label: 'Payroll'),
        ],
      ),
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
