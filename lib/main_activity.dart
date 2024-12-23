import 'package:flutter/material.dart';

class MainActivity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color(0xFFF3F3F2),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: screenWidth * 0.05,
            vertical: screenHeight * 0.02,
          ),
          child: Column(
            children: [
              // Header Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: SizedBox(
                      width: screenWidth * 0.15,
                      height: screenWidth * 0.15,
                      child: Image.asset('assets/images/asset30.png'), // btnMenu
                    ),
                  ),
                  Flexible(
                    child: SizedBox(
                      width: screenWidth * 0.15,
                      height: screenWidth * 0.15,
                      child: Image.asset('assets/images/asset28.png'), // btnProfile
                    ),
                  ),
                ],
              ),
              SizedBox(height: screenHeight * 0.02),

              // Main Title
              Text(
                "Let's Live a Healthy Life",
                style: TextStyle(
                  fontSize: screenWidth * 0.05,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: screenHeight * 0.02),

              // Main Image
              Image.asset(
                'assets/images/gif.gif', // Main Image
                width: double.infinity,
                height: screenHeight * 0.25,
                fit: BoxFit.cover,
              ),
              SizedBox(height: screenHeight * 0.02),

              // Row of Buttons (Emergency, Consultation, About)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildFeatureButton(
                    context,
                    'assets/images/asset37.png', // btnEmergency
                    'Emergency',
                    screenWidth * 0.1,
                  ),
                  _buildFeatureButton(
                    context,
                    'assets/images/asset32.png', // btnKonsultasi
                    'Consultation',
                    screenWidth * 0.1,
                  ),
                  _buildFeatureButton(
                    context,
                    'assets/images/asset36.png', // btnAbout
                    'About',
                    screenWidth * 0.1,
                  ),
                ],
              ),
              SizedBox(height: screenHeight * 0.02),

              // Row of Buttons (News, Reservation, Developer)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildFeatureButton(
                    context,
                    'assets/images/asset34.png', // btnNews
                    'News',
                    screenWidth * 0.1,
                  ),
                  _buildFeatureButton(
                    context,
                    'assets/images/reservasi.png', // btnReservasi
                    'Reservation',
                    screenWidth * 0.1,
                  ),
                  _buildFeatureButton(
                    context,
                    'assets/images/asset35.png', // btnDeveloper
                    'Developer',
                    screenWidth * 0.1,
                  ),
                ],
              ),
              SizedBox(height: screenHeight * 0.02),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFeatureButton(BuildContext context, String iconPath, String label, double iconSize) {
    return Flexible(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            icon: Image.asset(iconPath),
            iconSize: iconSize,
            onPressed: () {},
          ),
          Text(
            label,
            style: TextStyle(
              fontSize: MediaQuery.of(context).size.width * 0.03,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
