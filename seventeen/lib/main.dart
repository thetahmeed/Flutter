import 'package:flutter/material.dart';
import 'package:seventeen/pages/bottomsheet.dart';
import 'package:seventeen/pages/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      // Image Picker
      //home: MyHomePage(),
      home: BottomSheetPrac(),
    );
  }
}
