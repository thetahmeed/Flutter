import 'package:flutter/material.dart';
import 'package:twelve/pages/page1.dart';

void main() {
  runApp(
    MaterialApp(home: Dashboard()),
  );
}

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  List _myList = [
    {"name": "Lennart Johansson", "city": "Stockholm"},
    {"name": "Karl Eriksson", "city": "London"},
    {"name": "Pekka Hartikainen", "city": "Helsinki"},
    {"name": "Mia Svensson", "city": "Berlin"},
    {"name": "Tahmeedul Islam", "city": "Dhaka"}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
      ),
      body: ListView.builder(
        itemCount: _myList.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(_myList[index]["name"]),
            subtitle: Text(_myList[index]["city"]),
            onTap: (){
              Route route = MaterialPageRoute(builder: (context) => PageOne(_myList[index]));
              Navigator.push(context, route);
            },
          );
        },
      ),
    );
  }
}
