import 'package:flutter/material.dart';

class LittleThings extends StatefulWidget {
  @override
  _LittleThingsState createState() => _LittleThingsState();
}

class _LittleThingsState extends State<LittleThings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: DraggableScrollableSheet(
        initialChildSize: 0.4,
        minChildSize: 0.2,
        maxChildSize: 0.5,
        builder: (context, sController) {
          return SingleChildScrollView(
            controller: sController,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.purple,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
              ),
              height: 400,
            ),
          );
        },
      )),
    );
  }
}
