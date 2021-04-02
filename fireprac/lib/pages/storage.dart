import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
// 01
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:image_picker/image_picker.dart';

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

  File _image;
  final picker = ImagePicker();

  Future _pickImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: listExample, child: Text('Get list')),
            ElevatedButton(
                onPressed: _getTheDownloadLink,
                child: Text('Get a downlaod link')),
            SizedBox(height: 10),
            SizedBox(
              width: 200,
              height: 200,
              child: _image == null
                  ? Image.asset('assets/images/place_holder.png')
                  : Image.file(_image),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: _pickImage, child: Text('Get image')),
                ElevatedButton(onPressed: () {}, child: Text('Upload')),
              ],
            )
          ],
        ),
      ),
    );
  }

  Future<void> _getTheDownloadLink() async {
    String downloadURL = await firebase_storage.FirebaseStorage.instance
        .ref('dp/walt1.png')
        .getDownloadURL();
    print(downloadURL);
  }
}
