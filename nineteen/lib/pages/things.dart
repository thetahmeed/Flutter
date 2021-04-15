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
        child: Center(
          child: Column(
            children: [
              ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 200),
                child: Text('I am not in danger, I am the danger - Heisenberg'),
              ),
              ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 200),
                child: AnimatedOpacity(
                  opacity: _opacityControl,
                  duration: Duration(milliseconds: 500),
                  child: Container(height: 100, color: Colors.red),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _opacityControl == 0
                          ? _opacityControl = 1
                          : _opacityControl = 0;
                    });
                  },
                  child: Text('Click to visible the box'))
            ],
          ),
        ),
      ),
    );
  }
}
