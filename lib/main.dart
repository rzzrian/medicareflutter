import 'package:flutter/material.dart';
import 'onboarding_screen_1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Medicare',
      home: ScreenActivity(),
    );
  }
}

class ScreenActivity extends StatefulWidget {
  @override
  _ScreenActivityState createState() => _ScreenActivityState();
}

class _ScreenActivityState extends State<ScreenActivity>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();

    // Inisialisasi AnimationController
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 2));

    // Inisialisasi Fade Animation
    _fadeAnimation =
        CurvedAnimation(parent: _animationController, curve: Curves.easeIn);

    // Jalankan animasi
    _animationController.forward();

    // Pindah ke layar OnBoarding setelah animasi selesai
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => OnBoardingActivity1()),
      );
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF3F3F2),
      body: Center(
        child: FadeTransition(
          opacity: _fadeAnimation,
          child: Image.asset(
            'assets/images/splashscreen.png',
            width: 400,
            height: 400,
          ),
        ),
      ),
    );
  }
}
