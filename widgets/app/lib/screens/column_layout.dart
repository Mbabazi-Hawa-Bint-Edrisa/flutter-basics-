import 'package:flutter/material.dart';

class ColumnLayout extends StatelessWidget {
  const ColumnLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // Image asset with larger size and fit property
          Image.asset(
            'assets/download.jpg',
            width: double.infinity, // Fills the width of the screen
            height: 500, // Adjusted height for a larger image
            fit: BoxFit.cover, // Ensures the image covers the space proportionally
          ),

          // Text widget for the title
          Padding(
            padding: const EdgeInsets.all(16.0), // Added padding for better spacing
            child: Text(
              'Order in the Mobile App',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.white, // Enhanced visibility
                shadows: [
                  Shadow(
                    color: Colors.black.withOpacity(0.5),
                    offset: const Offset(1.0, 1.0),
                    blurRadius: 5.0,
                  ),
                ],
              ),
              textAlign: TextAlign.center, // Center the title
            ),
          ),

          // SizedBox for spacing
          const SizedBox(height: 10),

          // Text widget for description
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0), // Added padding for better spacing
            child: Text(
              'Choose clothes online from home and place an order. Get bonuses!',
              style: TextStyle(
                fontSize: 18.0, // Slightly smaller font size for the description
                fontWeight: FontWeight.normal,
                color: Colors.black, // Text color for visibility
                shadows: [
                  Shadow(
                    color: Colors.grey.withOpacity(0.5),
                    offset: const Offset(1.0, 1.0),
                    blurRadius: 5.0,
                  ),
                ],
              ),
              textAlign: TextAlign.center, // Center the description
            ),
          ),

          // Padding to add space before the button
          const SizedBox(height: 20),

          // Button with centered text and padding
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: ElevatedButton(
              onPressed: () {
                // Handle button press action
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 15.0), // Padding inside button
                shape: RoundedRectangleBorder( // Make the button rounded
                  borderRadius: BorderRadius.circular(10),
                ),
                backgroundColor: Colors.blue, // Button background color
              ),
              child: const Center(
                child: Text(
                  'Next',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white, // Text color
                  ),
                ),
              ),
            ),
          ),

          // Padding to add space after the button
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
