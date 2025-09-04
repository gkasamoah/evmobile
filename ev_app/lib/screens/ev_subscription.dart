import 'package:flutter/material.dart';

class EvSubscriptionScreen extends StatefulWidget {
  const EvSubscriptionScreen({super.key});

  @override
  State<EvSubscriptionScreen> createState() => _EvSubscriptionScreenState();
}

class _EvSubscriptionScreenState extends State<EvSubscriptionScreen> {
  bool batterySwap = true; // default selected
  bool accessoryKit = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ev Subscription"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Title
                const Center(
                  child: Text(
                    "Ev Subscription",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 8),

                // Subtitle
                const Text(
                  "Opt into battery swap or accessory supply kit (monthly, quarterly and yearly)",
                  style: TextStyle(fontSize: 14),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),

                // Battery Swap Option
                Card(
                  elevation: 3,
                  child: ListTile(
                    leading: const Icon(Icons.battery_charging_full,
                        color: Colors.green, size: 40),
                    title: const Text(
                      "Battery swap",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    subtitle:
                        const Text("Swap your old battery for a new battery"),
                    trailing: Checkbox(
                      value: batterySwap,
                      onChanged: (val) {
                        setState(() {
                          batterySwap = val ?? false;
                        });
                      },
                      activeColor: Colors.green,
                    ),
                  ),
                ),
                const SizedBox(height: 10),

                // Accessory Kit Option
                Card(
                  elevation: 3,
                  child: ListTile(
                    leading: const Icon(Icons.settings,
                        color: Colors.green, size: 40),
                    title: const Text(
                      "Accessory kit",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    subtitle: const Text("Get an accessory kit for your EV"),
                    trailing: Checkbox(
                      value: accessoryKit,
                      onChanged: (val) {
                        setState(() {
                          accessoryKit = val ?? false;
                        });
                      },
                      activeColor: Colors.green,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
