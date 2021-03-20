import 'package:flutter/material.dart';
import 'package:fourteen/pages/statepractice.dart';
import 'package:provider/provider.dart';

class RecevePage extends StatefulWidget {
  @override
  _RecevePageState createState() => _RecevePageState();
}

class _RecevePageState extends State<RecevePage> {
  @override
  Widget build(BuildContext context) {
    final _dataFromDataClass = Provider.of<Data>(context);

    return Scaffold(
      appBar: AppBar(title: Text("Second Page")),
      body: Center(
        child: Text("0"),
      ),
    );
  }
}
