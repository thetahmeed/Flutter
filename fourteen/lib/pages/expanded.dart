import 'package:flutter/material.dart';

class ExpandedPage extends StatefulWidget {
  @override
  _ExpandedPageState createState() => _ExpandedPageState();
}

class _ExpandedPageState extends State<ExpandedPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.red,
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(color: Colors.green),
        ),
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.blue,
          ),
        ),
      ],
    );
  }
}
