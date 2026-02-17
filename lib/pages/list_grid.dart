import 'package:flutter/material.dart';

class ListGrid extends StatefulWidget {
  const ListGrid({super.key});

  @override
  State<ListGrid> createState() => _ListGridState();
}

class _ListGridState extends State<ListGrid> {
  List<String> fruits = ['orange', "banana", "capsule", "guava", "litchi"];
  Map fruits_season = {
    'fruits': ["orange", "banana", "capsule", "guava", "litchi"],
    'season': ["winteer", "summer", "winter", "summer", "winter"],
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SnackBar"),
        backgroundColor: const Color.fromARGB(255, 12, 0, 81),
      ),
      body: Container(
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              final snackbar = SnackBar(
                content: Text("Item deleted"),
                backgroundColor: Colors.black87,
                duration: Duration(seconds: 3),
                behavior: SnackBarBehavior.floating,
                margin: EdgeInsets.all(12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackbar);
            },
            child: Text("Press Here"),
          ),
        ),
      ),
    );
  }
}
