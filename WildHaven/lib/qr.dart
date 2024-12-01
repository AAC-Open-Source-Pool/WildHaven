import 'package:flutter/material.dart';

class BackgroundPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Positioned.fill(
            child: Image.asset(
              'images/bg1.jpg', // Path to your background image
              fit: BoxFit.cover,
            ),
          ),

          // Back button at the top-left corner
          Positioned(
            top: 40, // Adjust the top margin to your preference
            left: 20, // Adjust the left margin to your preference
            child: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.white), // White color for visibility
              onPressed: () {
                Navigator.of(context).pop(); // Navigates back to the previous screen
              },
            ),
          ),

          // Content in the center
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Heading
                Text(
                  'Scan Here',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 20),
                // Centered square image
                Image.asset(
                  'images/qr.jpg', // Path to your square image
                  width: 300,
                  height: 300,
                ),
              ],
            ),
          ),

          // Positioned Finish button at the bottom
          Positioned(
            bottom: 20,
            left: 20,
            right: 20,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue, // Set button color here
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: EdgeInsets.symmetric(vertical: 15),
              ),
              onPressed: () {
                // Add donation process or payment gateway here.
                // For now, we'll just show a simple message.
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Thank You for Your Donation!'),
                      content: Text(
                        'Your donation helps support wildlife and park conservation efforts.',
                      ),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text('Close'),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Text(
                'Finish',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
