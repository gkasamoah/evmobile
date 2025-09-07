import 'package:flutter/material.dart';
import 'widgets/side_menu.dart';

class PricingPage extends StatelessWidget {
  const PricingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Pricing Management")),
      drawer: const SideMenu(),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Wrap(spacing: 10, children: [
              ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.price_change),
                  label: const Text("Update Pricing")),
              ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.download),
                  label: const Text("Export CSV")),
            ]),
            const SizedBox(height: 20),
            Expanded(
                child: Card(
                    child: Center(child: Text("Pricing Data Placeholder")))),
          ],
        ),
      ),
    );
  }
}
