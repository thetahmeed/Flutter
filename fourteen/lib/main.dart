import 'package:flutter/material.dart';
import 'package:fourteen/pages/alertdialogue.dart';
import 'package:fourteen/pages/appbar.dart';
import 'package:fourteen/pages/backbutton.dart';
import 'package:fourteen/pages/expanded.dart';
import 'package:fourteen/pages/form.dart';
import 'package:fourteen/pages/home.dart';
import 'package:fourteen/pages/liquid.dart';
import 'package:fourteen/pages/menu.dart';
import 'package:fourteen/pages/neumorphic.dart';
import 'package:fourteen/pages/pageveiw.dart';
import 'package:fourteen/pages/stack.dart';

void main() {
  runApp(
    MaterialApp(
      title: "MatApp",
      //home: HomePage(),
      //home: FormPage(),
      //home: MenuPage(),
      //home: AlertDialoguePage(),
      //home: BackButtonPopUp(),
      //home: AppBarTest(),
      //home: StackPage(),
      //home: LiquidEffect(),
      //home: NuemorphicPage(),
      //home: ExpandedPage(),
      home: PageViewPagePrac(),

      debugShowCheckedModeBanner: false,
    ),
  );
}
