import 'package:flutter/material.dart';
import 'package:ev_app/screens/login_screen.dart';
import 'package:ev_app/screens/register_screen.dart';
import 'package:ev_app/screens/splash_screen.dart';
import 'router.dart';
import 'package:firebase_core/firebase_core.dart';
// Import your splash screen

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Ev Mobile',
      theme: ThemeData(primarySwatch: Colors.blue),
      routerConfig: router,
    );
  }
}
