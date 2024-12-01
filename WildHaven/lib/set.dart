import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WildHavenProfilePage(
          name: "John Doe"), // Pass data here after login
    );
  }
}

class WildHavenProfilePage extends StatelessWidget {
  final String name; // Add name field

  // Constructor that accepts name as a parameter
  WildHavenProfilePage({required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // Apply the background image to the entire page
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/bg1.jpg'), // Background image
            fit: BoxFit.cover, // Cover the entire background
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: SafeArea(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // Circle Avatar for the logo
                        CircleAvatar(
                          radius: 80,
                          backgroundImage: AssetImage(
                              'images/bg7.jpg'), // Add this image to your assets
                        ),
                        SizedBox(height: 20),

                        // Name Display
                        Text(
                          'Name: $name', // Use dynamic name here
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        SizedBox(height: 15),

                        // Expandable option for Delete Account
                        _buildExpandableSection(
                          title: 'Delete Account',
                          fields: [
                            _buildTextFieldWithOTP(
                                'Enter Phone no:'), // Added Get OTP here
                            _buildTextField('Enter OTP:'),
                          ],
                          buttonText: 'Confirm',
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Widget for an expandable section with a down arrow
  Widget _buildExpandableSection({
    required String title,
    required List<Widget> fields,
    required String buttonText,
  }) {
    return Theme(
      data: ThemeData().copyWith(dividerColor: Colors.transparent),
      child: ExpansionTile(
        iconColor: Colors.white,
        collapsedIconColor: Colors.white,
        title: Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        trailing: Icon(Icons.keyboard_arrow_down, color: Colors.white),
        children: [
          Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              children: [
                ...fields,
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    // Handle button press
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                  ),
                  child: Text(buttonText),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Widget for the text field with a "Get OTP" button
  Widget _buildTextFieldWithOTP(String hint) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: TextField(
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintText: hint,
                hintStyle: TextStyle(color: Colors.white60),
                filled: true,
                fillColor: Colors.black,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
        ),
        SizedBox(width: 10),
        ElevatedButton(
          onPressed: () {
            // Handle OTP generation
            print("Get OTP tapped");
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black,
          ),
          child: Text("Get OTP"),
        ),
      ],
    );
  }

  // Widget for the text field
  Widget _buildTextField(String hint) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextField(
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: TextStyle(color: Colors.white),
          filled: true,
          fillColor: Colors.black,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
