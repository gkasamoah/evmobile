// import 'package:flutter/material.dart';

// class SplashImage extends StatelessWidget {
//   const SplashImage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Image.asset(
//           // 'assets/splash_image.png',
//           'assets/images/splash_image.png', // Replace with your image path
//           width: 150, // optional
//           height: 150, // optional
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'login_screen.dart'; // import your login screen file

class SplashImage extends StatefulWidget {
  const SplashImage({super.key});

  @override
  State<SplashImage> createState() => _SplashImageState();
}

class _SplashImageState extends State<SplashImage> {

  @override
  void initState() {
    super.initState();
    // Delay for 2 seconds then navigate
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LoginScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          'assets/images/splash_image.png',
          width: 150,
          height: 150,
        ),
      ),
    );
  }
}
