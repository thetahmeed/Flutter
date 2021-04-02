import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
// 01
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;

class FbStorage extends StatefulWidget {
  FbStorage({Key key}) : super(key: key);

  @override
  _FbStorageState createState() => _FbStorageState();
}

class _FbStorageState extends State<FbStorage> {
  _logOutUser() async {
    await FirebaseAuth.instance.signOut();
    Navigator.pop(context);
  }

  // 02
  firebase_storage.Reference ref =
      firebase_storage.FirebaseStorage.instance.ref('dp');

  // 03
  Future<void> listExample() async {
    firebase_storage.ListResult result = await ref.listAll();

    result.items.forEach((firebase_storage.Reference ref) {
      print('Found file: $ref');
    });

    result.prefixes.forEach((firebase_storage.Reference ref) {
      print('Found directory: $ref');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Storage'),
        centerTitle: true,
        actions: [
          IconButton(
              icon: Icon(Icons.logout),
              onPressed: () {
                _logOutUser();
              })
        ],
      ),
      body: Container(
        alignment: Alignment.center,
        child:
            ElevatedButton(onPressed: listExample, child: Text('Get the list')),
      ),
    );
  }
}
