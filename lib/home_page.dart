import 'package:flutter/material.dart';
import 'landing_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate to LandingPage
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LandingPage()),
            );
          },
          child: Text('Get Started'),
        ),
      ),
    );
  }
}
