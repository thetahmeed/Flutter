import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class FirebasePrac extends StatefulWidget {
  @override
  _FirebasePracState createState() => _FirebasePracState();
}

class _FirebasePracState extends State<FirebasePrac> {
  final FirebaseApp _fbApp = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('firebase'),
        centerTitle: true,
      ),
      body: Center(
        child: Text('test'),
      ),
    );
  }
}
