import 'package:flutter/material.dart';
import 'widgets/side_menu.dart';

class OrdersPage extends StatelessWidget {
  const OrdersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Orders & Bookings")),
      drawer: const SideMenu(),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Wrap(spacing: 10, children: [
              ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.filter_list),
                  label: const Text("Filter Orders")),
              ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.refresh),
                  label: const Text("Refresh")),
            ]),
            const SizedBox(height: 20),
            Expanded(
                child: Card(
                    child: Center(child: Text("Orders Table Placeholder")))),
          ],
        ),
      ),
    );
  }
}
