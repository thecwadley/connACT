import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GameRecord extends FirestoreRecord {
  GameRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "sport" field.
  String? _sport;
  String get sport => _sport ?? '';
  bool hasSport() => _sport != null;

  // "skillLevel" field.
  String? _skillLevel;
  String get skillLevel => _skillLevel ?? '';
  bool hasSkillLevel() => _skillLevel != null;

  // "PlayersJoined" field.
  List<DocumentReference>? _playersJoined;
  List<DocumentReference> get playersJoined => _playersJoined ?? const [];
  bool hasPlayersJoined() => _playersJoined != null;

  // "GamLocation" field.
  LocationStruct? _gamLocation;
  LocationStruct get gamLocation => _gamLocation ?? LocationStruct();
  bool hasGamLocation() => _gamLocation != null;

  // "Time" field.
  DateTime? _time;
  DateTime? get time => _time;
  bool hasTime() => _time != null;

  // "Isended" field.
  bool? _isended;
  bool get isended => _isended ?? false;
  bool hasIsended() => _isended != null;

  // "locationname" field.
  String? _locationname;
  String get locationname => _locationname ?? '';
  bool hasLocationname() => _locationname != null;

  void _initializeFields() {
    _sport = snapshotData['sport'] as String?;
    _skillLevel = snapshotData['skillLevel'] as String?;
    _playersJoined = getDataList(snapshotData['PlayersJoined']);
    _gamLocation = LocationStruct.maybeFromMap(snapshotData['GamLocation']);
    _time = snapshotData['Time'] as DateTime?;
    _isended = snapshotData['Isended'] as bool?;
    _locationname = snapshotData['locationname'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Game');

  static Stream<GameRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => GameRecord.fromSnapshot(s));

  static Future<GameRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => GameRecord.fromSnapshot(s));

  static GameRecord fromSnapshot(DocumentSnapshot snapshot) => GameRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static GameRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      GameRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'GameRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is GameRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createGameRecordData({
  String? sport,
  String? skillLevel,
  LocationStruct? gamLocation,
  DateTime? time,
  bool? isended,
  String? locationname,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'sport': sport,
      'skillLevel': skillLevel,
      'GamLocation': LocationStruct().toMap(),
      'Time': time,
      'Isended': isended,
      'locationname': locationname,
    }.withoutNulls,
  );

  // Handle nested data for "GamLocation" field.
  addLocationStructData(firestoreData, gamLocation, 'GamLocation');

  return firestoreData;
}

class GameRecordDocumentEquality implements Equality<GameRecord> {
  const GameRecordDocumentEquality();

  @override
  bool equals(GameRecord? e1, GameRecord? e2) {
    const listEquality = ListEquality();
    return e1?.sport == e2?.sport &&
        e1?.skillLevel == e2?.skillLevel &&
        listEquality.equals(e1?.playersJoined, e2?.playersJoined) &&
        e1?.gamLocation == e2?.gamLocation &&
        e1?.time == e2?.time &&
        e1?.isended == e2?.isended &&
        e1?.locationname == e2?.locationname;
  }

  @override
  int hash(GameRecord? e) => const ListEquality().hash([
        e?.sport,
        e?.skillLevel,
        e?.playersJoined,
        e?.gamLocation,
        e?.time,
        e?.isended,
        e?.locationname
      ]);

  @override
  bool isValidKey(Object? o) => o is GameRecord;
}
