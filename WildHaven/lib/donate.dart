import 'package:flutter/material.dart';
import 'package:flutter_application_2/homescreen.dart';
import 'package:flutter_application_2/navigate.dart';

class DonateScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Background image
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/bg4.jpg'), // Add your image here
              fit: BoxFit.cover,
            ),
          ),
        ),
        // Semi-transparent overlay to darken the background
        Container(
          color: Colors.black.withOpacity(0.5),
        ),
        // The content on top of the background
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back, color: Colors.white),
                  onPressed: () {
                    // Navigate to LoginPage
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => WildHavenApp()),
                    );
                  },
                ),
                Spacer(),
                Text(
                  'DONATE AND SERVE!',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 49,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.none, // Remove any underlines
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Donating to a zoo means providing financial or material support to help fund animal care, conservation programs, facility improvements, and educational initiatives that promote wildlife protection and enhance the zoo\'s mission.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    decoration: TextDecoration.none, // Remove any underlines
                  ),
                ),
                SizedBox(height: 30),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ParksHomePage()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 0, 0, 0), // Background color
                      padding: EdgeInsets.symmetric(horizontal: 62, vertical: 16), // Button size
                    ),
                    child: Text(
                      'DONATE NOW',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
                Spacer(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
