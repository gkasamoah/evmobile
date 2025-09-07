import 'package:flutter/material.dart';
import 'widgets/side_menu.dart';

class ChargingPage extends StatelessWidget {
  const ChargingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Charging Slot Management")),
      drawer: const SideMenu(),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Wrap(spacing: 10, children: [
              ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.ev_station),
                  label: const Text("View Slots")),
              ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.update),
                  label: const Text("Update Availability")),
            ]),
            const SizedBox(height: 20),
            Expanded(
                child: Card(
                    child: Center(child: Text("Charging Slots Placeholder")))),
          ],
        ),
      ),
    );
  }
}
