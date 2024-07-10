// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:convert';

class Imagedisplay extends StatelessWidget {
  final double? width;
  final double? height;
  final String photostring;

  Imagedisplay({
    Key? key,
    this.width,
    this.height,
    required this.photostring,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Convert the base64 string to Uint8List
    final decodedBytes = base64Decode(photostring);

    return Image.memory(
      decodedBytes,
      width: width,
      height: height,
      fit: BoxFit.cover,
    );
  }
}
