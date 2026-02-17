import 'package:flutter/material.dart';
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text("New Conteent"),),
      body:Container(
        height: 23,
        width: 24,
        color: Colors.amber,
      )
    );
  }
}