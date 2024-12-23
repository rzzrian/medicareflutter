import 'package:flutter/material.dart';
import 'login_activity.dart';
import 'signup_activity.dart';

class WaitActivity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF3F3F2), // Warna latar belakang
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo Image
            Image.asset(
              'assets/images/splashscreen.png', // Path ke gambar logo
              width: 484,
              height: 401,
            ),

            SizedBox(height: 24),

            // Login Button
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginActivity()),
                );
              },
              child: Image.asset(
                'assets/images/loginbtn.png', // Path ke gambar tombol login
                width: 250,
                height: 50,
              ),
            ),

            SizedBox(height: 16),

            // Signup Button
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignupActivity()),
                );
              },
              child: Image.asset(
                'assets/images/signupbtn.png', // Path ke gambar tombol signup
                width: 250,
                height: 50,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
