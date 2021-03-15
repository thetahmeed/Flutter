import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertDialoguePage extends StatefulWidget {
  @override
  _AlertDialoguePageState createState() => _AlertDialoguePageState();
}

class _AlertDialoguePageState extends State<AlertDialoguePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert Dialogue"),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Click to confirm'),
          onPressed: () {
            _showDialogue(context);
          },
        ),
      ),
    );
  }

  _showDialogue(context) {
    return showDialog(
        //barrierColor: Colors.black,
        //barrierDismissible: false,
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            //shape: CircleBorder(),
            //backgroundColor: Colors.blue,
            elevation: 10,
            title: Text("Think again"),
            content: Text("Are you want to exit?"),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text(
                  "No",
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text(
                  "Yes",
                ),
              ),
            ],
          );
        });
  }
}
