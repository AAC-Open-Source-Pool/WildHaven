import 'package:flutter/material.dart';
import 'package:flutter_application_2/adoptanimal.dart';
import 'package:flutter_application_2/navigate.dart';


class ParkDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.white,
          onPressed: () {
                  // Navigate to LoginPage
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ParksHomePage()),
                  );
                },
        ),
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/animals av.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Animals List
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Nehru Zoological Park',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Animals Available',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                  ),
                ),
                SizedBox(height: 20),
                AnimalButton(text: 'Giraffe'),
                AnimalButton(text: 'Elephant'),
                AnimalButton(text: 'Chimpanzee'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class AnimalButton extends StatelessWidget {
  final String text;

  const AnimalButton({required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white, backgroundColor: Colors.black, // Text color
          padding: EdgeInsets.symmetric(horizontal: 140, vertical: 32),
          textStyle: TextStyle(
            fontSize: 30,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40.0),
          ),
        ),
         onPressed: () {
                  // Navigate to LoginPage
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ParksAcceptingDonationsScreen()),
                  );
                },
        child: Text(text),
      ),
    );
  }
}
