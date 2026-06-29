import 'package:flutter/material.dart';
import 'package:igbana/pages/landing.dart';
// import 'pages/wip.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(
        brightness: .dark,
        scaffoldBackgroundColor: Color(0xFF14213D),
      ),
    ),
  );
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return LandingPage();
  }
}
