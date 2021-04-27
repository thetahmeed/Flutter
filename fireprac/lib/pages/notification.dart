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

    // Open a specific route/activity by clicking on notification
    FirebaseMessaging.onMessageOpenedApp.listen((event) {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => AllNotificationPage()));
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

class AllNotificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('All noitifications'),
        centerTitle: true,
      ),
      body: Center(child: Text('Empty')),
    );
  }
}
