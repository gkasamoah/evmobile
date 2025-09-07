import 'package:flutter/material.dart';
import 'widgets/side_menu.dart';

class UsersPage extends StatelessWidget {
  const UsersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("User Management")),
      drawer: const SideMenu(),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.check),
                    label: const Text("Approve")),
                ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.close),
                    label: const Text("Reject")),
                ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.manage_accounts),
                    label: const Text("Assign Role")),
              ],
            ),
            const SizedBox(height: 20),
            Expanded(
              child: Card(
                child: Center(
                  child: Text("Table of Users will appear here",
                      style: TextStyle(color: Colors.grey[600])),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
