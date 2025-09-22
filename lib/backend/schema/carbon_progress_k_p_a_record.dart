import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CarbonProgressKPARecord extends FirestoreRecord {
  CarbonProgressKPARecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "YEAR" field.
  String? _year;
  String get year => _year ?? '';
  bool hasYear() => _year != null;

  // "TotalTreesPlanted" field.
  double? _totalTreesPlanted;
  double get totalTreesPlanted => _totalTreesPlanted ?? 0.0;
  bool hasTotalTreesPlanted() => _totalTreesPlanted != null;

  // "TotalCarbonAbsorbed" field.
  double? _totalCarbonAbsorbed;
  double get totalCarbonAbsorbed => _totalCarbonAbsorbed ?? 0.0;
  bool hasTotalCarbonAbsorbed() => _totalCarbonAbsorbed != null;

  // "CarbonCredit" field.
  double? _carbonCredit;
  double get carbonCredit => _carbonCredit ?? 0.0;
  bool hasCarbonCredit() => _carbonCredit != null;

  // "ParisGoalAchievement" field.
  double? _parisGoalAchievement;
  double get parisGoalAchievement => _parisGoalAchievement ?? 0.0;
  bool hasParisGoalAchievement() => _parisGoalAchievement != null;

  void _initializeFields() {
    _year = snapshotData['YEAR'] as String?;
    _totalTreesPlanted = castToType<double>(snapshotData['TotalTreesPlanted']);
    _totalCarbonAbsorbed =
        castToType<double>(snapshotData['TotalCarbonAbsorbed']);
    _carbonCredit = castToType<double>(snapshotData['CarbonCredit']);
    _parisGoalAchievement =
        castToType<double>(snapshotData['ParisGoalAchievement']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('CarbonProgressKPA');

  static Stream<CarbonProgressKPARecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CarbonProgressKPARecord.fromSnapshot(s));

  static Future<CarbonProgressKPARecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => CarbonProgressKPARecord.fromSnapshot(s));

  static CarbonProgressKPARecord fromSnapshot(DocumentSnapshot snapshot) =>
      CarbonProgressKPARecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CarbonProgressKPARecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CarbonProgressKPARecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CarbonProgressKPARecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CarbonProgressKPARecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCarbonProgressKPARecordData({
  String? year,
  double? totalTreesPlanted,
  double? totalCarbonAbsorbed,
  double? carbonCredit,
  double? parisGoalAchievement,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'YEAR': year,
      'TotalTreesPlanted': totalTreesPlanted,
      'TotalCarbonAbsorbed': totalCarbonAbsorbed,
      'CarbonCredit': carbonCredit,
      'ParisGoalAchievement': parisGoalAchievement,
    }.withoutNulls,
  );

  return firestoreData;
}

class CarbonProgressKPARecordDocumentEquality
    implements Equality<CarbonProgressKPARecord> {
  const CarbonProgressKPARecordDocumentEquality();

  @override
  bool equals(CarbonProgressKPARecord? e1, CarbonProgressKPARecord? e2) {
    return e1?.year == e2?.year &&
        e1?.totalTreesPlanted == e2?.totalTreesPlanted &&
        e1?.totalCarbonAbsorbed == e2?.totalCarbonAbsorbed &&
        e1?.carbonCredit == e2?.carbonCredit &&
        e1?.parisGoalAchievement == e2?.parisGoalAchievement;
  }

  @override
  int hash(CarbonProgressKPARecord? e) => const ListEquality().hash([
        e?.year,
        e?.totalTreesPlanted,
        e?.totalCarbonAbsorbed,
        e?.carbonCredit,
        e?.parisGoalAchievement
      ]);

  @override
  bool isValidKey(Object? o) => o is CarbonProgressKPARecord;
}
