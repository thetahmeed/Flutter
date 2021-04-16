import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LittleThings extends StatefulWidget {
  @override
  _LittleThingsState createState() => _LittleThingsState();
}

class _LittleThingsState extends State<LittleThings> {
  List<bool> _selections = List.generate(3, (index) => false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListWheelScrollView(
          itemExtent: 100,
          diameterRatio: 2.0,
          offAxisFraction: -1.0,
          children: [
            Container(
              color: Colors.purple,
              height: 100,
            ),
            Container(
              color: Colors.blue,
              height: 100,
            ),
            Container(
              color: Colors.indigo,
              height: 100,
            ),
            Container(
              color: Colors.green,
              height: 100,
            ),
            Container(
              color: Colors.yellow,
              height: 100,
            ),
            Container(
              color: Colors.red,
              height: 100,
            ),
            Container(
              color: Colors.purple,
              height: 100,
            ),
            Container(
              color: Colors.blue,
              height: 100,
            ),
            Container(
              color: Colors.indigo,
              height: 100,
            ),
            Container(
              color: Colors.green,
              height: 100,
            ),
            Container(
              color: Colors.yellow,
              height: 100,
            ),
            Container(
              color: Colors.red,
              height: 100,
            ),
          ],
        ),
      ),
    );
  }

  Widget _theSheet(BuildContext context) {
    return CupertinoActionSheet(
      title: Text('Title'),
      message: Text('This is a message'),
      actions: [
        CupertinoActionSheetAction(
          onPressed: () {},
          child: Text('Data1'),
          isDefaultAction: true,
        ),
        CupertinoActionSheetAction(
          onPressed: () {},
          child: Text('Data1'),
          isDestructiveAction: true,
        ),
      ],
      cancelButton: CupertinoActionSheetAction(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Cancel')),
    );
  }
}
