import 'package:flutter/material.dart';
import 'package:interview_project/screens/home_screen.dart';
import 'package:interview_project/screens/shoe_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomePage());
  }
}
