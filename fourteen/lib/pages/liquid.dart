import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class LiquidEffect extends StatefulWidget {
  @override
  _LiquidEffectState createState() => _LiquidEffectState();
}

class _LiquidEffectState extends State<LiquidEffect> {
  final pages = [
    Container(
      color: Colors.red,
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              shadowColor: Colors.green,
              elevation: 10,
              child: Container(
                height: 100,
                width: 100,
              ),
            ),
            Text(
              "Card View",
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    ),
    Container(
      color: Colors.green,
    ),
    Container(
      color: Colors.blue,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LiquidSwipe(
        pages: pages,
        waveType: WaveType.liquidReveal,
        slideIconWidget: Icon(Icons.skip_next),
      ),
    );
  }
}
