import 'package:flutter/material.dart';
import 'package:my_first_real_app/pages/image_page.dart';
// import 'package:my_first_hreal_app/pages/list_grid.dart';

// import 'package:my_first_real_app/pages/home.dart';
// import 'package:my_first_real_app/pages/rowscols.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.deepPurple,
      ),
      home: ImagePage(),
    );
  }
}
