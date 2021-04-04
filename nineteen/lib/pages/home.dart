import 'dart:html';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        centerTitle: true,
      ),
      body: OrientationBuilder(
        builder: (_, o) {
          if (o == Orientation.portrait) {
            return Text('Portait');
          } else {
            return Text('Landscape');
          }
        },
      ),
    );
  }
}
