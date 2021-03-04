





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
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Text("Body Text", 
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.red,
          fontSize: 30,
          fontStyle: FontStyle.italic
          ),
        ),
      )
    );
  }
}