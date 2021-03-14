import 'package:flutter/material.dart';
import 'package:fourteen/pages/form.dart';
import 'package:fourteen/pages/home.dart';

void main() {
  runApp(
    MaterialApp(
      title: "MatApp",
      //home: HomePage(),
      home: FormPage(),
      debugShowCheckedModeBanner: false,
    ),
  );
}
