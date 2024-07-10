// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class LocationStruct extends FFFirebaseStruct {
  LocationStruct({
    String? geohash,
    LatLng? geopoint,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _geohash = geohash,
        _geopoint = geopoint,
        super(firestoreUtilData);

  // "geohash" field.
  String? _geohash;
  String get geohash => _geohash ?? '';
  set geohash(String? val) => _geohash = val;

  bool hasGeohash() => _geohash != null;

  // "geopoint" field.
  LatLng? _geopoint;
  LatLng? get geopoint => _geopoint;
  set geopoint(LatLng? val) => _geopoint = val;

  bool hasGeopoint() => _geopoint != null;

  static LocationStruct fromMap(Map<String, dynamic> data) => LocationStruct(
        geohash: data['geohash'] as String?,
        geopoint: data['geopoint'] as LatLng?,
      );

  static LocationStruct? maybeFromMap(dynamic data) =>
      data is Map ? LocationStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'geohash': _geohash,
        'geopoint': _geopoint,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'geohash': serializeParam(
          _geohash,
          ParamType.String,
        ),
        'geopoint': serializeParam(
          _geopoint,
          ParamType.LatLng,
        ),
      }.withoutNulls;

  static LocationStruct fromSerializableMap(Map<String, dynamic> data) =>
      LocationStruct(
        geohash: deserializeParam(
          data['geohash'],
          ParamType.String,
          false,
        ),
        geopoint: deserializeParam(
          data['geopoint'],
          ParamType.LatLng,
          false,
        ),
      );

  @override
  String toString() => 'LocationStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is LocationStruct &&
        geohash == other.geohash &&
        geopoint == other.geopoint;
  }

  @override
  int get hashCode => const ListEquality().hash([geohash, geopoint]);
}

LocationStruct createLocationStruct({
  String? geohash,
  LatLng? geopoint,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    LocationStruct(
      geohash: geohash,
      geopoint: geopoint,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

LocationStruct? updateLocationStruct(
  LocationStruct? location, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    location
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addLocationStructData(
  Map<String, dynamic> firestoreData,
  LocationStruct? location,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (location == null) {
    return;
  }
  if (location.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && location.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final locationData = getLocationFirestoreData(location, forFieldValue);
  final nestedData = locationData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = location.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getLocationFirestoreData(
  LocationStruct? location, [
  bool forFieldValue = false,
]) {
  if (location == null) {
    return {};
  }
  final firestoreData = mapToFirestore(location.toMap());

  // Add any Firestore field values
  location.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getLocationListFirestoreData(
  List<LocationStruct>? locations,
) =>
    locations?.map((e) => getLocationFirestoreData(e, true)).toList() ?? [];
