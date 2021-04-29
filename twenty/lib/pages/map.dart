import 'dart:async';
import 'dart:ffi';

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
  var _lat;
  var _long;

  CameraPosition _myLocation;

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
        //_getCurrentLocation();
      }
    }
  }

  // Getting current location
  Future<void> _getCurrentLocation() async {
    _currentLocation = await Geolocator.getCurrentPosition(
            desiredAccuracy: LocationAccuracy.high)
        .then((value) => value);

    _lat = _currentLocation.latitude;
    _long = _currentLocation.longitude;

    setState(() {
      _myLocation = CameraPosition(
        target: LatLng(_lat, _long),
        zoom: 20,
      );
    });
  }

  @override
  void initState() {
    super.initState();
    _getLocationPermission();
    _getCurrentLocation();
  }

  GoogleMapController _gmc;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('mMap'),
        centerTitle: true,
      ),
      body: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          _myLocation == null
              ? CircularProgressIndicator()
              : GoogleMap(
                  mapType: MapType.normal,
                  initialCameraPosition: _myLocation,
                  onMapCreated: (GoogleMapController controller) {
                    _gmc = controller;
                  },
                ),
          ElevatedButton(
              onPressed: () {
                _gmc.animateCamera(
                  CameraUpdate.newLatLng(LatLng(22.8251765, 91.0821882)),
                );
              },
              child: Text('Move to Noyakhali')),
        ],
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