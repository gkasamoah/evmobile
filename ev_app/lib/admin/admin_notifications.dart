import 'package:flutter/material.dart';
import 'widgets/side_menu.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Notifications")),
      drawer: const SideMenu(),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Wrap(spacing: 10, children: [
              ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.notifications_active),
                  label: const Text("Send Push")),
              ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.email),
                  label: const Text("Send Email")),
            ]),
            const SizedBox(height: 20),
            Expanded(
                child: Card(
                    child: Center(child: Text("Notifications Placeholder")))),
          ],
        ),
      ),
    );
  }
}
