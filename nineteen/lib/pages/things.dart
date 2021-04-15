import 'package:flutter/material.dart';

class LittleThings extends StatefulWidget {
  @override
  _LittleThingsState createState() => _LittleThingsState();
}

class _LittleThingsState extends State<LittleThings> {
  var _currentIndex = 0;
  var _c1 = 0;
  var _c2 = 0;
  var _c3 = 0;

  double _opacityControl = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            FractionallySizedBox(
              alignment: Alignment.center,
              widthFactor: 0.6,
              child: ElevatedButton(onPressed: () {}, child: Text('abc')),
            ),
            FractionallySizedBox(
              alignment: Alignment.center,
              widthFactor: 0.8,
              child: ElevatedButton(onPressed: () {}, child: Text('abc')),
            ),
          ],
        ),
      ),
    );
  }
}
