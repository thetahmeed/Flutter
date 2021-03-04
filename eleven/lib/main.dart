import 'package:flutter/material.dart';

final _longText =
    "Trust me or not\n\n\n but this is a very very\n\n very very long text.\n\n\n Not very big. But big";

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
        body: ListView(
          children: [
            Text(_longText),
            Text(_longText),
            Text(_longText),
          ],
        ));
  }
}
