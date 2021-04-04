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
        child: AspectRatio(
          // width / height
          aspectRatio: 1 / 1,
          child: Container(
            color: Colors.pink,
          ),
        ),
      ),
    );
  }
}
