import 'package:flutter/material.dart';
import 'package:fourteen/pages/alertdialogue.dart';
import 'package:fourteen/pages/backbutton.dart';
import 'package:fourteen/pages/form.dart';
import 'package:fourteen/pages/home.dart';
import 'package:fourteen/pages/menu.dart';

void main() {
  runApp(
    MaterialApp(
      title: "MatApp",
      //home: HomePage(),
      //home: FormPage(),
      //home: MenuPage(),
      //home: AlertDialoguePage(),
      home: BackButtonPopUp(),

      debugShowCheckedModeBanner: false,
    ),
  );
}
