import 'package:flutter/material.dart';

class WebViewPage extends StatefulWidget {
  @override
  _WebViewPageState createState() => _WebViewPageState();
}

class _WebViewPageState extends State<WebViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(icon: Icon(Icons.refresh), onPressed: () {}),
        ],
        title: Text('Google'),
        centerTitle: true,
      ),
      body: Center(
        child: Text('HELLO'),
      ),
    );
  }
}
