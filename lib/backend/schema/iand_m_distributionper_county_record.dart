import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class IandMDistributionperCountyRecord extends FirestoreRecord {
  IandMDistributionperCountyRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "county" field.
  String? _county;
  String get county => _county ?? '';
  bool hasCounty() => _county != null;

  // "noOfInsitutions" field.
  double? _noOfInsitutions;
  double get noOfInsitutions => _noOfInsitutions ?? 0.0;
  bool hasNoOfInsitutions() => _noOfInsitutions != null;

  void _initializeFields() {
    _county = snapshotData['county'] as String?;
    _noOfInsitutions = castToType<double>(snapshotData['noOfInsitutions']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('IandMDistributionperCounty');

  static Stream<IandMDistributionperCountyRecord> getDocument(
          DocumentReference ref) =>
      ref
          .snapshots()
          .map((s) => IandMDistributionperCountyRecord.fromSnapshot(s));

  static Future<IandMDistributionperCountyRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => IandMDistributionperCountyRecord.fromSnapshot(s));

  static IandMDistributionperCountyRecord fromSnapshot(
          DocumentSnapshot snapshot) =>
      IandMDistributionperCountyRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static IandMDistributionperCountyRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      IandMDistributionperCountyRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'IandMDistributionperCountyRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is IandMDistributionperCountyRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createIandMDistributionperCountyRecordData({
  String? county,
  double? noOfInsitutions,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'county': county,
      'noOfInsitutions': noOfInsitutions,
    }.withoutNulls,
  );

  return firestoreData;
}

class IandMDistributionperCountyRecordDocumentEquality
    implements Equality<IandMDistributionperCountyRecord> {
  const IandMDistributionperCountyRecordDocumentEquality();

  @override
  bool equals(IandMDistributionperCountyRecord? e1,
      IandMDistributionperCountyRecord? e2) {
    return e1?.county == e2?.county &&
        e1?.noOfInsitutions == e2?.noOfInsitutions;
  }

  @override
  int hash(IandMDistributionperCountyRecord? e) =>
      const ListEquality().hash([e?.county, e?.noOfInsitutions]);

  @override
  bool isValidKey(Object? o) => o is IandMDistributionperCountyRecord;
}
