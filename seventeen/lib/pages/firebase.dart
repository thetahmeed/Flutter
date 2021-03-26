import 'dart:math';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class FirebasePrac extends StatefulWidget {
  @override
  _FirebasePracState createState() => _FirebasePracState();
}

class _FirebasePracState extends State<FirebasePrac> {
  final Future<FirebaseApp> _fbApp = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('firebase'),
        centerTitle: true,
      ),
      body: FutureBuilder(
        future: _fbApp,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            print('Got error! ${snapshot.error.toString()}');
            return Text('Error');
          } else if (snapshot.hasData) {
            return Center(
              child: Column(
                children: [
                  Text('Welcome'),
                  ElevatedButton(
                      onPressed: () {
                        DatabaseReference _testRef = FirebaseDatabase.instance
                            .reference()
                            .child('test1');
                        _testRef.set('Hello World ${Random().nextInt(100)}');
                      },
                      child: Text('Add data'))
                ],
              ),
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
