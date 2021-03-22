import 'package:flutter/material.dart';
import 'package:seventeen/pages/bottomsheet.dart';
import 'package:seventeen/pages/curvednavigation.dart';
import 'package:seventeen/pages/customdialogue.dart';
import 'package:seventeen/pages/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      // Image Picker
      //home: MyHomePage(),
      //home: BottomSheetPrac(),
      //home: CurvedBottomNavigationPrac(),
      // SnackBar
      home: BottomSheetPrac(),
    );
  }
}
