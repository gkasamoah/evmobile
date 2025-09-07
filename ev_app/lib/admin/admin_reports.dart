import 'package:flutter/material.dart';
import 'widgets/side_menu.dart';

class ReportsPage extends StatelessWidget {
  const ReportsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Revenue & Reports")),
      drawer: const SideMenu(),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Wrap(spacing: 10, children: [
              ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.insert_chart),
                  label: const Text("Generate Report")),
              ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.calendar_today),
                  label: const Text("Filter by Date")),
            ]),
            const SizedBox(height: 20),
            const Expanded(
                child: Card(
                    child: Center(child: const Text("Reports Placeholder")))),
          ],
        ),
      ),
    );
  }
}
