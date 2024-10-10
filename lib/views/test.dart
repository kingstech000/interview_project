import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation Bar Example',
      theme: ThemeData(
        brightness: Brightness.dark, // Dark theme
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  // Method to handle navigation item taps
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Dark background
      body: Center(
        child: _getPage(_selectedIndex), // Display different content based on the selected page
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black, // Dark background for navigation bar
        unselectedItemColor: Colors.grey, // Unselected item color
        selectedItemColor: Colors.white, // Selected item color
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed, // To ensure the bar doesn't shift
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home), // Home icon
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.apps), // Services icon
            label: 'Services',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.show_chart), // Statistics icon
            label: 'Statistics',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person), // Referrals icon
            label: 'Referrals',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings), // Settings icon
            label: 'Settings',
          ),
        ],
      ),
    );
  }

  // Return the content for each page
  Widget _getPage(int index) {
    switch (index) {
      case 0:
        return Text('Home Page', style: TextStyle(color: Colors.white));
      case 1:
        return Text('Services Page', style: TextStyle(color: Colors.white));
      case 2:
        return Text('Statistics Page', style: TextStyle(color: Colors.white));
      case 3:
        return Text('Referrals Page', style: TextStyle(color: Colors.white));
      case 4:
        return Text('Settings Page', style: TextStyle(color: Colors.white));
      default:
        return Text('Home Page', style: TextStyle(color: Colors.white));
    }
  }
}
