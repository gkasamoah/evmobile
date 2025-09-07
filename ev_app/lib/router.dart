import 'package:go_router/go_router.dart';
import './screens/login_screen.dart';
import './screens/register_screen.dart';
import './screens/splash_screen.dart';
//import './screens/select_ev.dart';
import './screens/select_partner.dart';
import './screens/select_role.dart';

// Channel Partner
import 'channel_partner/chan_evinventory.dart';
import 'channel_partner/chan_orders.dart';
import 'channel_partner/chan_payment_tracking.dart';
import 'channel_partner/chan_performance.dart';
import 'channel_partner/channel_notifications.dart';

// Admin
import 'admin/admin_dashboard.dart';
import 'admin/users.dart';
import 'admin/admin_inventory.dart';
import 'admin/admin_pricing.dart';
import 'admin/admin_partners.dart';
import 'admin/admin_orders.dart';
import 'admin/chargingpage.dart';
import 'admin/admin_support.dart';
import 'admin/financial.dart';
import 'admin/admin_reports.dart';
import 'admin/admin_notifications.dart';

final GoRouter router = GoRouter(
  initialLocation: "/",
  routes: [
    // Public routes
    GoRoute(path: "/", builder: (context, state) => const SplashImage()),
    GoRoute(path: "/login", builder: (context, state) => const LoginScreen()),
    GoRoute(path: "/signup", builder: (context, state) => const SignUpScreen()),
    GoRoute(
        path: '/user_role',
        builder: (context, state) => const ChooseRolePage()),
    GoRoute(
        path: '/partner_role',
        builder: (context, state) => const ChoosePartnerRolePage()),

    // Channel Partner routes
    GoRoute(
        path: "/chan_inventory",
        builder: (context, state) => const EVInventoryPage()),
    GoRoute(
        path: "/chan_orders",
        builder: (context, state) => const OrderManagementPage()),
    GoRoute(
        path: "/chan_payment",
        builder: (context, state) => const PaymentTrackingPage()),
    GoRoute(
        path: "/chan_performance",
        builder: (context, state) => const PerformanceReportPage()),
    GoRoute(
        path: "/chan_notifications",
        builder: (context, state) => const ChannelNotificationPage()),

    // Admin routes
    GoRoute(
        path: "/admin/dashboard",
        builder: (context, state) => const DashboardPage()),
    GoRoute(
        path: "/admin/users", builder: (context, state) => const UsersPage()),
    GoRoute(
        path: "/admin/inventory",
        builder: (context, state) => const InventoryPage()),
    GoRoute(
        path: "/admin/pricing",
        builder: (context, state) => const PricingPage()),
    GoRoute(
        path: "/admin/orders", builder: (context, state) => const OrdersPage()),
    GoRoute(
        path: "/admin/charging",
        builder: (context, state) => const ChargingPage()),
    GoRoute(
        path: "/admin/reports",
        builder: (context, state) => const ReportsPage()),
    GoRoute(
        path: "/admin/partners",
        builder: (context, state) => const PartnersPage()),
    GoRoute(
        path: "/admin/support",
        builder: (context, state) => const SupportPage()),
    GoRoute(
        path: "/admin/notifications",
        builder: (context, state) => const NotificationsPage()),
    GoRoute(
        path: "/admin/financials",
        builder: (context, state) => const FinancialPage()),
  ],
);
