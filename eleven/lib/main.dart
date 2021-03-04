





import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Eleven",
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AppBar Title"),
      ),
      body: Container(
        margin: EdgeInsets.only(left: 12),
        padding: EdgeInsets.all(12),
        height: 80,
        width: 120,
        decoration: BoxDecoration(
          color: Colors.indigo,
          borderRadius: BorderRadius.circular(10)
          ),
        child: Text("Text on container"),
      )
    );
  }
}