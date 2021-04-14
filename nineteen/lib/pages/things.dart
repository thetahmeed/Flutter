import 'dart:math';

import 'package:flutter/material.dart';

class LittleThings extends StatefulWidget {
  @override
  _LittleThingsState createState() => _LittleThingsState();
}

class _LittleThingsState extends State<LittleThings>
    with TickerProviderStateMixin {
  AnimationController _controller;
  Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
        duration: const Duration(milliseconds: 5000),
        vsync: this,
        value: 0,
        lowerBound: 0,
        upperBound: 1);
    _animation =
        CurvedAnimation(parent: _controller, curve: Curves.fastOutSlowIn);

    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Row(
            children: [
              Flexible(
                fit: FlexFit.loose,
                flex: 1,
                child: Container(color: Colors.red, height: 100),
              ),
              Flexible(
                flex: 2,
                child: Container(color: Colors.green, height: 100),
              ),
              Flexible(
                flex: 3,
                child: Container(color: Colors.blue, height: 100),
              ),
              Flexible(
                flex: 4,
                child: Container(color: Colors.pink, height: 100),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
