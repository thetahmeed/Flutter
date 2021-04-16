import 'package:flutter/cupertino.dart';
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
        child: Center(
          child: ShaderMask(
            shaderCallback: (bounds) => RadialGradient(
                    center: Alignment.topLeft,
                    radius: 1.0,
                    colors: [
                      Colors.yellow,
                      Colors.deepOrange,
                    ],
                    tileMode: TileMode.mirror)
                .createShader(bounds),
            child: Text(
              'Burning Text',
              style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
