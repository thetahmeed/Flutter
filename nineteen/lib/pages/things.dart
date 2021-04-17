import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:animations/animations.dart';

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
                child: OpenContainer(
                  closedBuilder: (context, action) {
                    return _theImage();
                  },
                  openBuilder: (context, action) {
                    return BigPage();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _theImage() {
    return Image.network(
      'https://i.pinimg.com/564x/c1/65/1f/c1651f598d212acdfe551f103548e495.jpg',
      height: 150,
      width: 150,
    );
  }
}

class BigPage extends StatefulWidget {
  @override
  _BigPageState createState() => _BigPageState();
}

class _BigPageState extends State<BigPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: Image.network(
                  'https://i.pinimg.com/564x/c1/65/1f/c1651f598d212acdfe551f103548e495.jpg'),
            ),
            SizedBox(height: 10),
            Text(
              'This is a title',
              style: TextStyle(fontSize: 26),
            ),
            SizedBox(height: 10),
            Text(
              'This is a description. This is a description. This is a description. This is a description. This is a description. ',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              'This is a description. This is a description. This is a description. This is a description. This is a description. ',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
