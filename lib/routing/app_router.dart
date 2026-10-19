import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../core/widgets/responsive_layout.dart';
import '../features/dashboard/dashboard_screen.dart';
import '../features/front_desk/front_desk_screen.dart';
import '../features/rooms/room_inventory_screen.dart';
import '../features/guests/guests_screen.dart';
import '../features/reservations/reservations_screen.dart';
import '../features/online_bookings/online_bookings_screen.dart';
import '../features/billing/billing_screen.dart';
import '../features/payroll/payroll_screen.dart';
import '../features/payroll/pending_salaries_screen.dart';
import '../features/payroll/salary_advances_screen.dart';
import '../features/housekeeping/housekeeping_screen.dart';
import '../features/maintenance/maintenance_screen.dart';
import '../features/expenses/expenses_screen.dart';
import '../features/reports/reports_screen.dart';
import '../features/settings/settings_screen.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> _shellNavigatorKey = GlobalKey<NavigatorState>();

final appRouter = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: '/',
  routes: [
    ShellRoute(
      navigatorKey: _shellNavigatorKey,
      builder: (context, state, child) {
        return ResponsiveShell(
          currentRoute: state.uri.path,
          onNavigate: (route) => context.go(route),
          child: child,
        );
      },
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => DashboardScreen(
            onNavigate: (route) => context.go(route),
          ),
        ),
        GoRoute(
          path: '/front-desk',
          builder: (context, state) => const FrontDeskScreen(),
        ),
        GoRoute(
          path: '/rooms',
          builder: (context, state) => const RoomInventoryScreen(),
        ),
        GoRoute(
          path: '/guests',
          builder: (context, state) => const GuestsScreen(),
        ),
        GoRoute(
          path: '/reservations',
          builder: (context, state) => const ReservationsScreen(),
        ),
        GoRoute(
          path: '/online-bookings',
          builder: (context, state) => const OnlineBookingsScreen(),
        ),
        GoRoute(
          path: '/billing',
          builder: (context, state) => const BillingScreen(),
        ),
        GoRoute(
          path: '/payroll',
          builder: (context, state) => const PayrollScreen(),
        ),
        GoRoute(
          path: '/pending-salaries',
          builder: (context, state) => const PendingSalariesScreen(),
        ),
        GoRoute(
          path: '/salary-advances',
          builder: (context, state) => const SalaryAdvancesScreen(),
        ),
        GoRoute(
          path: '/housekeeping',
          builder: (context, state) => const HousekeepingScreen(),
        ),
        GoRoute(
          path: '/maintenance',
          builder: (context, state) => const MaintenanceScreen(),
        ),
        GoRoute(
          path: '/expenses',
          builder: (context, state) => const ExpensesScreen(),
        ),
        GoRoute(
          path: '/reports',
          builder: (context, state) => const ReportsScreen(),
        ),
        GoRoute(
          path: '/settings',
          builder: (context, state) => const SettingsScreen(),
        ),
      ],
    ),
  ],
);
