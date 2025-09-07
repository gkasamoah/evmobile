import 'package:flutter/material.dart';
import 'widgets/side_menu.dart';

class PartnersPage extends StatelessWidget {
  const PartnersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Partner Performance")),
      drawer: const SideMenu(),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Wrap(spacing: 10, children: [
              ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.star),
                  label: const Text("Top Partners")),
              ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.bar_chart),
                  label: const Text("Performance Metrics")),
            ]),
            const SizedBox(height: 20),
            Expanded(
                child: Card(
                    child: Center(
                        child: Text("Partner Performance Placeholder")))),
          ],
        ),
      ),
    );
  }
}
