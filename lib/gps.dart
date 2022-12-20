
import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


// ignore: camel_case_types
class gps extends StatelessWidget {
   gps({ Key? key }) : super(key: key);
Completer<GoogleMapController> _controller = Completer();
static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: (AppBar(
        backgroundColor: Colors.cyan,
        title: Text(" "),
       
      )),
      // ignore: avoid_unnecessary_containers
      body:GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition: _kGooglePlex,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
      



    );
  }
}