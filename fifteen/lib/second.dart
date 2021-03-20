import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
// satrt
  String something;
  SecondPage(this.something);
// end

  @override
  _SecondPageState createState() => _SecondPageState(this.something /*here*/);
}

class _SecondPageState extends State<SecondPage> {
  // start
  String something;

  _SecondPageState(this.something);
  // end

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Back"),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          child: Text(something.toString()),
        ),
      ),
    );
  }
}
