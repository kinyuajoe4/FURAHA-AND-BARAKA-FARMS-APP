import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TotalTreesPerSpeciesRecord extends FirestoreRecord {
  TotalTreesPerSpeciesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "treeName" field.
  String? _treeName;
  String get treeName => _treeName ?? '';
  bool hasTreeName() => _treeName != null;

  // "totalTrees" field.
  double? _totalTrees;
  double get totalTrees => _totalTrees ?? 0.0;
  bool hasTotalTrees() => _totalTrees != null;

  // "treeDensity" field.
  double? _treeDensity;
  double get treeDensity => _treeDensity ?? 0.0;
  bool hasTreeDensity() => _treeDensity != null;

  // "diameter" field.
  double? _diameter;
  double get diameter => _diameter ?? 0.0;
  bool hasDiameter() => _diameter != null;

  // "height" field.
  double? _height;
  double get height => _height ?? 0.0;
  bool hasHeight() => _height != null;

  // "totalCarbonSequestred" field.
  double? _totalCarbonSequestred;
  double get totalCarbonSequestred => _totalCarbonSequestred ?? 0.0;
  bool hasTotalCarbonSequestred() => _totalCarbonSequestred != null;

  // "isTerrestrial" field.
  bool? _isTerrestrial;
  bool get isTerrestrial => _isTerrestrial ?? false;
  bool hasIsTerrestrial() => _isTerrestrial != null;

  // "isMangroove" field.
  bool? _isMangroove;
  bool get isMangroove => _isMangroove ?? false;
  bool hasIsMangroove() => _isMangroove != null;

  // "planterCompany" field.
  String? _planterCompany;
  String get planterCompany => _planterCompany ?? '';
  bool hasPlanterCompany() => _planterCompany != null;

  void _initializeFields() {
    _treeName = snapshotData['treeName'] as String?;
    _totalTrees = castToType<double>(snapshotData['totalTrees']);
    _treeDensity = castToType<double>(snapshotData['treeDensity']);
    _diameter = castToType<double>(snapshotData['diameter']);
    _height = castToType<double>(snapshotData['height']);
    _totalCarbonSequestred =
        castToType<double>(snapshotData['totalCarbonSequestred']);
    _isTerrestrial = snapshotData['isTerrestrial'] as bool?;
    _isMangroove = snapshotData['isMangroove'] as bool?;
    _planterCompany = snapshotData['planterCompany'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('totalTreesPerSpecies');

  static Stream<TotalTreesPerSpeciesRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map((s) => TotalTreesPerSpeciesRecord.fromSnapshot(s));

  static Future<TotalTreesPerSpeciesRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => TotalTreesPerSpeciesRecord.fromSnapshot(s));

  static TotalTreesPerSpeciesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TotalTreesPerSpeciesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TotalTreesPerSpeciesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TotalTreesPerSpeciesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TotalTreesPerSpeciesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TotalTreesPerSpeciesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTotalTreesPerSpeciesRecordData({
  String? treeName,
  double? totalTrees,
  double? treeDensity,
  double? diameter,
  double? height,
  double? totalCarbonSequestred,
  bool? isTerrestrial,
  bool? isMangroove,
  String? planterCompany,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'treeName': treeName,
      'totalTrees': totalTrees,
      'treeDensity': treeDensity,
      'diameter': diameter,
      'height': height,
      'totalCarbonSequestred': totalCarbonSequestred,
      'isTerrestrial': isTerrestrial,
      'isMangroove': isMangroove,
      'planterCompany': planterCompany,
    }.withoutNulls,
  );

  return firestoreData;
}

class TotalTreesPerSpeciesRecordDocumentEquality
    implements Equality<TotalTreesPerSpeciesRecord> {
  const TotalTreesPerSpeciesRecordDocumentEquality();

  @override
  bool equals(TotalTreesPerSpeciesRecord? e1, TotalTreesPerSpeciesRecord? e2) {
    return e1?.treeName == e2?.treeName &&
        e1?.totalTrees == e2?.totalTrees &&
        e1?.treeDensity == e2?.treeDensity &&
        e1?.diameter == e2?.diameter &&
        e1?.height == e2?.height &&
        e1?.totalCarbonSequestred == e2?.totalCarbonSequestred &&
        e1?.isTerrestrial == e2?.isTerrestrial &&
        e1?.isMangroove == e2?.isMangroove &&
        e1?.planterCompany == e2?.planterCompany;
  }

  @override
  int hash(TotalTreesPerSpeciesRecord? e) => const ListEquality().hash([
        e?.treeName,
        e?.totalTrees,
        e?.treeDensity,
        e?.diameter,
        e?.height,
        e?.totalCarbonSequestred,
        e?.isTerrestrial,
        e?.isMangroove,
        e?.planterCompany
      ]);

  @override
  bool isValidKey(Object? o) => o is TotalTreesPerSpeciesRecord;
}
