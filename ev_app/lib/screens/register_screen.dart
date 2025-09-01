import 'package:ev_app/screens/login_screen.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Sign up"), centerTitle: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 16),

                const Text(
                  "Register Account",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 16),

                // Name Field
                TextFormField(
                  controller: _nameController,
                  decoration: const InputDecoration(
                    hintText: "Name",
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter your name";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 12),

                // Email Field
                TextFormField(
                  controller: _emailController,
                  decoration: const InputDecoration(
                    hintText: "Email",
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter your email";
                    }
                    final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
                    if (!emailRegex.hasMatch(value)) {
                      return "Enter a valid email";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 12),

                // Telephone Field
                TextFormField(
                  controller: _phoneController,
                  decoration: const InputDecoration(
                    hintText: "Telephone",
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.phone,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter your phone number";
                    }
                    if (!RegExp(r'^[0-9]{10}$').hasMatch(value)) {
                      return "Enter a valid 10-digit phone number";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 12),

                // Password Field
                TextFormField(
                  controller: _passwordController,
                  decoration: const InputDecoration(
                    hintText: "Password",
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(),
                  ),
                  obscureText: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter your password";
                    }
                    if (value.length < 6) {
                      return "Password must be at least 6 characters";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),

                // Sign Up Button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green.shade800,
                      padding: const EdgeInsets.symmetric(vertical: 14),
                    ),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text("Sign up successful!")),
                        );
                      }
                    },
                    child: const Text(
                      "Sign up",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),

                const SizedBox(height: 8),

                // Login Redirect
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("already have an account? "),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginScreen()),
                        );
                      },
                      child: const Text(
                        "login",
                        style: TextStyle(
                          color: Colors.blue,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),

      // body: Center(
      //   child: Container(
      //     padding: const EdgeInsets.all(16),
      //     margin: const EdgeInsets.all(20),
      //     child: Form(
      //       key: _formKey,
      //       child: Column(
      //         mainAxisSize: MainAxisSize.min,
      //         children: [
      //           const Text(
      //             "Register Account",
      //             style: TextStyle(
      //               fontSize: 18,
      //               fontWeight: FontWeight.bold,
      //               color: Colors.green,
      //             ),
      //           ),
      //           const SizedBox(height: 16),

      //           // Name Field
      //           TextFormField(
      //             controller: _nameController,
      //             decoration: const InputDecoration(
      //               hintText: "name",
      //               border: OutlineInputBorder(),
      //             ),
      //             validator: (value) {
      //               if (value == null || value.isEmpty) {
      //                 return "Please enter your name";
      //               }
      //               return null;
      //             },
      //           ),
      //           const SizedBox(height: 12),

      //           // Email Field
      //           TextFormField(
      //             controller: _emailController,
      //             decoration: const InputDecoration(
      //               hintText: "email",
      //               border: OutlineInputBorder(),
      //             ),
      //             keyboardType: TextInputType.emailAddress,
      //             validator: (value) {
      //               if (value == null || value.isEmpty) {
      //                 return "Please enter your email";
      //               }
      //               final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
      //               if (!emailRegex.hasMatch(value)) {
      //                 return "Enter a valid email";
      //               }
      //               return null;
      //             },
      //           ),
      //           const SizedBox(height: 12),

      //           // Telephone Field
      //           TextFormField(
      //             controller: _phoneController,
      //             decoration: const InputDecoration(
      //               hintText: "telephone",
      //               border: OutlineInputBorder(),
      //             ),
      //             keyboardType: TextInputType.phone,
      //             validator: (value) {
      //               if (value == null || value.isEmpty) {
      //                 return "Please enter your phone number";
      //               }
      //               if (!RegExp(r'^[0-9]{10}$').hasMatch(value)) {
      //                 return "Enter a valid 10-digit phone number";
      //               }
      //               return null;
      //             },
      //           ),
      //           const SizedBox(height: 12),

      //           // Password Field
      //           TextFormField(
      //             controller: _passwordController,
      //             decoration: const InputDecoration(
      //               hintText: "password",
      //               border: OutlineInputBorder(),
      //             ),
      //             obscureText: true,
      //             validator: (value) {
      //               if (value == null || value.isEmpty) {
      //                 return "Please enter your password";
      //               }
      //               if (value.length < 6) {
      //                 return "Password must be at least 6 characters";
      //               }
      //               return null;
      //             },
      //           ),
      //           const SizedBox(height: 16),

      //           // Sign Up Button
      //           SizedBox(
      //             width: double.infinity,
      //             child: ElevatedButton(
      //               style: ElevatedButton.styleFrom(
      //                 backgroundColor: Colors.green.shade800,
      //                 padding: const EdgeInsets.symmetric(vertical: 14),
      //               ),
      //               onPressed: () {
      //                 if (_formKey.currentState!.validate()) {
      //                   ScaffoldMessenger.of(context).showSnackBar(
      //                     const SnackBar(content: Text("Sign up successful!")),
      //                   );
      //                 }
      //               },
      //               child: const Text(
      //                 "Sign up",
      //                 style: TextStyle(color: Colors.white, fontSize: 16),
      //               ),
      //             ),
      //           ),

      //           const SizedBox(height: 8),

      //           // Login Redirect
      //           Row(
      //             mainAxisAlignment: MainAxisAlignment.center,
      //             children: [
      //               const Text("already have an account? "),
      //               GestureDetector(
      //                 onTap: () {
      //                   // Navigate to login screen
      //                 },
      //                 child: const Text(
      //                   "login",
      //                   style: TextStyle(
      //                     color: Colors.blue,
      //                     decoration: TextDecoration.underline,
      //                   ),
      //                 ),
      //               ),
      //             ],
      //           ),
      //         ],
      //       ),
      //     ),
      //   ),
      // ),
    );
  }
}
