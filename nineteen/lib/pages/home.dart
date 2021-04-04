import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        centerTitle: true,
      ),
      body: Center(
          child: FractionallySizedBox(
        heightFactor: 0.06,
        // 0.6 for 60% of the screen
        widthFactor: 0.6,
        child: ElevatedButton(
          onPressed: () {},
          child: Text('I\'m 60%'),
        ),
      )),
    );
  }
}
