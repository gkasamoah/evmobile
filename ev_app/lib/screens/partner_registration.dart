import 'package:flutter/material.dart';

class PartnerRegisterScreen extends StatefulWidget {
  const PartnerRegisterScreen({super.key});

  @override
  State<PartnerRegisterScreen> createState() => _PartnerRegisterScreenState();
}

class _PartnerRegisterScreenState extends State<PartnerRegisterScreen> {
  final _formKey = GlobalKey<FormState>();

  String? selectedBusinessType;

  // Controllers (optional, if you want to fetch values later)
  final nameController = TextEditingController();
  final businessController = TextEditingController();
  final emailController = TextEditingController();
  final cityController = TextEditingController();
  final pincodeController = TextEditingController();
  final websiteController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Join Our EV Ecosystem"),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                "Partner with Us Today",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
              const SizedBox(height: 20),

              // Full Name
              TextFormField(
                controller: nameController,
                decoration: const InputDecoration(
                  labelText: "Full Name",
                  border: OutlineInputBorder(),
                ),
                validator: (value) => value == null || value.trim().isEmpty
                    ? "Enter your full name"
                    : null,
              ),
              const SizedBox(height: 15),

              // Business Name
              TextFormField(
                controller: businessController,
                decoration: const InputDecoration(
                  labelText: "Business Name",
                  border: OutlineInputBorder(),
                ),
                validator: (value) => value == null || value.trim().isEmpty
                    ? "Enter your business name"
                    : null,
              ),
              const SizedBox(height: 15),

              // Email
              TextFormField(
                controller: emailController,
                decoration: const InputDecoration(
                  labelText: "Email Address",
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return "Enter your email";
                  }
                  final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
                  if (!emailRegex.hasMatch(value)) {
                    return "Enter a valid email";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 15),

              // Business Type (Dropdown)
              DropdownButtonFormField<String>(
                decoration: const InputDecoration(
                  labelText: "Business Type",
                  border: OutlineInputBorder(),
                ),
                value: selectedBusinessType,
                items: const [
                  DropdownMenuItem(
                      value: "EV Charging Station",
                      child: Text("EV Charging Station")),
                  DropdownMenuItem(
                      value: "Battery Swap Station",
                      child: Text("Battery Swap Station")),
                  DropdownMenuItem(
                      value: "Service Provider",
                      child: Text("Service Provider")),
                  DropdownMenuItem(value: "Other", child: Text("Other")),
                ],
                onChanged: (value) {
                  setState(() {
                    selectedBusinessType = value;
                  });
                },
                validator: (value) =>
                    value == null ? "Select a business type" : null,
              ),
              const SizedBox(height: 15),

              // City
              TextFormField(
                controller: cityController,
                decoration: const InputDecoration(
                  labelText: "City",
                  border: OutlineInputBorder(),
                ),
                validator: (value) => value == null || value.trim().isEmpty
                    ? "Enter your city"
                    : null,
              ),
              const SizedBox(height: 15),

              // Pincode
              TextFormField(
                controller: pincodeController,
                decoration: const InputDecoration(
                  labelText: "Pincode",
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return "Enter your pincode";
                  }
                  if (value.length != 6) {
                    return "Enter a valid 6-digit pincode";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 15),

              // Website / Social Media Link
              TextFormField(
                controller: websiteController,
                decoration: const InputDecoration(
                  labelText: "Website or Social Media Link",
                  border: OutlineInputBorder(),
                ),
                validator: (value) => value == null || value.trim().isEmpty
                    ? "Enter your website or link"
                    : null,
              ),
              const SizedBox(height: 25),

              // Register Button
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF046A38), // dark green
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // ✅ Valid form
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Registration submitted")),
                    );
                  }
                },
                child: const Text(
                  "Register Now",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
