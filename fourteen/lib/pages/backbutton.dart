import 'package:flutter/material.dart';

class BackButtonPopUp extends StatefulWidget {
  @override
  _BackButtonState createState() => _BackButtonState();
}

class _BackButtonState extends State<BackButtonPopUp> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        child: Scaffold(
          appBar: AppBar(
            title: Text("BackButton"),
            centerTitle: true,
            backgroundColor: Colors.purpleAccent,
          ),
        ),
        onWillPop: () {
          showDialog(context: context, builder: (BuildContext context){} )
        });
  }
}
