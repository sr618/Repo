import 'package:flutter/material.dart';
import 'home_page.dart'; // Import HomePage
import 'landing_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Futuristic E-Commerce',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.blueAccent,
        hintColor: Colors.purpleAccent,
        fontFamily: 'RobotoMono', // Use a futuristic font
        textTheme: TextTheme(
          displayLarge: TextStyle(
              color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
          bodyLarge: TextStyle(color: Colors.white70),
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.black54,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: BorderSide.none,
          ),
          hintStyle: TextStyle(color: Colors.white54),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.black,
            backgroundColor: Colors.blueAccent,
            textStyle: TextStyle(fontWeight: FontWeight.bold),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
          ),
        ),
      ),
      home: HomePage(), // Set HomePage as the initial screen
    );
  }
}
