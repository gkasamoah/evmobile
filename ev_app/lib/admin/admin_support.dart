import 'package:flutter/material.dart';
import 'widgets/side_menu.dart';

class SupportPage extends StatelessWidget {
  const SupportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Support & Feedback")),
      drawer: const SideMenu(),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Wrap(spacing: 10, children: [
              ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.support),
                  label: const Text("Assign Ticket")),
              ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.feedback),
                  label: const Text("Track Complaints")),
            ]),
            const SizedBox(height: 20),
            Expanded(
                child: Card(
                    child:
                        Center(child: Text("Support & Feedback Placeholder")))),
          ],
        ),
      ),
    );
  }
}
