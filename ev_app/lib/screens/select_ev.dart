import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class VehicleSelectionPage extends StatelessWidget {
  const VehicleSelectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text("Select Vehicle Type"),
        elevation: 0,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Choose your vehicle",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                children: [
                  _vehicleCard(context, "Two Wheeler", Icons.pedal_bike, "two",
                      Colors.blue),
                  _vehicleCard(context, "Three Wheeler",
                      Icons.electric_rickshaw, "three", Colors.green),
                  _vehicleCard(context, "Four Wheeler", Icons.directions_car,
                      "four", Colors.orange),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _vehicleCard(BuildContext context, String title, IconData icon,
      String type, Color color) {
    return InkWell(
      borderRadius: BorderRadius.circular(16),
      onTap: () {
        context.go('/vehicle/$type');
      },
      child: Ink(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [color.withOpacity(0.8), color],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: color.withOpacity(0.3),
              blurRadius: 8,
              offset: const Offset(2, 4),
            )
          ],
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(icon, size: 60, color: Colors.white),
              const SizedBox(height: 12),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
