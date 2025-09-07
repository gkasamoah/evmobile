import 'package:flutter/material.dart';
import 'widgets/side_menu.dart';

class FinancialPage extends StatelessWidget {
  const FinancialPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Financial Dashboard")),
      drawer: const SideMenu(),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Wrap(spacing: 10, children: [
              ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.payment),
                  label: const Text("Accounts Receivable")),
              ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.account_balance),
                  label: const Text("Accounts Payable")),
              ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.download),
                  label: const Text("Export Reports")),
            ]),
            const SizedBox(height: 20),
            Expanded(
                child: Card(
                    child:
                        Center(child: Text("Financial Reports Placeholder")))),
          ],
        ),
      ),
    );
  }
}
