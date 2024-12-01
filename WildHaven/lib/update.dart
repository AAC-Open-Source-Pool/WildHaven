import 'package:flutter/material.dart';


class RecordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Record Details"),
        backgroundColor: Colors.green[800],
      ),
      body: Container(
        // Applying background image
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/bg4.jpg"), // Replace with your image path
            fit: BoxFit.cover, // Cover the entire screen
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Pictures:-",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(height: 10),
              // Pictures Section
              Row(
                children: [
                  buildPictureContainer(),
                  buildPictureContainer(),
                  buildPictureContainer(),
                  buildPictureContainer(),
                ],
              ),
              SizedBox(height: 20),
              // Last Fed Section
              Text(
                "Last Fed:-",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(16.0),
                margin: EdgeInsets.only(top: 10),
                color: Colors.green[900]
                    ?.withOpacity(0.7), // Transparent background
                child: Text(
                  "Today 10:00 AM", // Replace with dynamic data
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(height: 20),
              // Status Section
              Text(
                "Status:-",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(16.0),
                margin: EdgeInsets.only(top: 10),
                color: Colors.green[900]
                    ?.withOpacity(0.7), // Transparent background
                child: Text(
                  "Healthy", // Replace with dynamic data
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildPictureContainer() {
    return Expanded(
      child: Container(
        height: 100,
        margin: EdgeInsets.all(4.0),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(8),
          image: DecorationImage(
            image:
                AssetImage("images/bg5.jpg"), // Replace with actual image paths
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Icon(Icons.image, color: Colors.white), // Placeholder icon
        ),
      ),
    );
  }
}
