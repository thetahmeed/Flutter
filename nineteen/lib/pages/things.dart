import 'package:flutter/material.dart';

class LittleThings extends StatefulWidget {
  @override
  _LittleThingsState createState() => _LittleThingsState();
}

class _LittleThingsState extends State<LittleThings>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
            child: Container(
          height: 100,
          width: 200,
          child: Placeholder(),
        )),
      ),
    );
  }
}
