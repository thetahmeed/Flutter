import 'package:flutter/material.dart';
import 'package:seventeen/pages/animatedcrossfade.dart';
import 'package:seventeen/pages/bottomsheet.dart';
import 'package:seventeen/pages/cursorslider.dart';
import 'package:seventeen/pages/curvednavigation.dart';
import 'package:seventeen/pages/customdialogue.dart';
import 'package:seventeen/pages/dateandtime.dart';
import 'package:seventeen/pages/dismissable.dart';
import 'package:seventeen/pages/home.dart';
import 'package:seventeen/pages/navigationrail.dart';
import 'package:seventeen/pages/riveanimation.dart';
import 'package:seventeen/pages/slider.dart';

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
      //home: BottomSheetPrac(),
      //home: SliderPractice(),
      //home: DismissablePrac(),
      //home: AnimatedCrossfade(),
      //home: DateAndTimePrac(),
      //home: NavigationrailPrac(),
      //home: RiveAnimationPrac(),
      home: CursorSliderPrac(),
    );
  }
}
