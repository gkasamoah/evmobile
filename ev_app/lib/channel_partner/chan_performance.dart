import 'package:flutter/material.dart';

class PerformanceReportPage extends StatelessWidget {
  const PerformanceReportPage({super.key});

  @override
  Widget build(BuildContext context) {
    final reports = [
      {'product': 'AMZ Battery', 'sales': 120},
      {'product': 'AMZ Scooter', 'sales': 100},
      {'product': 'AMZ Bike', 'sales': 80},
    ];

    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Expanded(
                    child: Text("Performance Report",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold))),
                DropdownButton<String>(
                  value: "Daily",
                  items: const [
                    DropdownMenuItem(value: "Daily", child: Text("Daily")),
                    DropdownMenuItem(value: "Weekly", child: Text("Weekly")),
                    DropdownMenuItem(value: "Monthly", child: Text("Monthly")),
                  ],
                  onChanged: (_) {},
                ),
              ],
            ),
            const SizedBox(height: 12),
            DataTable(
              columns: const [
                DataColumn(label: Text("Product")),
                DataColumn(label: Text("Sales")),
              ],
              rows: reports.map((r) {
                return DataRow(cells: [
                  DataCell(Text(r['product'].toString())),
                  DataCell(Text(r['sales'].toString())),
                ]);
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
