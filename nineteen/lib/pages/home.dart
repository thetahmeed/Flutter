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
        body: LayoutBuilder(
          builder: (_, c) {
            if (c.maxWidth < 600) {
              return Column(
                children: [
                  Text('Hello'),
                  Text('Hello'),
                  Text('Hello'),
                  Text('Hello'),
                  Text('Hello'),
                  Text('Hello'),
                ],
              );
            } else {
              return Row(
                children: [
                  Text('Hello'),
                  Text('Hello'),
                  Text('Hello'),
                  Text('Hello'),
                  Text('Hello'),
                  Text('Hello'),
                  Text('Hello'),
                  Text('Hello'),
                ],
              );
            }
          },
        ));
  }
}
