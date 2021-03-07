





import 'package:flutter/material.dart';


void main() {
  runApp(MaterialApp(home: Dashboard()),);
}

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dashboard"),),
      body: Text("Home"),
    );
  }
}