import 'package:ev_app/screens/login_screen.dart';
import 'package:ev_app/screens/register_screen.dart';
import 'package:ev_app/screens/splash_screen.dart';
import 'package:flutter/material.dart'; // Import your splash screen

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const SplashImage(), // 👈 Set splash screen as the first screen
    );
  }
}
