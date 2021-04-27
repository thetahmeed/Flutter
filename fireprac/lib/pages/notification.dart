import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:http/http.dart' as http;

class NotificationTestPage extends StatefulWidget {
  @override
  _NotificationTestPageState createState() => _NotificationTestPageState();
}

class _NotificationTestPageState extends State<NotificationTestPage> {
  var fbm = FirebaseMessaging.instance;
  var serverToken =
      'AAAADiS-4rU:APA91bHZclg4YKPxH2biCfW79dkpxnVJAXMD7xxCEVw9SS30n4IS36Egi7CTaXR6VyAV1lW3iW_4R9-M7gX8XcnsTkUUKVQ0-8wOvaN4-HKE1-hZegCAty7eNNTV8ePIsQNlRCdJzvoA';

  _sendNotification(String title, String body, String id) async {
    await http.post(
      Uri.parse('https://fcm.googleapis.com/fcm/send'),
      headers: <String, String>{
        'Content-Type': 'application/json',
        'Authorization': 'key=$serverToken',
      },
      body: jsonEncode(
        <String, dynamic>{
          'notification': <String, dynamic>{
            'body': body.toString(),
            'title': title.toString()
          },
          'priority': 'high',
          'data': <String, dynamic>{
            'click_action': 'FLUTTER_NOTIFICATION_CLICK',
            'id': id
          },
          'to': '/topics/weather'
        },
      ),
    );
  }

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
      body: SafeArea(
        child: Column(
          children: [
            ElevatedButton(
              child: Text('Send notofication'),
              onPressed: () {
                _sendNotification('asd', 'zxc', 'xc');
              },
            ),
            ElevatedButton(
              child: Text('Subscribe'),
              onPressed: () async {
                await FirebaseMessaging.instance.subscribeToTopic('weather');
              },
            ),
            ElevatedButton(
              child: Text('Unsubscribe'),
              onPressed: () async {
                await FirebaseMessaging.instance
                    .unsubscribeFromTopic('weather');
              },
            ),
          ],
        ),
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
