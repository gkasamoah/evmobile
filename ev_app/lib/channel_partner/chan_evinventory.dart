import 'package:flutter/material.dart';

class EVInventoryPage extends StatelessWidget {
  const EVInventoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final items = [
      {'name': 'AMZ Battery', 'type': 'Battery', 'stock': 50, 'price': '\$100'},
      {
        'name': 'AMZ Scooter',
        'type': 'Scooter',
        'stock': 100,
        'price': '\$500'
      },
      {'name': 'AMZ Bike', 'type': 'Bike', 'stock': 200, 'price': '\$250'},
      {
        'name': 'AMZ Accessory',
        'type': 'Accessory',
        'stock': 150,
        'price': '\$50'
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
                    child: Text("EV Items Inventory",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold))),
                ElevatedButton(onPressed: () {}, child: const Text("Add Item")),
              ],
            ),
            const SizedBox(height: 12),
            DataTable(
              columns: const [
                DataColumn(label: Text("Name")),
                DataColumn(label: Text("Type")),
                DataColumn(label: Text("Stock")),
                DataColumn(label: Text("Price")),
              ],
              rows: items.map((item) {
                return DataRow(cells: [
                  DataCell(Text(item['name'].toString())),
                  DataCell(Text(item['type'].toString())),
                  DataCell(Text(item['stock'].toString())),
                  DataCell(Text(item['price'].toString())),
                ]);
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
