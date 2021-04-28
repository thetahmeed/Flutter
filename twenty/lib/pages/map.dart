import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MyMapPage extends StatefulWidget {
  @override
  _MyMapPageState createState() => _MyMapPageState();
}

class _MyMapPageState extends State<MyMapPage> {
  Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(23.6850, 90.3563),
    zoom: 14.4746,
  );

  Future _getLocationPermission() {
    bool services;
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('mMap'),
        centerTitle: true,
      ),
      body: Center(
        child: GoogleMap(
          mapType: MapType.normal,
          initialCameraPosition: _kGooglePlex,
          onMapCreated: (GoogleMapController controller) {
            _controller.complete(controller);
          },
        ),
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