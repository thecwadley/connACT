// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:geoflutterfire2/geoflutterfire2.dart';

Future<DocumentReference> gamecreation(String? skillLevel, String? sport,
    DateTime? time, LatLng? location, String? locationname) async {
  final geo = GeoFlutterFire();
  final _firestore = FirebaseFirestore.instance;
  GeoFirePoint myLocation =
      geo.point(latitude: location!.latitude, longitude: location!.longitude);
  return _firestore.collection('Game').add({
    'GamLocation': myLocation.data,
  });
}
