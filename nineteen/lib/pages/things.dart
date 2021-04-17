import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LittleThings extends StatefulWidget {
  @override
  _LittleThingsState createState() => _LittleThingsState();
}

class _LittleThingsState extends State<LittleThings> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Align(
                alignment: Alignment.center,
                child: PhysicalModel(
                  color: Colors.black,
                  shadowColor: Colors.black,
                  elevation: 8.0,
                  child: Image.network(
                    'https://i.pinimg.com/564x/c1/65/1f/c1651f598d212acdfe551f103548e495.jpg',
                    height: 150,
                    width: 150,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
