import 'package:flutter/material.dart';
import 'package:firebase_messaging/firebase_messaging.dart';



class NotificationTestPage extends StatefulWidget {
  @override
  _NotificationTestPageState createState() => _NotificationTestPageState();
}

class _NotificationTestPageState extends State<NotificationTestPage> {
  var fbm = FirebaseMessaging.instance;

  @override
  void initState() {
    super.initState();
    fbm.getToken().then((value) => print('The token $value'));

    // Get message from forground
    FirebaseMessaging.onMessage.listen((event) {
      print(
          '============================Notification data (Forground)=======================');
      print('Title: ' + event.notification.title);
      print('Body: ' + event.notification.body);
    });

    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('This is a data'),
      ),
    );
  }
}
