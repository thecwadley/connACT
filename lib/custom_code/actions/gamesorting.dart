// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:html';
import 'package:geoflutterfire2/geoflutterfire2.dart';

Future gamesorting(
  LatLng currentposition,
  double radius,
  Future Function(List<GameRecord> games) callback,
) async {
  // Add your function code here!
// Init firestore and geoFlutterFire
  final geo = GeoFlutterFire();
  final _firestore = FirebaseFirestore.instance;
  // Create a geoFirePoint
  GeoFirePoint center = geo.point(
      latitude: currentposition.latitude, longitude: currentposition.longitude);
  // get the collection reference or query
  var collectionReference = _firestore.collection('games');
  String field = 'location';
  Stream<List<DocumentSnapshot>> stream = geo
      .collection(collectionRef: collectionReference)
      .within(center: center, radius: radius, field: field);
  stream.listen((List<DocumentSnapshot> documentList) {
    List<GameRecord> sortedGames = [];
    documentList.forEach((DocumentSnapshot document) {
      GameRecord game = GameRecord.fromSnapshot(document);
      sortedGames.add(game);
    });
    callback!(sortedGames);
  });
}
