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
          child: FittedBox(
        fit: BoxFit.contain,
        alignment: Alignment.center,
        child: Row(
          children: [
            Container(
              color: Colors.red,
              height: 100,
              width: 100,
            ),
            Container(
              color: Colors.green,
              height: 100,
              width: 100,
            ),
            Container(
              color: Colors.blue,
              height: 100,
              width: 100,
            ),
            Container(
              color: Colors.purple,
              height: 100,
              width: 100,
            ),
          ],
        ),
      )),
    );
  }
}
