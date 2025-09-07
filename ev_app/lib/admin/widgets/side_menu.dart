import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SideMenu extends StatelessWidget {
  final bool isDesktop;
  const SideMenu({super.key, this.isDesktop = false});

  @override
  Widget build(BuildContext context) {
    Widget menuContent = ListView(
      children: [
        Container(
          color: Colors.indigo,
          padding: const EdgeInsets.all(16),
          child: const Text("EV Admin",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold)),
        ),
        _menuItem(context, "Dashboard", "/dashboard", Icons.dashboard),
        _menuItem(context, "User Management", "/dashboard/users", Icons.people),
        _menuItem(context, "EV Inventory", "/dashboard/inventory",
            Icons.electric_car),
        _menuItem(context, "Pricing", "/dashboard/pricing", Icons.price_change),
        _menuItem(context, "Orders", "/dashboard/orders", Icons.shopping_cart),
        _menuItem(
            context, "Charging Slots", "/dashboard/charging", Icons.ev_station),
        _menuItem(context, "Reports", "/dashboard/reports", Icons.bar_chart),
        _menuItem(context, "Partners", "/dashboard/partners", Icons.handshake),
        _menuItem(
            context, "Support", "/dashboard/support", Icons.support_agent),
        _menuItem(context, "Notifications", "/dashboard/notifications",
            Icons.notifications),
        _menuItem(
            context, "Financials", "/dashboard/financials", Icons.attach_money),
      ],
    );

    if (isDesktop) {
      return Container(
        width: 240,
        color: Colors.grey[200],
        child: menuContent,
      );
    } else {
      return Drawer(child: menuContent);
    }
  }

  ListTile _menuItem(
      BuildContext context, String title, String route, IconData icon) {
    return ListTile(
      leading: Icon(icon, color: Colors.indigo),
      title: Text(title),
      onTap: () => context.go(route),
    );
  }
}
