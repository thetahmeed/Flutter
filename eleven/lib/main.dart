import 'package:flutter/material.dart';

final _longText =
    "Trust me or not\n\n\n but this is a very very\n\n very very long text.\n\n\n Not very big. But big";

final List _myList = [
  {
    "name" : "Tahmeed",
    "age" : "20"
  },
  {
    "name" : "Another Tahmeed",
    "age" : "40"
  },
  {
    "name" : "Again Another Tahmeed",
    "age" : "30"
  }
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
        body: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Text(
              "Orange",
              style: TextStyle(
                  color: Colors.orange,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ));
  }
}
