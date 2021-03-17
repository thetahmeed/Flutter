import 'package:flutter/material.dart';

class StackPage extends StatefulWidget {
  @override
  _StackPageState createState() => _StackPageState();
}

class _StackPageState extends State<StackPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flag"),
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: 150,
              width: 250,
              color: Colors.green,
            ),
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.red,
            )
          ],
        ),
      ),
    );
  }
}
