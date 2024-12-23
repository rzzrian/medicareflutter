import 'package:flutter/material.dart';
import 'package:medicareflutter/onboarding_screen_3.dart';
import 'package:medicareflutter/wait_activity.dart';

class OnBoardingScreen2 extends StatelessWidget {
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
                'assets/images/cek.png',
                width: 300,
                height: 300,
              ),
            ),
          ),

          // Title
          SizedBox(height: 16),
          Text(
            'ONLINE CONSULTATION',
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
              'Makes it easier for patients to consult a doctor if it is not possible to go to the hospital.',
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
                        builder: (context) => WaitActivity(),
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
                        builder: (context) => OnBoardingScreen3(),
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
