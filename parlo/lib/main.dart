import 'package:flutter/material.dart';

import 'package:parlo/Screens/Catlog_Screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'lib/Logo/images__5_-removebg-preview.png',
              fit: BoxFit.cover,
            ),
          ),

          Positioned.fill(
            child: CatlogScreen(),
          ),
        ],
      ),
    );
  }
}