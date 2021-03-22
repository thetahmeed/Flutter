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
            RichText(
              text: TextSpan(
                children: <TextSpan>[
                  TextSpan(
                      text: 'I am',
                      style: TextStyle(fontSize: 20, color: Colors.blue)),
                  TextSpan(
                      text: ' big',
                      style: TextStyle(
                          fontSize: _currentValue, color: Colors.blue)),
                ],
              ),
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
