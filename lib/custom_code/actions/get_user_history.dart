// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<List<GameRecord>> getUserHistory(List<DocumentReference> history) async {
  // Add your function code here!
  List<GameRecord> docs = [];

  // Iterate through the list of document references
  for (var docRef in history) {
    // Get the document from the specified collection
    GameRecord docToAdd = await GameRecord.getDocumentOnce(docRef);
    print(docToAdd);
    // Add the document to the list
    docs.add(docToAdd);

    // Add Doc to Local State
    // FFAppState().update(() {
    // FFAppState().brandNames.add(docToAdd.brand ?? '');
    // });
  }

  return docs;
}
