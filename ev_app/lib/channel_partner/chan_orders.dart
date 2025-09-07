import 'package:flutter/material.dart';

class OrderManagementPage extends StatelessWidget {
  const OrderManagementPage({super.key});

  @override
  Widget build(BuildContext context) {
    final orders = [
      {
        'id': '#12345',
        'customer': 'Taylor White',
        'status': 'Pending',
        'total': '\$200'
      },
      {
        'id': '#12346',
        'customer': 'Logan Smith',
        'status': 'Shipped',
        'total': '\$450'
      },
      {
        'id': '#12347',
        'customer': 'Preston Lee',
        'status': 'Delivered',
        'total': '\$150'
      },
      {
        'id': '#12348',
        'customer': 'Evelyn Ciark',
        'status': 'Pending',
        'total': '\$320'
      },
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
                    child: Text("Order Management",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold))),
                DropdownButton<String>(
                  value: "Status",
                  items: const [
                    DropdownMenuItem(value: "Status", child: Text("Status")),
                    DropdownMenuItem(value: "Pending", child: Text("Pending")),
                    DropdownMenuItem(value: "Shipped", child: Text("Shipped")),
                    DropdownMenuItem(
                        value: "Delivered", child: Text("Delivered")),
                  ],
                  onChanged: (_) {},
                ),
                const SizedBox(width: 8),
                ElevatedButton(onPressed: () {}, child: const Text("Search")),
              ],
            ),
            const SizedBox(height: 12),
            DataTable(
              columns: const [
                DataColumn(label: Text("Order ID")),
                DataColumn(label: Text("Customer")),
                DataColumn(label: Text("Status")),
                DataColumn(label: Text("Total")),
              ],
              rows: orders.map((order) {
                return DataRow(cells: [
                  DataCell(Text(order['id'].toString())),
                  DataCell(Text(order['customer'].toString())),
                  DataCell(Text(order['status'].toString())),
                  DataCell(Text(order['total'].toString())),
                ]);
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
