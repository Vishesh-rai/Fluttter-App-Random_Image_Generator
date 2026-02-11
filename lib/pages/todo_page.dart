import 'package:flutter/material.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  TextEditingController myCtrl = TextEditingController();
  //Greeting
  void greetUser() {
    print(myCtrl.text);
  }                     

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            TextField(controller: myCtrl),
            ElevatedButton(onPressed: greetUser, child: Text("Click Here!")),
          ],
        ),
      ),
    );
  }
}
