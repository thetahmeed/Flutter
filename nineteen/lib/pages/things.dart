import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LittleThings extends StatefulWidget {
  @override
  _LittleThingsState createState() => _LittleThingsState();
}

class _LittleThingsState extends State<LittleThings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: IgnorePointer(
          ignoring: true,
          child: ElevatedButton(
            child: Text('I am ignored'),
            onPressed: () {},
          ),
        ),
      )),
    );
  }
}
