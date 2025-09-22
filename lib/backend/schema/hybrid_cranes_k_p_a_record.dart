import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HybridCranesKPARecord extends FirestoreRecord {
  HybridCranesKPARecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "craneSize" field.
  String? _craneSize;
  String get craneSize => _craneSize ?? '';
  bool hasCraneSize() => _craneSize != null;

  // "operationMechanism" field.
  String? _operationMechanism;
  String get operationMechanism => _operationMechanism ?? '';
  bool hasOperationMechanism() => _operationMechanism != null;

  // "noOfCranes" field.
  double? _noOfCranes;
  double get noOfCranes => _noOfCranes ?? 0.0;
  bool hasNoOfCranes() => _noOfCranes != null;

  // "consumptionInlitresperDay" field.
  double? _consumptionInlitresperDay;
  double get consumptionInlitresperDay => _consumptionInlitresperDay ?? 0.0;
  bool hasConsumptionInlitresperDay() => _consumptionInlitresperDay != null;

  // "totalFuel" field.
  double? _totalFuel;
  double get totalFuel => _totalFuel ?? 0.0;
  bool hasTotalFuel() => _totalFuel != null;

  void _initializeFields() {
    _craneSize = snapshotData['craneSize'] as String?;
    _operationMechanism = snapshotData['operationMechanism'] as String?;
    _noOfCranes = castToType<double>(snapshotData['noOfCranes']);
    _consumptionInlitresperDay =
        castToType<double>(snapshotData['consumptionInlitresperDay']);
    _totalFuel = castToType<double>(snapshotData['totalFuel']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('hybridCranesKPA');

  static Stream<HybridCranesKPARecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => HybridCranesKPARecord.fromSnapshot(s));

  static Future<HybridCranesKPARecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => HybridCranesKPARecord.fromSnapshot(s));

  static HybridCranesKPARecord fromSnapshot(DocumentSnapshot snapshot) =>
      HybridCranesKPARecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static HybridCranesKPARecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      HybridCranesKPARecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'HybridCranesKPARecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is HybridCranesKPARecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createHybridCranesKPARecordData({
  String? craneSize,
  String? operationMechanism,
  double? noOfCranes,
  double? consumptionInlitresperDay,
  double? totalFuel,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'craneSize': craneSize,
      'operationMechanism': operationMechanism,
      'noOfCranes': noOfCranes,
      'consumptionInlitresperDay': consumptionInlitresperDay,
      'totalFuel': totalFuel,
    }.withoutNulls,
  );

  return firestoreData;
}

class HybridCranesKPARecordDocumentEquality
    implements Equality<HybridCranesKPARecord> {
  const HybridCranesKPARecordDocumentEquality();

  @override
  bool equals(HybridCranesKPARecord? e1, HybridCranesKPARecord? e2) {
    return e1?.craneSize == e2?.craneSize &&
        e1?.operationMechanism == e2?.operationMechanism &&
        e1?.noOfCranes == e2?.noOfCranes &&
        e1?.consumptionInlitresperDay == e2?.consumptionInlitresperDay &&
        e1?.totalFuel == e2?.totalFuel;
  }

  @override
  int hash(HybridCranesKPARecord? e) => const ListEquality().hash([
        e?.craneSize,
        e?.operationMechanism,
        e?.noOfCranes,
        e?.consumptionInlitresperDay,
        e?.totalFuel
      ]);

  @override
  bool isValidKey(Object? o) => o is HybridCranesKPARecord;
}
