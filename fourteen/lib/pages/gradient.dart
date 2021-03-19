import 'package:flutter/material.dart';

class GradientPage extends StatefulWidget {
  @override
  _GradientPageState createState() => _GradientPageState();
}

class _GradientPageState extends State<GradientPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gradient"),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.purple,
                Colors.blue,
                Colors.indigo,
                Colors.green,
                Colors.yellow,
                Colors.orange,
                Colors.red
              ],
            ),
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.purple,
              Colors.blue,
              Colors.indigo,
              Colors.green,
              Colors.yellow,
              Colors.orange,
              Colors.red
            ],
          ),
        ),
      ),
    );
  }
}
