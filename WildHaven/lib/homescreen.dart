import 'package:flutter/material.dart';
import 'package:flutter_application_2/adoption.dart';
import 'package:flutter_application_2/alerts.dart';
import 'package:flutter_application_2/donate.dart';
import 'package:flutter_application_2/login&reg.dart';
import 'package:flutter_application_2/map.dart';
import 'package:flutter_application_2/set.dart';
import 'package:flutter_application_2/volunteering.dart';

class WildHavenApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WildHavenHomePage(),
      routes: {
        '/donate': (context) => DonateScreen(),
        '/volunteer': (context) => VolunteeringScreen(),
        '/adopt': (context) => AdoptionScreen(),
        '/settings': (context) => Settings(), // Route for settings page
        '/alerts': (context) => MapPage(),     // Route for alerts page
        '/Info': (context) => Alerts(),
      },
    );
  }
}

class WildHavenHomePage extends StatefulWidget {
  @override
  _WildHavenHomePageState createState() => _WildHavenHomePageState();
}

class _WildHavenHomePageState extends State<WildHavenHomePage> {
  int _selectedIndex = 0;

  // List of pages to be displayed for each bottom nav item
  final List<Widget> _pages = [
    HomeScreen(), // Home Page
    MapPage(), // Alerts Page
    Alerts(), // Info Page
    Settings(), // Settings Page
  ];

  final List<String> _appBarTitles = [
    'Wild Haven', // AppBar title for Home
    'Different Locations of Parks',      // AppBar title for Alerts
    'Alerts',        // AppBar title for Info
    'Settings',    // AppBar title for Settings
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Dynamically change AppBar based on selected index
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 7, 7, 7),
        title: Text(
          _appBarTitles[_selectedIndex], // Update title based on selected index
          style: TextStyle(color: Colors.white),
        ),
        leading: _selectedIndex == 0
            ? IconButton(
                icon: Icon(Icons.power_settings_new, color: Colors.white),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                },
              )
            : null, // Only show leading icon on Home screen
      ),
      body: _pages[_selectedIndex], // Dynamically change body based on selected index
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.red.shade900,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.black),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.navigation, color: Colors.black),
            label: 'Alerts',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info, color: Colors.black),
            label: 'Info',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings, color: Colors.black),
            label: 'Settings',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/hs.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage('images/bg7.jpg'),
              ),
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildOptionButton(
                  context,
                  'images/donate.png',
                  'DONATE',
                  '/donate',
                ),
                _buildOptionButton(
                  context,
                  'images/vol.jpeg',
                  'VOLUNTEER',
                  '/volunteer',
                ),
              ],
            ),
            SizedBox(height: 30),
            _buildOptionButton(
              context,
              'images/adppt.jpg',
              'ADOPT',
              '/adopt',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildOptionButton(
      BuildContext context, String imagePath, String label, String route) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, route);
      },
      child: Column(
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 8),
          Text(
            label,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}

class AlertsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Alerts Page')),
    );
  }
}

class InfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Info Page')),
    );
  }
}

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Settings Page')),
    );
  }
}
