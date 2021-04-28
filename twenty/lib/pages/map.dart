import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';

class MyMapPage extends StatefulWidget {
  @override
  _MyMapPageState createState() => _MyMapPageState();
}

class _MyMapPageState extends State<MyMapPage> {
  Completer<GoogleMapController> _controller = Completer();
  Position _currentLocation;

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(23.6850, 90.3563),
    zoom: 14.4746,
  );

  // Services Location = Enable => true
  Future _getLocationPermission() async {
    bool services;
    LocationPermission lPermission;

    services = await Geolocator.isLocationServiceEnabled();

    if (services == false) {}

    lPermission = await Geolocator.checkPermission();
    if (lPermission == LocationPermission.denied) {
      lPermission = await Geolocator.requestPermission();
      if (lPermission == LocationPermission.always ||
          lPermission == LocationPermission.whileInUse) {
        _getCurrentLocation();
        print(_getCurrentLocation());
      }
    }
  }

  // Getting current location
  Future<Position> _getCurrentLocation() async {
    return await Geolocator.getCurrentPosition(
            desiredAccuracy: LocationAccuracy.high)
        .then((value) => value);
  }

  @override
  void initState() {
    super.initState();
    _getLocationPermission();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('mMap'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            _currentLocation = await _getCurrentLocation();
            print(
                '======================================Current location=========================');
            print(_currentLocation.latitude);
            print(_currentLocation.longitude);
          },
          child: Text('Get current location'),
        ),
        /*GoogleMap(
          mapType: MapType.normal,
          initialCameraPosition: _kGooglePlex,
          onMapCreated: (GoogleMapController controller) {
            _controller.complete(controller);
          },
        ),*/
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