





import 'package:flutter/material.dart';
import 'package:twelve/main.dart';

class PageOne extends StatefulWidget {
  @override
  _PageOneState createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 1"),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 120,
            ),
            Text("Click here to go to previous activity"),
            ElevatedButton(
              child: Text("Back"),
              onPressed: () {
                
              },
            ),
          ],
        ),
      ),
    );
  }
}
