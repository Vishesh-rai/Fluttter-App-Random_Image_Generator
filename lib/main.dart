// Starting Lecture :~
import 'package:flutter/material.dart';
import 'package:my_first_real_app/pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "To-Do App", home: Home());
  }
}
