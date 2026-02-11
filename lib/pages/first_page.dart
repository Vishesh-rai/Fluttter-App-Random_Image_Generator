import 'package:flutter/material.dart';
// import 'package:my_first_real_app/pages/alarm_page.dart';
// import 'package:my_first_real_app/pages/second_page.dart';
// import 'package:my_first_real_app/pages/second_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 74, 143, 222),

      bottomNavigationBar: BottomNavigationBar(
        items: [
          //first
          BottomNavigationBarItem(
            icon: Icon(Icons.youtube_searched_for_outlined),
            label: "Search",
          ),
          //second
          BottomNavigationBarItem(icon: Icon(Icons.paypal), 
          label: "P A Y"),
          //third
          BottomNavigationBarItem(icon: Icon(Icons.add_box),
           label: "A D D"),
        ],
      ),
      appBar: AppBar(
        title: Text("Kishan`s", style: TextStyle(color: Colors.white)),
        backgroundColor: const Color.fromARGB(255, 83, 83, 254),
      ),
      drawer: Drawer(
        backgroundColor: Colors.black26,

        child: Column(
          children: [
            DrawerHeader(
              child: Icon(
                Icons.account_balance_rounded,
                color: const Color.fromARGB(255, 255, 255, 255),
              ),
            ),
            ListTile(
              leading: Icon(Icons.local_movies_outlined, color: Colors.white),
              title: Text("M O V I E S", style: TextStyle(color: Colors.white)),
            ),
            ListTile(
              leading: Icon(Icons.add_chart, color: Colors.white),
              title: Text("C H A R T", style: TextStyle(color: Colors.white)),
            ),
            ListTile(
              leading: Icon(Icons.add_location_sharp, color: Colors.white),
              title: Text(
                "L O C A T I O N",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/location_page');
              },
            ),
            ListTile(
              leading: Icon(
                Icons.hourglass_disabled_rounded,
                color: Colors.white,
              ),
              title: Text("T I M E R", style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/alarm_page');
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/second_page');
          },
          child: Text("data"),
        ),
      ),
    );
  }
}
  