import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TotalTreesInAFieldRecord extends FirestoreRecord {
  TotalTreesInAFieldRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "dateOfPlanting" field.
  String? _dateOfPlanting;
  String get dateOfPlanting => _dateOfPlanting ?? '';
  bool hasDateOfPlanting() => _dateOfPlanting != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "species" field.
  String? _species;
  String get species => _species ?? '';
  bool hasSpecies() => _species != null;

  // "treesRef" field.
  String? _treesRef;
  String get treesRef => _treesRef ?? '';
  bool hasTreesRef() => _treesRef != null;

  // "totalTrees" field.
  double? _totalTrees;
  double get totalTrees => _totalTrees ?? 0.0;
  bool hasTotalTrees() => _totalTrees != null;

  // "conditionOfTrees" field.
  String? _conditionOfTrees;
  String get conditionOfTrees => _conditionOfTrees ?? '';
  bool hasConditionOfTrees() => _conditionOfTrees != null;

  // "statusOfTrees" field.
  List<String>? _statusOfTrees;
  List<String> get statusOfTrees => _statusOfTrees ?? const [];
  bool hasStatusOfTrees() => _statusOfTrees != null;

  // "imagesDuringVisitation" field.
  List<String>? _imagesDuringVisitation;
  List<String> get imagesDuringVisitation =>
      _imagesDuringVisitation ?? const [];
  bool hasImagesDuringVisitation() => _imagesDuringVisitation != null;

  // "totalDead" field.
  List<double>? _totalDead;
  List<double> get totalDead => _totalDead ?? const [];
  bool hasTotalDead() => _totalDead != null;

  // "totalAlive" field.
  List<double>? _totalAlive;
  List<double> get totalAlive => _totalAlive ?? const [];
  bool hasTotalAlive() => _totalAlive != null;

  // "DateOfVisit" field.
  List<DateTime>? _dateOfVisit;
  List<DateTime> get dateOfVisit => _dateOfVisit ?? const [];
  bool hasDateOfVisit() => _dateOfVisit != null;

  // "TotalReplaced" field.
  List<double>? _totalReplaced;
  List<double> get totalReplaced => _totalReplaced ?? const [];
  bool hasTotalReplaced() => _totalReplaced != null;

  // "dateOfReplacement" field.
  List<DateTime>? _dateOfReplacement;
  List<DateTime> get dateOfReplacement => _dateOfReplacement ?? const [];
  bool hasDateOfReplacement() => _dateOfReplacement != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _dateOfPlanting = snapshotData['dateOfPlanting'] as String?;
    _category = snapshotData['category'] as String?;
    _species = snapshotData['species'] as String?;
    _treesRef = snapshotData['treesRef'] as String?;
    _totalTrees = castToType<double>(snapshotData['totalTrees']);
    _conditionOfTrees = snapshotData['conditionOfTrees'] as String?;
    _statusOfTrees = getDataList(snapshotData['statusOfTrees']);
    _imagesDuringVisitation =
        getDataList(snapshotData['imagesDuringVisitation']);
    _totalDead = getDataList(snapshotData['totalDead']);
    _totalAlive = getDataList(snapshotData['totalAlive']);
    _dateOfVisit = getDataList(snapshotData['DateOfVisit']);
    _totalReplaced = getDataList(snapshotData['TotalReplaced']);
    _dateOfReplacement = getDataList(snapshotData['dateOfReplacement']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('TotalTreesInAField')
          : FirebaseFirestore.instance.collectionGroup('TotalTreesInAField');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('TotalTreesInAField').doc(id);

  static Stream<TotalTreesInAFieldRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TotalTreesInAFieldRecord.fromSnapshot(s));

  static Future<TotalTreesInAFieldRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => TotalTreesInAFieldRecord.fromSnapshot(s));

  static TotalTreesInAFieldRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TotalTreesInAFieldRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TotalTreesInAFieldRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TotalTreesInAFieldRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TotalTreesInAFieldRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TotalTreesInAFieldRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTotalTreesInAFieldRecordData({
  String? dateOfPlanting,
  String? category,
  String? species,
  String? treesRef,
  double? totalTrees,
  String? conditionOfTrees,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'dateOfPlanting': dateOfPlanting,
      'category': category,
      'species': species,
      'treesRef': treesRef,
      'totalTrees': totalTrees,
      'conditionOfTrees': conditionOfTrees,
    }.withoutNulls,
  );

  return firestoreData;
}

class TotalTreesInAFieldRecordDocumentEquality
    implements Equality<TotalTreesInAFieldRecord> {
  const TotalTreesInAFieldRecordDocumentEquality();

  @override
  bool equals(TotalTreesInAFieldRecord? e1, TotalTreesInAFieldRecord? e2) {
    const listEquality = ListEquality();
    return e1?.dateOfPlanting == e2?.dateOfPlanting &&
        e1?.category == e2?.category &&
        e1?.species == e2?.species &&
        e1?.treesRef == e2?.treesRef &&
        e1?.totalTrees == e2?.totalTrees &&
        e1?.conditionOfTrees == e2?.conditionOfTrees &&
        listEquality.equals(e1?.statusOfTrees, e2?.statusOfTrees) &&
        listEquality.equals(
            e1?.imagesDuringVisitation, e2?.imagesDuringVisitation) &&
        listEquality.equals(e1?.totalDead, e2?.totalDead) &&
        listEquality.equals(e1?.totalAlive, e2?.totalAlive) &&
        listEquality.equals(e1?.dateOfVisit, e2?.dateOfVisit) &&
        listEquality.equals(e1?.totalReplaced, e2?.totalReplaced) &&
        listEquality.equals(e1?.dateOfReplacement, e2?.dateOfReplacement);
  }

  @override
  int hash(TotalTreesInAFieldRecord? e) => const ListEquality().hash([
        e?.dateOfPlanting,
        e?.category,
        e?.species,
        e?.treesRef,
        e?.totalTrees,
        e?.conditionOfTrees,
        e?.statusOfTrees,
        e?.imagesDuringVisitation,
        e?.totalDead,
        e?.totalAlive,
        e?.dateOfVisit,
        e?.totalReplaced,
        e?.dateOfReplacement
      ]);

  @override
  bool isValidKey(Object? o) => o is TotalTreesInAFieldRecord;
}
