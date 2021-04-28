import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MyMapPage extends StatefulWidget {
  @override
  _MyMapPageState createState() => _MyMapPageState();
}

class _MyMapPageState extends State<MyMapPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('mMap'),
        centerTitle: true,
      ),
      body: Center(
        child: Text('Empty'),
      ),
    );
  }
}


/*
Get the API:
1. Go to this link and create a project > https://cloud.google.com/maps-platform/
2. Open navigation drawer and select > Google Maps Platform > Map SDK for android > Enable
3. APIs > Maps SDK for iOS > Enable
4. Credentials > Credentials in APIs & Services > Create credentials > API key > Copy the key
*/