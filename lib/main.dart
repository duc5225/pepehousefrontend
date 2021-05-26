import 'package:location/location.dart';
import 'package:flutter/material.dart';
import './screens/home_screen.dart';
import 'config.dart';

void main() {
  runApp(PepeTravel());
}

class PepeTravel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appName,
      theme: ThemeData(
        accentColor: Color.fromARGB(255, 226, 238, 223),
        primaryColor: Colors.green,
        scaffoldBackgroundColor: Color.fromARGB(255, 230, 230, 230),
      ),
      home: HomeScreen(),
    );
  }
}
