import 'package:flutter/material.dart';
import 'package:flutter_application_2/homescreen.dart';
import 'package:flutter_application_2/park1.dart';
import 'package:flutter_application_2/qr.dart';
import 'package:flutter_application_2/zoomaps.dart';

class ParksHomePage extends StatefulWidget {
  @override
  _ParksHomePageState createState() => _ParksHomePageState();
}

class _ParksHomePageState extends State<ParksHomePage> {
  String? selectedState = 'Telangana'; // Default value set to "Telangana"

  // Parks data for each state
  final Map<String, List<Widget>> parksData = {
    'Telangana': [
      ParkInfoBox(
        name: "Nehru Zoological Park",
        volunteeringAvailable: true,
        locationUrl: "https://www.google.com/maps/place/Nehru+Zoological+Park",
      ),
      SizedBox(height: 10),
      ParkInfoBox(
        name: "Jalpally Urban Forest Park",
        volunteeringAvailable: false,
        locationUrl: "https://www.google.com/maps/place/Jalpally+Urban+Forest+Park",
      ),
      SizedBox(height: 10),
      ParkInfoBox(
        name: "Kakatiya Zoological Park",
        volunteeringAvailable: false,
        locationUrl: "https://www.google.com/maps/place/Kakatiya+Zoological+Park",
      ),
    ],
    'Andhra Pradesh': [
      ParkInfoBox(
        name: "Vizag Zoo Park",
        volunteeringAvailable: true,
        locationUrl: "https://www.google.com/maps/place/Vizag+Zoo+Park",
      ),
      SizedBox(height: 10),
      ParkInfoBox(
        name: "Indira Gandhi Zoological Park",
        volunteeringAvailable: false,
        locationUrl: "https://www.google.com/maps/place/Indira+Gandhi+Zoological+Park",
      ),
      SizedBox(height: 10),
      ParkInfoBox(
        name: "Thirumala Deer Park",
        volunteeringAvailable: false,
        locationUrl: "https://www.google.com/maps/place/Thirumala+Deer+Park",
      ),
    ],
    'Karnataka': [
      ParkInfoBox(
        name: "Bannerghatta National Park",
        volunteeringAvailable: true,
        locationUrl: "https://www.google.com/maps/place/Bannerghatta+National+Park",
      ),
      SizedBox(height: 10),
      ParkInfoBox(
        name: "Cubbon Park",
        volunteeringAvailable: false,
        locationUrl: "https://www.google.com/maps/place/Cubbon+Park",
      ),
      SizedBox(height: 10),
      ParkInfoBox(
        name: "Ranganathittu Bird Sanctuary",
        volunteeringAvailable: false,
        locationUrl: "https://www.google.com/maps/place/Ranganathittu+Bird+Sanctuary",
      ),
    ],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF718667),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            // Navigate to LoginPage
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => WildHavenApp()),
            );
          },
        ),
        title: Text('Parks Near You'),
      ),
      backgroundColor: Color(0xFF718667),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Logo (CircleAvatar) below the AppBar
            Center(
              child: CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('images/bg7.jpg'), // Make sure the image path is correct
              ),
            ),
            SizedBox(height: 20), // Adding space between logo and the next UI elements

            // Dropdown for selecting state
            DropdownButton<String>(
              value: selectedState,
              onChanged: (newState) {
                setState(() {
                  selectedState = newState;
                });
              },
              items: <String>['Telangana', 'Andhra Pradesh', 'Karnataka']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value,
                    style: TextStyle(color: Colors.white),
                  ),
                );
              }).toList(),
              dropdownColor: Color(0xFF718667),
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: 20),

            // Display parks based on selected state
            Text(
              'Parks near you: ${selectedState ?? 'Telangana'}',
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
            SizedBox(height: 20),

            // Display parks for the selected state
            ...parksData[selectedState ?? 'Telangana']!,
          ],
        ),
      ),
    );
  }
}

class ParkInfoBox extends StatelessWidget {
  final String name;
  final bool volunteeringAvailable;
  final String locationUrl;

  ParkInfoBox({
    required this.name,
    required this.volunteeringAvailable,
    required this.locationUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFF171E18),
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Name: $name',
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(height: 8),
          Text(
            'Volunteering Available: ${volunteeringAvailable ? "Yes" : "No"}',
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF3293B1),
                ),
                onPressed: () {
                  // Navigate to GoogleMapsWebView with location URL
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => GoogleMapsWebView(url: locationUrl),
                    ),
                  );
                },
                child: Text(
                  'Navigate',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(width: 8),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF3293B1),
                ),
                onPressed: () {
                  // Navigate to LoginPage
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BackgroundPage()),
                  );
                },
                child: Text(
                  'Donate',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(width: 8),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF3293B1),
                ),
                onPressed: () {
                  // Navigate to ParkDetailScreen
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ParkDetailScreen()),
                  );
                },
                child: Text(
                  'Adopt',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
