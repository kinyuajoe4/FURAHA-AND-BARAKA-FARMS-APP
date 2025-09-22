import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UNIAHDistributionPerCountyRecord extends FirestoreRecord {
  UNIAHDistributionPerCountyRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "county" field.
  String? _county;
  String get county => _county ?? '';
  bool hasCounty() => _county != null;

  // "noOfInstitutions" field.
  double? _noOfInstitutions;
  double get noOfInstitutions => _noOfInstitutions ?? 0.0;
  bool hasNoOfInstitutions() => _noOfInstitutions != null;

  // "noOfTrees" field.
  double? _noOfTrees;
  double get noOfTrees => _noOfTrees ?? 0.0;
  bool hasNoOfTrees() => _noOfTrees != null;

  // "colorCode" field.
  Color? _colorCode;
  Color? get colorCode => _colorCode;
  bool hasColorCode() => _colorCode != null;

  // "monitoredInstitutions" field.
  double? _monitoredInstitutions;
  double get monitoredInstitutions => _monitoredInstitutions ?? 0.0;
  bool hasMonitoredInstitutions() => _monitoredInstitutions != null;

  void _initializeFields() {
    _county = snapshotData['county'] as String?;
    _noOfInstitutions = castToType<double>(snapshotData['noOfInstitutions']);
    _noOfTrees = castToType<double>(snapshotData['noOfTrees']);
    _colorCode = getSchemaColor(snapshotData['colorCode']);
    _monitoredInstitutions =
        castToType<double>(snapshotData['monitoredInstitutions']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('UNIAHDistributionPerCounty');

  static Stream<UNIAHDistributionPerCountyRecord> getDocument(
          DocumentReference ref) =>
      ref
          .snapshots()
          .map((s) => UNIAHDistributionPerCountyRecord.fromSnapshot(s));

  static Future<UNIAHDistributionPerCountyRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => UNIAHDistributionPerCountyRecord.fromSnapshot(s));

  static UNIAHDistributionPerCountyRecord fromSnapshot(
          DocumentSnapshot snapshot) =>
      UNIAHDistributionPerCountyRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UNIAHDistributionPerCountyRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UNIAHDistributionPerCountyRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UNIAHDistributionPerCountyRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UNIAHDistributionPerCountyRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUNIAHDistributionPerCountyRecordData({
  String? county,
  double? noOfInstitutions,
  double? noOfTrees,
  Color? colorCode,
  double? monitoredInstitutions,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'county': county,
      'noOfInstitutions': noOfInstitutions,
      'noOfTrees': noOfTrees,
      'colorCode': colorCode,
      'monitoredInstitutions': monitoredInstitutions,
    }.withoutNulls,
  );

  return firestoreData;
}

class UNIAHDistributionPerCountyRecordDocumentEquality
    implements Equality<UNIAHDistributionPerCountyRecord> {
  const UNIAHDistributionPerCountyRecordDocumentEquality();

  @override
  bool equals(UNIAHDistributionPerCountyRecord? e1,
      UNIAHDistributionPerCountyRecord? e2) {
    return e1?.county == e2?.county &&
        e1?.noOfInstitutions == e2?.noOfInstitutions &&
        e1?.noOfTrees == e2?.noOfTrees &&
        e1?.colorCode == e2?.colorCode &&
        e1?.monitoredInstitutions == e2?.monitoredInstitutions;
  }

  @override
  int hash(UNIAHDistributionPerCountyRecord? e) => const ListEquality().hash([
        e?.county,
        e?.noOfInstitutions,
        e?.noOfTrees,
        e?.colorCode,
        e?.monitoredInstitutions
      ]);

  @override
  bool isValidKey(Object? o) => o is UNIAHDistributionPerCountyRecord;
}
