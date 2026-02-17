import 'package:flutter/material.dart';

class Rowscols extends StatelessWidget {
  const Rowscols({super.key});

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(title: Text('Hey bro')),
      body: Container(
        height: h,
        width: w,
        color: Colors.amber,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Wrap(
            // crossAxisAlignment: CrossAxisAlignment.start,
            // direction: Axis.horizontal,
            children: [
              Container(height: 150, width: 150, color: Colors.red),
              Container(height: 150, width: 150, color: Colors.pink),
              Container(height: 150, width: 150, color: Colors.purple),
              Container(height: 150, width: 150, color: Colors.white),
              Container(height: 150, width: 150, color: Colors.blue),
              // Expanded(child: Container(height: 150
              //, width: 150
              //, color: Colors.yellow)),
              Container(height: 150, width: 150, color: Colors.red),
              Container(height: 150, width: 150, color: Colors.orange),
              // Expanded(child: Container(height: 150
              //, width: 50, color: Colors.yellow)),
              Container(height: 150, width: 150, color: Colors.pink),
              Container(height: 150, width: 150, color: Colors.purple),
              Container(height: 150, width: 150, color: Colors.white),
              Container(height: 150, width: 150, color: Colors.blue),
            ],
          ),
        ),

        // child: Row(
        //   mainAxisAlignment: MainAxisAlignment.end,
        //   crossAxisAlignment: CrossAxisAlignment.end,
        //   children: [
        //     Container(height: 50, width: 50, color: Colors.red),
        //     Container(height: 50, width: 50, color: Colors.green),
        //     // Container(height: 50, width: 50, color: const Color.fromARGB(255, 24, 204, 15)),
        //     Container(height: 50, width: 50, color: Colors.purple),
        //     Container(height: 50, width: 50, color: Colors.blue),
        //     Container(height: 50, width: 50, color: Colors.white),
        //     Container(height: 50, width: 50, color: Colors.pink),
        //   ],
        // ),
      ),
    );
  }
}
