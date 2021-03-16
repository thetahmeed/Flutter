import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BackButtonPopUp extends StatefulWidget {
  @override
  _BackButtonState createState() => _BackButtonState();
}

class _BackButtonState extends State<BackButtonPopUp> {
  _showExitPopUp() {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Exit"),
          content: Text("Do you want to exit?"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("No"),
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.purpleAccent),
              ),
              onPressed: () {
                SystemNavigator.pop();
              },
              child: Text("Yes"),
            ),
          ],
        );
      },
    );
  }

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
        _showExitPopUp();
      },
    );
  }
}
