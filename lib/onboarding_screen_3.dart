import 'package:flutter/material.dart';
import 'wait_activity.dart';

class OnBoardingScreen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF3F3F2),
      body: Column(
        children: [
          // Gambar di tengah atas
          Padding(
            padding: const EdgeInsets.only(top: 150.0),
            child: Center(
              child: Image.asset(
                'assets/images/cek.png', // Path ke gambar Anda
                width: 300,
                height: 300,
              ),
            ),
          ),

          // Title
          SizedBox(height: 16),
          Text(
            'Emergency Needs',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600, // Medium font
              fontFamily: 'Medium',
            ),
          ),

          // Deskripsi
          SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: Text(
              'By using this application, users will find it easier to seek ambulance assistance in the event of an accident or other incident.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w300, // Light font
                fontFamily: 'Light',
              ),
            ),
          ),

          Spacer(),

          // Tombol Get Started
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => WaitActivity(), // Navigasi ke WaitActivity
                ),
              );
            },
            child: Image.asset(
              'assets/images/getstarted.png', // Path ke gambar "Get Started"
              width: 200,
            ),
          ),

          SizedBox(height: 32), // Margin bawah
        ],
      ),
    );
  }
}
