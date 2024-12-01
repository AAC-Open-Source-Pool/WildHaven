import 'package:flutter/material.dart';
import 'package:flutter_application_2/park1.dart';

class ParksAcceptingDonationsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/bg4.jpg'), // Path to your background image
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          // IconButton at the top-left corner
          Positioned(
            top: 20,
            left: 20,
            child: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.white, size: 30),
              onPressed: () {
                  // Navigate to LoginPage
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ParkDetailScreen()),
                  );
                },
            ),
          ),
          // Centered content
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Adopt a (Animal) Now',
                    style: TextStyle(
                      fontSize: 44,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 60),
                  ParkButton(text: 'Connect With Park Officials'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ParkButton extends StatelessWidget {
  final String text;

  const ParkButton({required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: Colors.black, // Button color
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 35),
          textStyle: TextStyle(
              fontSize: 32,
              color: Color.fromARGB(255, 250, 247, 247)), // White text color
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40.0),
          ),
        ),
        onPressed: () {
          // Implement button functionality here
        },
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(text),
        ),
      ),
    );
  }
}
