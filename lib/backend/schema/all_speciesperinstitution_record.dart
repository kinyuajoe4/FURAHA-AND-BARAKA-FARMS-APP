import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AllSpeciesperinstitutionRecord extends FirestoreRecord {
  AllSpeciesperinstitutionRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "institutionname" field.
  String? _institutionname;
  String get institutionname => _institutionname ?? '';
  bool hasInstitutionname() => _institutionname != null;

  // "species" field.
  String? _species;
  String get species => _species ?? '';
  bool hasSpecies() => _species != null;

  // "numberofTrees" field.
  double? _numberofTrees;
  double get numberofTrees => _numberofTrees ?? 0.0;
  bool hasNumberofTrees() => _numberofTrees != null;

  // "totalAlive" field.
  double? _totalAlive;
  double get totalAlive => _totalAlive ?? 0.0;
  bool hasTotalAlive() => _totalAlive != null;

  // "treeDensity" field.
  double? _treeDensity;
  double get treeDensity => _treeDensity ?? 0.0;
  bool hasTreeDensity() => _treeDensity != null;

  // "carbonabsorbed" field.
  double? _carbonabsorbed;
  double get carbonabsorbed => _carbonabsorbed ?? 0.0;
  bool hasCarbonabsorbed() => _carbonabsorbed != null;

  // "county" field.
  String? _county;
  String get county => _county ?? '';
  bool hasCounty() => _county != null;

  // "contact" field.
  String? _contact;
  String get contact => _contact ?? '';
  bool hasContact() => _contact != null;

  // "receivedby" field.
  String? _receivedby;
  String get receivedby => _receivedby ?? '';
  bool hasReceivedby() => _receivedby != null;

  void _initializeFields() {
    _institutionname = snapshotData['institutionname'] as String?;
    _species = snapshotData['species'] as String?;
    _numberofTrees = castToType<double>(snapshotData['numberofTrees']);
    _totalAlive = castToType<double>(snapshotData['totalAlive']);
    _treeDensity = castToType<double>(snapshotData['treeDensity']);
    _carbonabsorbed = castToType<double>(snapshotData['carbonabsorbed']);
    _county = snapshotData['county'] as String?;
    _contact = snapshotData['contact'] as String?;
    _receivedby = snapshotData['receivedby'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('allSpeciesperinstitution');

  static Stream<AllSpeciesperinstitutionRecord> getDocument(
          DocumentReference ref) =>
      ref
          .snapshots()
          .map((s) => AllSpeciesperinstitutionRecord.fromSnapshot(s));

  static Future<AllSpeciesperinstitutionRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => AllSpeciesperinstitutionRecord.fromSnapshot(s));

  static AllSpeciesperinstitutionRecord fromSnapshot(
          DocumentSnapshot snapshot) =>
      AllSpeciesperinstitutionRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AllSpeciesperinstitutionRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AllSpeciesperinstitutionRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AllSpeciesperinstitutionRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AllSpeciesperinstitutionRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAllSpeciesperinstitutionRecordData({
  String? institutionname,
  String? species,
  double? numberofTrees,
  double? totalAlive,
  double? treeDensity,
  double? carbonabsorbed,
  String? county,
  String? contact,
  String? receivedby,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'institutionname': institutionname,
      'species': species,
      'numberofTrees': numberofTrees,
      'totalAlive': totalAlive,
      'treeDensity': treeDensity,
      'carbonabsorbed': carbonabsorbed,
      'county': county,
      'contact': contact,
      'receivedby': receivedby,
    }.withoutNulls,
  );

  return firestoreData;
}

class AllSpeciesperinstitutionRecordDocumentEquality
    implements Equality<AllSpeciesperinstitutionRecord> {
  const AllSpeciesperinstitutionRecordDocumentEquality();

  @override
  bool equals(
      AllSpeciesperinstitutionRecord? e1, AllSpeciesperinstitutionRecord? e2) {
    return e1?.institutionname == e2?.institutionname &&
        e1?.species == e2?.species &&
        e1?.numberofTrees == e2?.numberofTrees &&
        e1?.totalAlive == e2?.totalAlive &&
        e1?.treeDensity == e2?.treeDensity &&
        e1?.carbonabsorbed == e2?.carbonabsorbed &&
        e1?.county == e2?.county &&
        e1?.contact == e2?.contact &&
        e1?.receivedby == e2?.receivedby;
  }

  @override
  int hash(AllSpeciesperinstitutionRecord? e) => const ListEquality().hash([
        e?.institutionname,
        e?.species,
        e?.numberofTrees,
        e?.totalAlive,
        e?.treeDensity,
        e?.carbonabsorbed,
        e?.county,
        e?.contact,
        e?.receivedby
      ]);

  @override
  bool isValidKey(Object? o) => o is AllSpeciesperinstitutionRecord;
}
