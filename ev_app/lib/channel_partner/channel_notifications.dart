import 'package:flutter/material.dart';

class ChannelNotificationPage extends StatelessWidget {
  const ChannelNotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final notifications = [
      "Order #12345 pending approval",
      "Order #12346 shipped",
      "New EV Bike added to inventory",
      "Monthly sales report available",
    ];

    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Notifications",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 12),
            ...notifications.map((n) => ListTile(
                  leading: const Icon(Icons.notifications),
                  title: Text(n),
                )),
          ],
        ),
      ),
    );
  }
}
