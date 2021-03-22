import 'package:flutter/material.dart';

class AnimatedCrossfade extends StatefulWidget {
  @override
  _AnimatedCrossfadeState createState() => _AnimatedCrossfadeState();
}

class _AnimatedCrossfadeState extends State<AnimatedCrossfade> {
  bool checked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedCrossFade(
            firstChild: Text("I am first child"),
            secondChild: Text("I am second child"),
            crossFadeState:
                checked ? CrossFadeState.showSecond : CrossFadeState.showFirst,
            duration: Duration(seconds: 2),
          ),
          TextButton(
              onPressed: () {
                setState(() {
                  checked = true;
                });
              },
              child: Text("Show"))
        ],
      ),
    );
  }
}
