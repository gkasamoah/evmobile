import 'package:flutter/material.dart';
import 'widgets/side_menu.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Admin Dashboard")),
      drawer: const SideMenu(),
      body: GridView.count(
        padding: const EdgeInsets.all(16),
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        children: const [
          _DashboardCard(title: "Users", icon: Icons.people),
          _DashboardCard(title: "Inventory", icon: Icons.electric_car),
          _DashboardCard(title: "Pricing", icon: Icons.price_change),
          _DashboardCard(title: "Orders", icon: Icons.shopping_cart),
          _DashboardCard(title: "Charging Slots", icon: Icons.ev_station),
          _DashboardCard(title: "Reports", icon: Icons.bar_chart),
          _DashboardCard(title: "Partners", icon: Icons.handshake),
          _DashboardCard(title: "Support", icon: Icons.support_agent),
          _DashboardCard(title: "Notifications", icon: Icons.notifications),
          _DashboardCard(title: "Financials", icon: Icons.attach_money),
        ],
      ),
    );
  }
}

class _DashboardCard extends StatelessWidget {
  final String title;
  final IconData icon;

  const _DashboardCard({required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 40, color: const Color.fromARGB(255, 6, 104, 11)),
            const SizedBox(height: 10),
            Text(title,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
