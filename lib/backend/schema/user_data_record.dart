import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserDataRecord extends FirestoreRecord {
  UserDataRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "intolerances" field.
  List<String>? _intolerances;
  List<String> get intolerances => _intolerances ?? const [];
  bool hasIntolerances() => _intolerances != null;

  // "notes" field.
  List<String>? _notes;
  List<String> get notes => _notes ?? const [];
  bool hasNotes() => _notes != null;

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

  // "intorlerance_comment" field.
  String? _intorleranceComment;
  String get intorleranceComment => _intorleranceComment ?? '';
  bool hasIntorleranceComment() => _intorleranceComment != null;

  // "setup_complete" field.
  bool? _setupComplete;
  bool get setupComplete => _setupComplete ?? false;
  bool hasSetupComplete() => _setupComplete != null;

  // "requests_made" field.
  int? _requestsMade;
  int get requestsMade => _requestsMade ?? 0;
  bool hasRequestsMade() => _requestsMade != null;

  void _initializeFields() {
    _intolerances = getDataList(snapshotData['intolerances']);
    _notes = getDataList(snapshotData['notes']);
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _intorleranceComment = snapshotData['intorlerance_comment'] as String?;
    _setupComplete = snapshotData['setup_complete'] as bool?;
    _requestsMade = castToType<int>(snapshotData['requests_made']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('user_data');

  static Stream<UserDataRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserDataRecord.fromSnapshot(s));

  static Future<UserDataRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserDataRecord.fromSnapshot(s));

  static UserDataRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UserDataRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserDataRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserDataRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserDataRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserDataRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserDataRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? intorleranceComment,
  bool? setupComplete,
  int? requestsMade,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'intorlerance_comment': intorleranceComment,
      'setup_complete': setupComplete,
      'requests_made': requestsMade,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserDataRecordDocumentEquality implements Equality<UserDataRecord> {
  const UserDataRecordDocumentEquality();

  @override
  bool equals(UserDataRecord? e1, UserDataRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.intolerances, e2?.intolerances) &&
        listEquality.equals(e1?.notes, e2?.notes) &&
        e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.intorleranceComment == e2?.intorleranceComment &&
        e1?.setupComplete == e2?.setupComplete &&
        e1?.requestsMade == e2?.requestsMade;
  }

  @override
  int hash(UserDataRecord? e) => const ListEquality().hash([
        e?.intolerances,
        e?.notes,
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.intorleranceComment,
        e?.setupComplete,
        e?.requestsMade
      ]);

  @override
  bool isValidKey(Object? o) => o is UserDataRecord;
}
