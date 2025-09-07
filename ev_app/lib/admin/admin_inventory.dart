import 'package:flutter/material.dart';
import 'widgets/side_menu.dart';

class InventoryPage extends StatelessWidget {
  const InventoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("EV Listings & Inventory")),
      drawer: const SideMenu(),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Wrap(spacing: 10, children: [
              ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.add),
                  label: const Text("Add EV")),
              ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.edit),
                  label: const Text("Update EV")),
              ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.delete),
                  label: const Text("Remove EV")),
            ]),
            const SizedBox(height: 20),
            Expanded(
                child: Card(
                    child: Center(child: Text("Inventory Table Placeholder")))),
          ],
        ),
      ),
    );
  }
}
