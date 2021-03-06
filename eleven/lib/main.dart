import 'package:flutter/material.dart';

final _longText = "Trust me or not but this is a very very" +
    "Trust me or not but this is a very very" +
    " very very long text. Not very big. But big";

final List _myList = [
  {"name": "Tahmeed", "age": "20"},
  {"name": "Another Tahmeed", "age": "40"},
  {"name": "Again Another Tahmeed", "age": "30"}
];

Widget _makeAGap() {
  return SizedBox(
    width: 10,
  );
}

void main() {
  runApp(MaterialApp(
    title: "Eleven",
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AppBar Title"),
      ),
      body: Container(
        height: 120,
        child: ListView(
          
          children: [
            Text(_longText,),
            Text(_longText,),
            Text(_longText,),
          ],
        ),
      ),
    );
  }
}
