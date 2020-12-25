import 'dart:math';

import 'package:flutter/material.dart';
import 'package:mapbox_gl/cedarmaps.dart';

import 'main.dart';
import 'page.dart';

class FullMapPage extends ExamplePage {
  FullMapPage() : super(const Icon(Icons.map), 'Full screen map');

  @override
  Widget build(BuildContext context) {
    return const FullMap();
  }
}

class FullMap extends StatefulWidget {
  const FullMap();

  @override
  State createState() => FullMapState();
}

class FullMapState extends State<FullMap> {
  MapboxMapController mapController;

  void _onMapCreated(MapboxMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: CedarmapsMap(
      clientID: MapsDemo.CLIENT_ID,
      clientSecret: MapsDemo.CLIENT_SECRET,
      style: MapStyle.DARK,
      logoViewMargins: Point(0, 16),
      onMapCreated: _onMapCreated,
      initialCameraPosition:
          const CameraPosition(target: LatLng(35.7374, 51.4057), zoom: 15),
    ));
  }
}
