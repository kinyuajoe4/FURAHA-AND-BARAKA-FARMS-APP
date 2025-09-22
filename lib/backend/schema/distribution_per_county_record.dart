import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DistributionPerCountyRecord extends FirestoreRecord {
  DistributionPerCountyRecord._(
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

  // "totalTrees" field.
  double? _totalTrees;
  double get totalTrees => _totalTrees ?? 0.0;
  bool hasTotalTrees() => _totalTrees != null;

  // "colorCode" field.
  Color? _colorCode;
  Color? get colorCode => _colorCode;
  bool hasColorCode() => _colorCode != null;

  // "mormitored" field.
  bool? _mormitored;
  bool get mormitored => _mormitored ?? false;
  bool hasMormitored() => _mormitored != null;

  // "monitoredInsitutions" field.
  double? _monitoredInsitutions;
  double get monitoredInsitutions => _monitoredInsitutions ?? 0.0;
  bool hasMonitoredInsitutions() => _monitoredInsitutions != null;

  // "noOfTreesPerPhase" field.
  List<double>? _noOfTreesPerPhase;
  List<double> get noOfTreesPerPhase => _noOfTreesPerPhase ?? const [];
  bool hasNoOfTreesPerPhase() => _noOfTreesPerPhase != null;

  // "phase" field.
  double? _phase;
  double get phase => _phase ?? 0.0;
  bool hasPhase() => _phase != null;

  // "monitoredTrees" field.
  double? _monitoredTrees;
  double get monitoredTrees => _monitoredTrees ?? 0.0;
  bool hasMonitoredTrees() => _monitoredTrees != null;

  void _initializeFields() {
    _county = snapshotData['county'] as String?;
    _noOfInsitutions = castToType<double>(snapshotData['noOfInsitutions']);
    _totalTrees = castToType<double>(snapshotData['totalTrees']);
    _colorCode = getSchemaColor(snapshotData['colorCode']);
    _mormitored = snapshotData['mormitored'] as bool?;
    _monitoredInsitutions =
        castToType<double>(snapshotData['monitoredInsitutions']);
    _noOfTreesPerPhase = getDataList(snapshotData['noOfTreesPerPhase']);
    _phase = castToType<double>(snapshotData['phase']);
    _monitoredTrees = castToType<double>(snapshotData['monitoredTrees']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('distributionPerCounty');

  static Stream<DistributionPerCountyRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map((s) => DistributionPerCountyRecord.fromSnapshot(s));

  static Future<DistributionPerCountyRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => DistributionPerCountyRecord.fromSnapshot(s));

  static DistributionPerCountyRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DistributionPerCountyRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DistributionPerCountyRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DistributionPerCountyRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DistributionPerCountyRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DistributionPerCountyRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDistributionPerCountyRecordData({
  String? county,
  double? noOfInsitutions,
  double? totalTrees,
  Color? colorCode,
  bool? mormitored,
  double? monitoredInsitutions,
  double? phase,
  double? monitoredTrees,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'county': county,
      'noOfInsitutions': noOfInsitutions,
      'totalTrees': totalTrees,
      'colorCode': colorCode,
      'mormitored': mormitored,
      'monitoredInsitutions': monitoredInsitutions,
      'phase': phase,
      'monitoredTrees': monitoredTrees,
    }.withoutNulls,
  );

  return firestoreData;
}

class DistributionPerCountyRecordDocumentEquality
    implements Equality<DistributionPerCountyRecord> {
  const DistributionPerCountyRecordDocumentEquality();

  @override
  bool equals(
      DistributionPerCountyRecord? e1, DistributionPerCountyRecord? e2) {
    const listEquality = ListEquality();
    return e1?.county == e2?.county &&
        e1?.noOfInsitutions == e2?.noOfInsitutions &&
        e1?.totalTrees == e2?.totalTrees &&
        e1?.colorCode == e2?.colorCode &&
        e1?.mormitored == e2?.mormitored &&
        e1?.monitoredInsitutions == e2?.monitoredInsitutions &&
        listEquality.equals(e1?.noOfTreesPerPhase, e2?.noOfTreesPerPhase) &&
        e1?.phase == e2?.phase &&
        e1?.monitoredTrees == e2?.monitoredTrees;
  }

  @override
  int hash(DistributionPerCountyRecord? e) => const ListEquality().hash([
        e?.county,
        e?.noOfInsitutions,
        e?.totalTrees,
        e?.colorCode,
        e?.mormitored,
        e?.monitoredInsitutions,
        e?.noOfTreesPerPhase,
        e?.phase,
        e?.monitoredTrees
      ]);

  @override
  bool isValidKey(Object? o) => o is DistributionPerCountyRecord;
}
