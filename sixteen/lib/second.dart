import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sixteen/data.dart';

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Page"),
      ),
      body: Center(
        child: Text('${context.watch<Counter>().count}'),
      ),
    );
  }
}
