import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TreesRecord extends FirestoreRecord {
  TreesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "County" field.
  String? _county;
  String get county => _county ?? '';
  bool hasCounty() => _county != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "fieldnameOrInsitition" field.
  String? _fieldnameOrInsitition;
  String get fieldnameOrInsitition => _fieldnameOrInsitition ?? '';
  bool hasFieldnameOrInsitition() => _fieldnameOrInsitition != null;

  // "species" field.
  String? _species;
  String get species => _species ?? '';
  bool hasSpecies() => _species != null;

  // "age" field.
  int? _age;
  int get age => _age ?? 0;
  bool hasAge() => _age != null;

  // "height" field.
  int? _height;
  int get height => _height ?? 0;
  bool hasHeight() => _height != null;

  // "diameter" field.
  int? _diameter;
  int get diameter => _diameter ?? 0;
  bool hasDiameter() => _diameter != null;

  // "canopy" field.
  String? _canopy;
  String get canopy => _canopy ?? '';
  bool hasCanopy() => _canopy != null;

  // "healthStatus" field.
  String? _healthStatus;
  String get healthStatus => _healthStatus ?? '';
  bool hasHealthStatus() => _healthStatus != null;

  // "TreeTag" field.
  String? _treeTag;
  String get treeTag => _treeTag ?? '';
  bool hasTreeTag() => _treeTag != null;

  // "BriefDescription" field.
  String? _briefDescription;
  String get briefDescription => _briefDescription ?? '';
  bool hasBriefDescription() => _briefDescription != null;

  void _initializeFields() {
    _county = snapshotData['County'] as String?;
    _image = snapshotData['image'] as String?;
    _fieldnameOrInsitition = snapshotData['fieldnameOrInsitition'] as String?;
    _species = snapshotData['species'] as String?;
    _age = castToType<int>(snapshotData['age']);
    _height = castToType<int>(snapshotData['height']);
    _diameter = castToType<int>(snapshotData['diameter']);
    _canopy = snapshotData['canopy'] as String?;
    _healthStatus = snapshotData['healthStatus'] as String?;
    _treeTag = snapshotData['TreeTag'] as String?;
    _briefDescription = snapshotData['BriefDescription'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Trees');

  static Stream<TreesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TreesRecord.fromSnapshot(s));

  static Future<TreesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TreesRecord.fromSnapshot(s));

  static TreesRecord fromSnapshot(DocumentSnapshot snapshot) => TreesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TreesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TreesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TreesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TreesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTreesRecordData({
  String? county,
  String? image,
  String? fieldnameOrInsitition,
  String? species,
  int? age,
  int? height,
  int? diameter,
  String? canopy,
  String? healthStatus,
  String? treeTag,
  String? briefDescription,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'County': county,
      'image': image,
      'fieldnameOrInsitition': fieldnameOrInsitition,
      'species': species,
      'age': age,
      'height': height,
      'diameter': diameter,
      'canopy': canopy,
      'healthStatus': healthStatus,
      'TreeTag': treeTag,
      'BriefDescription': briefDescription,
    }.withoutNulls,
  );

  return firestoreData;
}

class TreesRecordDocumentEquality implements Equality<TreesRecord> {
  const TreesRecordDocumentEquality();

  @override
  bool equals(TreesRecord? e1, TreesRecord? e2) {
    return e1?.county == e2?.county &&
        e1?.image == e2?.image &&
        e1?.fieldnameOrInsitition == e2?.fieldnameOrInsitition &&
        e1?.species == e2?.species &&
        e1?.age == e2?.age &&
        e1?.height == e2?.height &&
        e1?.diameter == e2?.diameter &&
        e1?.canopy == e2?.canopy &&
        e1?.healthStatus == e2?.healthStatus &&
        e1?.treeTag == e2?.treeTag &&
        e1?.briefDescription == e2?.briefDescription;
  }

  @override
  int hash(TreesRecord? e) => const ListEquality().hash([
        e?.county,
        e?.image,
        e?.fieldnameOrInsitition,
        e?.species,
        e?.age,
        e?.height,
        e?.diameter,
        e?.canopy,
        e?.healthStatus,
        e?.treeTag,
        e?.briefDescription
      ]);

  @override
  bool isValidKey(Object? o) => o is TreesRecord;
}
