





import 'package:flutter/material.dart';
import 'package:twelve/main.dart';

class PageOne extends StatefulWidget {

  var Message;

  PageOne(this.Message);

  @override
  _PageOneState createState() => _PageOneState(this.Message);
}

class _PageOneState extends State<PageOne> {

  var m;
  _PageOneState(this.m);

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
                // Going back to previous activity
                Navigator.pop(context);
              },
            ),
            Text("Title : "+m["title"]),
            Text("Body : "+m["body"]),
          ],
        ),
      ),
    );
  }
}
