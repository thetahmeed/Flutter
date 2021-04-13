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
          child: Wrap(
            direction: Axis.horizontal,
            children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.red,
              ),
              Opacity(
                opacity: 0.0,
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.green,
                ),
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.blue,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.purple,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
