import 'package:flutter/material.dart';

class FirebasePrac extends StatefulWidget {
  @override
  _FirebasePracState createState() => _FirebasePracState();
}

class _FirebasePracState extends State<FirebasePrac> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('firebase'),
        centerTitle: true,
      ),
      body: Center(
        child: Text('test'),
      ),
    );
  }
}
