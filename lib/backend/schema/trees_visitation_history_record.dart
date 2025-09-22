import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TreesVisitationHistoryRecord extends FirestoreRecord {
  TreesVisitationHistoryRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "visitDate" field.
  DateTime? _visitDate;
  DateTime? get visitDate => _visitDate;
  bool hasVisitDate() => _visitDate != null;

  // "fieldName" field.
  String? _fieldName;
  String get fieldName => _fieldName ?? '';
  bool hasFieldName() => _fieldName != null;

  // "speciesVisited" field.
  String? _speciesVisited;
  String get speciesVisited => _speciesVisited ?? '';
  bool hasSpeciesVisited() => _speciesVisited != null;

  // "totalConfimedAlive" field.
  double? _totalConfimedAlive;
  double get totalConfimedAlive => _totalConfimedAlive ?? 0.0;
  bool hasTotalConfimedAlive() => _totalConfimedAlive != null;

  // "totalConfimedDead" field.
  double? _totalConfimedDead;
  double get totalConfimedDead => _totalConfimedDead ?? 0.0;
  bool hasTotalConfimedDead() => _totalConfimedDead != null;

  // "extraCommentsOnSpecies" field.
  String? _extraCommentsOnSpecies;
  String get extraCommentsOnSpecies => _extraCommentsOnSpecies ?? '';
  bool hasExtraCommentsOnSpecies() => _extraCommentsOnSpecies != null;

  // "speciesImagesTaken" field.
  List<String>? _speciesImagesTaken;
  List<String> get speciesImagesTaken => _speciesImagesTaken ?? const [];
  bool hasSpeciesImagesTaken() => _speciesImagesTaken != null;

  // "County" field.
  String? _county;
  String get county => _county ?? '';
  bool hasCounty() => _county != null;

  // "nameOfFocalPresent" field.
  String? _nameOfFocalPresent;
  String get nameOfFocalPresent => _nameOfFocalPresent ?? '';
  bool hasNameOfFocalPresent() => _nameOfFocalPresent != null;

  // "contactofFocalPerson" field.
  String? _contactofFocalPerson;
  String get contactofFocalPerson => _contactofFocalPerson ?? '';
  bool hasContactofFocalPerson() => _contactofFocalPerson != null;

  // "averageHeight" field.
  String? _averageHeight;
  String get averageHeight => _averageHeight ?? '';
  bool hasAverageHeight() => _averageHeight != null;

  // "OverallTreeHealth" field.
  String? _overallTreeHealth;
  String get overallTreeHealth => _overallTreeHealth ?? '';
  bool hasOverallTreeHealth() => _overallTreeHealth != null;

  // "evidenceOfWatering" field.
  String? _evidenceOfWatering;
  String get evidenceOfWatering => _evidenceOfWatering ?? '';
  bool hasEvidenceOfWatering() => _evidenceOfWatering != null;

  // "humanInterference" field.
  String? _humanInterference;
  String get humanInterference => _humanInterference ?? '';
  bool hasHumanInterference() => _humanInterference != null;

  // "notedRisks" field.
  String? _notedRisks;
  String get notedRisks => _notedRisks ?? '';
  bool hasNotedRisks() => _notedRisks != null;

  // "planterCompany" field.
  String? _planterCompany;
  String get planterCompany => _planterCompany ?? '';
  bool hasPlanterCompany() => _planterCompany != null;

  // "visitedBy" field.
  DocumentReference? _visitedBy;
  DocumentReference? get visitedBy => _visitedBy;
  bool hasVisitedBy() => _visitedBy != null;

  void _initializeFields() {
    _visitDate = snapshotData['visitDate'] as DateTime?;
    _fieldName = snapshotData['fieldName'] as String?;
    _speciesVisited = snapshotData['speciesVisited'] as String?;
    _totalConfimedAlive =
        castToType<double>(snapshotData['totalConfimedAlive']);
    _totalConfimedDead = castToType<double>(snapshotData['totalConfimedDead']);
    _extraCommentsOnSpecies = snapshotData['extraCommentsOnSpecies'] as String?;
    _speciesImagesTaken = getDataList(snapshotData['speciesImagesTaken']);
    _county = snapshotData['County'] as String?;
    _nameOfFocalPresent = snapshotData['nameOfFocalPresent'] as String?;
    _contactofFocalPerson = snapshotData['contactofFocalPerson'] as String?;
    _averageHeight = snapshotData['averageHeight'] as String?;
    _overallTreeHealth = snapshotData['OverallTreeHealth'] as String?;
    _evidenceOfWatering = snapshotData['evidenceOfWatering'] as String?;
    _humanInterference = snapshotData['humanInterference'] as String?;
    _notedRisks = snapshotData['notedRisks'] as String?;
    _planterCompany = snapshotData['planterCompany'] as String?;
    _visitedBy = snapshotData['visitedBy'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('treesVisitationHistory');

  static Stream<TreesVisitationHistoryRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map((s) => TreesVisitationHistoryRecord.fromSnapshot(s));

  static Future<TreesVisitationHistoryRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => TreesVisitationHistoryRecord.fromSnapshot(s));

  static TreesVisitationHistoryRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TreesVisitationHistoryRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TreesVisitationHistoryRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TreesVisitationHistoryRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TreesVisitationHistoryRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TreesVisitationHistoryRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTreesVisitationHistoryRecordData({
  DateTime? visitDate,
  String? fieldName,
  String? speciesVisited,
  double? totalConfimedAlive,
  double? totalConfimedDead,
  String? extraCommentsOnSpecies,
  String? county,
  String? nameOfFocalPresent,
  String? contactofFocalPerson,
  String? averageHeight,
  String? overallTreeHealth,
  String? evidenceOfWatering,
  String? humanInterference,
  String? notedRisks,
  String? planterCompany,
  DocumentReference? visitedBy,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'visitDate': visitDate,
      'fieldName': fieldName,
      'speciesVisited': speciesVisited,
      'totalConfimedAlive': totalConfimedAlive,
      'totalConfimedDead': totalConfimedDead,
      'extraCommentsOnSpecies': extraCommentsOnSpecies,
      'County': county,
      'nameOfFocalPresent': nameOfFocalPresent,
      'contactofFocalPerson': contactofFocalPerson,
      'averageHeight': averageHeight,
      'OverallTreeHealth': overallTreeHealth,
      'evidenceOfWatering': evidenceOfWatering,
      'humanInterference': humanInterference,
      'notedRisks': notedRisks,
      'planterCompany': planterCompany,
      'visitedBy': visitedBy,
    }.withoutNulls,
  );

  return firestoreData;
}

class TreesVisitationHistoryRecordDocumentEquality
    implements Equality<TreesVisitationHistoryRecord> {
  const TreesVisitationHistoryRecordDocumentEquality();

  @override
  bool equals(
      TreesVisitationHistoryRecord? e1, TreesVisitationHistoryRecord? e2) {
    const listEquality = ListEquality();
    return e1?.visitDate == e2?.visitDate &&
        e1?.fieldName == e2?.fieldName &&
        e1?.speciesVisited == e2?.speciesVisited &&
        e1?.totalConfimedAlive == e2?.totalConfimedAlive &&
        e1?.totalConfimedDead == e2?.totalConfimedDead &&
        e1?.extraCommentsOnSpecies == e2?.extraCommentsOnSpecies &&
        listEquality.equals(e1?.speciesImagesTaken, e2?.speciesImagesTaken) &&
        e1?.county == e2?.county &&
        e1?.nameOfFocalPresent == e2?.nameOfFocalPresent &&
        e1?.contactofFocalPerson == e2?.contactofFocalPerson &&
        e1?.averageHeight == e2?.averageHeight &&
        e1?.overallTreeHealth == e2?.overallTreeHealth &&
        e1?.evidenceOfWatering == e2?.evidenceOfWatering &&
        e1?.humanInterference == e2?.humanInterference &&
        e1?.notedRisks == e2?.notedRisks &&
        e1?.planterCompany == e2?.planterCompany &&
        e1?.visitedBy == e2?.visitedBy;
  }

  @override
  int hash(TreesVisitationHistoryRecord? e) => const ListEquality().hash([
        e?.visitDate,
        e?.fieldName,
        e?.speciesVisited,
        e?.totalConfimedAlive,
        e?.totalConfimedDead,
        e?.extraCommentsOnSpecies,
        e?.speciesImagesTaken,
        e?.county,
        e?.nameOfFocalPresent,
        e?.contactofFocalPerson,
        e?.averageHeight,
        e?.overallTreeHealth,
        e?.evidenceOfWatering,
        e?.humanInterference,
        e?.notedRisks,
        e?.planterCompany,
        e?.visitedBy
      ]);

  @override
  bool isValidKey(Object? o) => o is TreesVisitationHistoryRecord;
}
