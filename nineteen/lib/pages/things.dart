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
              ImageFiltered(
                imageFilter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                child: Image.network(
                  'https://i.pinimg.com/564x/c1/65/1f/c1651f598d212acdfe551f103548e495.jpg',
                  height: 150,
                  width: 150,
                ),
              ),
              Text('Blur1'),
              Text('Blur2'),
              Text('Blur3'),
            ],
          ),
        ),
      ),
    );
  }
}
