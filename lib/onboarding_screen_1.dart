import 'package:flutter/material.dart';
import 'package:medicareflutter/wait_activity.dart';
import 'onboarding_screen_2.dart'; // Pastikan file ini sesuai dengan nama file Anda

class OnBoardingActivity1 extends StatelessWidget {
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
                'assets/images/stetoskop.png',
                width: 300,
                height: 300,
              ),
            ),
          ),

          // Title
          SizedBox(height: 16),
          Text(
            'Make An Appointment',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              fontFamily: 'Medium',
            ),
          ),

          // Deskripsi
          SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: Text(
              'Make it easier for patients to check the doctor\'s schedule, so they can plan their visits better and avoid long waiting times.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w300,
                fontFamily: 'Light',
              ),
            ),
          ),

          Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Tombol SKIP
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => WaitActivity(), // Navigasi ke MainActivity
                      ),
                    );
                  },
                  child: Text(
                    'SKIP',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.blue,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Medium',
                    ),
                  ),
                ),

                // Tombol NEXT
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => OnBoardingScreen2(),
                      ),
                    );
                  },
                  child: Text(
                    'NEXT',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.blue,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Medium',
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}
