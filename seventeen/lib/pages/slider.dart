import 'package:flutter/material.dart';

class SliderPractice extends StatefulWidget {
  @override
  _SliderPracticeState createState() => _SliderPracticeState();
}

class _SliderPracticeState extends State<SliderPractice> {
  double _currentValue = 35;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Slider"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "This is a Text",
              style: TextStyle(fontSize: _currentValue),
            ),
            Slider(
              min: 0,
              max: 100,
              divisions: 100,
              value: _currentValue,
              label: _currentValue.toInt().toString(),
              onChanged: (v) {
                setState(() {
                  _currentValue = v;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
