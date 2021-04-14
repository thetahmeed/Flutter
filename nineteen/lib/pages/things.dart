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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              IndexedStack(
                index: _currentIndex,
                children: [
                  Column(
                    children: [
                      Text('$_c1'),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            _c1++;
                          });
                        },
                        child: Text('+'),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Text('$_c2'),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            _c2++;
                          });
                        },
                        child: Text('+'),
                      )
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.looks_one),
                    onPressed: () {
                      setState(() {
                        _currentIndex = 0;
                      });
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.looks_two),
                    onPressed: () {
                      setState(() {
                        _currentIndex = 1;
                      });
                    },
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
