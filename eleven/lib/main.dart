





import 'package:flutter/material.dart';

void main() {                                       // 1. start with main function
  runApp(MyApp());                                  // 2. runApp with a starting class
}

class MyApp extends StatelessWidget {               // 3. here MyApp is a stateless wedget so we have to override buid method
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(                             // 4. returning MaterialApp
      title: 'Flutter Demo',
      home: Scaffold(                               // 5. scaffold for home page design
        appBar: AppBar(
          title: Text("AppBar Title"),
          ),
        body: Text("BodyText"),
      ),
    );
  }
}