import 'package:flutter/material.dart';
import 'package:fourteen/pages/alertdialogue.dart';
import 'package:fourteen/pages/appbar.dart';
import 'package:fourteen/pages/backbutton.dart';
import 'package:fourteen/pages/bottomnavigation.dart';
import 'package:fourteen/pages/data.dart';
import 'package:fourteen/pages/expanded.dart';
import 'package:fourteen/pages/form.dart';
import 'package:fourteen/pages/gradient.dart';
import 'package:fourteen/pages/heroprac.dart';
import 'package:fourteen/pages/home.dart';
import 'package:fourteen/pages/liquid.dart';
import 'package:fourteen/pages/menu.dart';
import 'package:fourteen/pages/neumorphic.dart';
import 'package:fourteen/pages/pageveiw.dart';
import 'package:fourteen/pages/sliverappbar.dart';
import 'package:fourteen/pages/stack.dart';
import 'package:fourteen/pages/statepractice.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Data()),
      ],
      child: MaterialApp(
        home: StateManagementPage(),
        debugShowCheckedModeBanner: false,
      ),
    ),

    /*MaterialApp(
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
        //home: PageViewPagePrac(),
        //home: HeroPractice(),
        //home: BottomNavigationPractice(),
        //home: SliverAppBarPrac(),
        //home: GradientPage(),
        home: StateManagementPage(),

        debugShowCheckedModeBanner: false,
      ),*/
  );
}
