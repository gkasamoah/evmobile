import 'package:flutter/material.dart';

class PaymentTrackingPage extends StatelessWidget {
  const PaymentTrackingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final payments = [
      {'item': 'AMZ Battery', 'earning': '\$100'},
      {'item': 'AMZ Scooter', 'earning': '\$500'},
      {'item': 'Order #12345', 'earning': '\$200'},
    ];

    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Payment Tracking",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 12),
            DataTable(
              columns: const [
                DataColumn(label: Text("Item/Order")),
                DataColumn(label: Text("Earnings")),
                DataColumn(label: Text("Download")),
              ],
              rows: payments.map((pay) {
                return DataRow(cells: [
                  DataCell(Text(pay['item'].toString())),
                  DataCell(Text(pay['earning'].toString())),
                  const DataCell(
                      Text("Download", style: TextStyle(color: Colors.blue))),
                ]);
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
