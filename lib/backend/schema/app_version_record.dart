import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AppVersionRecord extends FirestoreRecord {
  AppVersionRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "versionNumber" field.
  String? _versionNumber;
  String get versionNumber => _versionNumber ?? '';
  bool hasVersionNumber() => _versionNumber != null;

  void _initializeFields() {
    _versionNumber = snapshotData['versionNumber'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('appVersion');

  static Stream<AppVersionRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AppVersionRecord.fromSnapshot(s));

  static Future<AppVersionRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AppVersionRecord.fromSnapshot(s));

  static AppVersionRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AppVersionRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AppVersionRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AppVersionRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AppVersionRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AppVersionRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAppVersionRecordData({
  String? versionNumber,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'versionNumber': versionNumber,
    }.withoutNulls,
  );

  return firestoreData;
}

class AppVersionRecordDocumentEquality implements Equality<AppVersionRecord> {
  const AppVersionRecordDocumentEquality();

  @override
  bool equals(AppVersionRecord? e1, AppVersionRecord? e2) {
    return e1?.versionNumber == e2?.versionNumber;
  }

  @override
  int hash(AppVersionRecord? e) =>
      const ListEquality().hash([e?.versionNumber]);

  @override
  bool isValidKey(Object? o) => o is AppVersionRecord;
}
