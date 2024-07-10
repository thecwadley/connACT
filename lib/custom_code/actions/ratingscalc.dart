// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<double> ratingscalc(List<int>? ratings) async {
  int total = 0;
  for (int i = 0; i < ratings!.length; i++) {
    total = total + ratings[i];
  }
  double avgratings = total / ratings!.length;
  return avgratings;
}
