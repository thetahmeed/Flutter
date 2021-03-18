import 'package:flutter/material.dart';

class HeroPractice2 extends StatefulWidget {
  @override
  _HeroPractice2State createState() => _HeroPractice2State();
}

class _HeroPractice2State extends State<HeroPractice2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Hero(
        tag: 'image1',
        child: Center(
          child: Icon(
            Icons.audiotrack,
            size: 170,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
