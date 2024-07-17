import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "Myskilllevel" field.
  String? _myskilllevel;
  String get myskilllevel => _myskilllevel ?? '';
  bool hasMyskilllevel() => _myskilllevel != null;

  // "MySport" field.
  String? _mySport;
  String get mySport => _mySport ?? '';
  bool hasMySport() => _mySport != null;

  // "Bio" field.
  String? _bio;
  String get bio => _bio ?? '';
  bool hasBio() => _bio != null;

  // "Rating" field.
  List<int>? _rating;
  List<int> get rating => _rating ?? const [];
  bool hasRating() => _rating != null;

  // "Defaultpic" field.
  String? _defaultpic;
  String get defaultpic => _defaultpic ?? '';
  bool hasDefaultpic() => _defaultpic != null;

  // "History" field.
  List<DocumentReference>? _history;
  List<DocumentReference> get history => _history ?? const [];
  bool hasHistory() => _history != null;

  // "photostring" field.
  String? _photostring;
  String get photostring => _photostring ?? '';
  bool hasPhotostring() => _photostring != null;

  // "SpecialOlympic" field.
  bool? _specialOlympic;
  bool get specialOlympic => _specialOlympic ?? false;
  bool hasSpecialOlympic() => _specialOlympic != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _myskilllevel = snapshotData['Myskilllevel'] as String?;
    _mySport = snapshotData['MySport'] as String?;
    _bio = snapshotData['Bio'] as String?;
    _rating = getDataList(snapshotData['Rating']);
    _defaultpic = snapshotData['Defaultpic'] as String?;
    _history = getDataList(snapshotData['History']);
    _photostring = snapshotData['photostring'] as String?;
    _specialOlympic = snapshotData['SpecialOlympic'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? myskilllevel,
  String? mySport,
  String? bio,
  String? defaultpic,
  String? photostring,
  bool? specialOlympic,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'Myskilllevel': myskilllevel,
      'MySport': mySport,
      'Bio': bio,
      'Defaultpic': defaultpic,
      'photostring': photostring,
      'SpecialOlympic': specialOlympic,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    const listEquality = ListEquality();
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.myskilllevel == e2?.myskilllevel &&
        e1?.mySport == e2?.mySport &&
        e1?.bio == e2?.bio &&
        listEquality.equals(e1?.rating, e2?.rating) &&
        e1?.defaultpic == e2?.defaultpic &&
        listEquality.equals(e1?.history, e2?.history) &&
        e1?.photostring == e2?.photostring &&
        e1?.specialOlympic == e2?.specialOlympic;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.myskilllevel,
        e?.mySport,
        e?.bio,
        e?.rating,
        e?.defaultpic,
        e?.history,
        e?.photostring,
        e?.specialOlympic
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
