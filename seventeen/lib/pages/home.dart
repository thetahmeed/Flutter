import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  File image;

  final _picker = ImagePicker();

  Future _getImageFromCamera() async {
    PickedFile _image = await _picker.getImage(source: ImageSource.camera);
    setState(() {
      if (_image != null) {
        image = File(_image.path);
      } else {
        print('No image selected.');
      }
    });
  }

  Future _getImageFromGallery() async {
    PickedFile _image = await _picker.getImage(source: ImageSource.gallery);
    setState(() {
      if (_image != null) {
        image = File(_image.path);
      } else {
        print('No image selected.');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Picker"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 200,
              width: double.infinity,
              color: Colors.blue,
              child: Center(
                child: image == null
                    ? Text('No image selected.')
                    : Image.file(image),
              ),
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  color: Colors.blue,
                  icon: Icon(Icons.camera),
                  iconSize: 60,
                  onPressed: () {
                    _getImageFromCamera();
                  },
                ),
                IconButton(
                  color: Colors.blue,
                  icon: Icon(Icons.photo_library),
                  iconSize: 60,
                  onPressed: () {
                    _getImageFromGallery();
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
