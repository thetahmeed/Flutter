import 'package:flutter/material.dart';

class AppBarTest extends StatefulWidget {
  @override
  _AppBarTestState createState() => _AppBarTestState();
}

class _AppBarTestState extends State<AppBarTest> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.green,
        appBar: AppBar(
          title: Text("AppBar"),
          centerTitle: true,
          actions: [
            IconButton(icon: Icon(Icons.notifications), onPressed: () {}),
          ],
          leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
        ),
        body: Center(
          child: Container(
            width: MediaQuery.of(context).size.width - 100,
            height: MediaQuery.of(context).size.height / 20,
            color: Colors.pink,
          ),
        ),
      ),
    );
  }
}
