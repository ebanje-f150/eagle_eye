import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:location/location.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:get/get.dart';

class MapPage extends StatefulWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  _MapState createState() => _MapState();
}

class _MapState extends State<MapPage> {
  GoogleMapController? mapController;
  Location location = Location();

  animateToUser() async {
    bool _serviceEnabled;
    PermissionStatus _permissionGranted;
    LocationData _locationData;

    _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled) {
        return;
      }
    }

    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        return;
      }
    }

    _locationData = await location.getLocation();

    mapController!.animateCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(
          target: LatLng(_locationData.latitude!.toDouble(),
              _locationData.longitude!.toDouble()),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    AppBar(
      title:Text('EAGLE EYE '),
      centerTitle: true,
    );
    return Stack(
      children: [
        GoogleMap(
          initialCameraPosition: CameraPosition(
            target: LatLng(
              3.8159696,
              11.5272325,
            ),
            zoom: 18,
          ),
          onMapCreated: onMapcreated,
          compassEnabled: true,
          mapType: MapType.hybrid,
          zoomControlsEnabled: true,
          trafficEnabled: true,
        ),
      ],
    );
  }

  void onMapcreated(GoogleMapController controller) {
    setState(() {
      mapController = controller;
    });
  }
}
