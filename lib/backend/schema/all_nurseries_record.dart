import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AllNurseriesRecord extends FirestoreRecord {
  AllNurseriesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nurseryName" field.
  String? _nurseryName;
  String get nurseryName => _nurseryName ?? '';
  bool hasNurseryName() => _nurseryName != null;

  // "location" field.
  LatLng? _location;
  LatLng? get location => _location;
  bool hasLocation() => _location != null;

  // "county" field.
  String? _county;
  String get county => _county ?? '';
  bool hasCounty() => _county != null;

  // "nurseryOwner" field.
  String? _nurseryOwner;
  String get nurseryOwner => _nurseryOwner ?? '';
  bool hasNurseryOwner() => _nurseryOwner != null;

  // "addedBy" field.
  DocumentReference? _addedBy;
  DocumentReference? get addedBy => _addedBy;
  bool hasAddedBy() => _addedBy != null;

  // "NurseryPhoto" field.
  String? _nurseryPhoto;
  String get nurseryPhoto => _nurseryPhoto ?? '';
  bool hasNurseryPhoto() => _nurseryPhoto != null;

  // "adminContact" field.
  String? _adminContact;
  String get adminContact => _adminContact ?? '';
  bool hasAdminContact() => _adminContact != null;

  // "extraNotes" field.
  String? _extraNotes;
  String get extraNotes => _extraNotes ?? '';
  bool hasExtraNotes() => _extraNotes != null;

  void _initializeFields() {
    _nurseryName = snapshotData['nurseryName'] as String?;
    _location = snapshotData['location'] as LatLng?;
    _county = snapshotData['county'] as String?;
    _nurseryOwner = snapshotData['nurseryOwner'] as String?;
    _addedBy = snapshotData['addedBy'] as DocumentReference?;
    _nurseryPhoto = snapshotData['NurseryPhoto'] as String?;
    _adminContact = snapshotData['adminContact'] as String?;
    _extraNotes = snapshotData['extraNotes'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('allNurseries');

  static Stream<AllNurseriesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AllNurseriesRecord.fromSnapshot(s));

  static Future<AllNurseriesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AllNurseriesRecord.fromSnapshot(s));

  static AllNurseriesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AllNurseriesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AllNurseriesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AllNurseriesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AllNurseriesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AllNurseriesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAllNurseriesRecordData({
  String? nurseryName,
  LatLng? location,
  String? county,
  String? nurseryOwner,
  DocumentReference? addedBy,
  String? nurseryPhoto,
  String? adminContact,
  String? extraNotes,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nurseryName': nurseryName,
      'location': location,
      'county': county,
      'nurseryOwner': nurseryOwner,
      'addedBy': addedBy,
      'NurseryPhoto': nurseryPhoto,
      'adminContact': adminContact,
      'extraNotes': extraNotes,
    }.withoutNulls,
  );

  return firestoreData;
}

class AllNurseriesRecordDocumentEquality
    implements Equality<AllNurseriesRecord> {
  const AllNurseriesRecordDocumentEquality();

  @override
  bool equals(AllNurseriesRecord? e1, AllNurseriesRecord? e2) {
    return e1?.nurseryName == e2?.nurseryName &&
        e1?.location == e2?.location &&
        e1?.county == e2?.county &&
        e1?.nurseryOwner == e2?.nurseryOwner &&
        e1?.addedBy == e2?.addedBy &&
        e1?.nurseryPhoto == e2?.nurseryPhoto &&
        e1?.adminContact == e2?.adminContact &&
        e1?.extraNotes == e2?.extraNotes;
  }

  @override
  int hash(AllNurseriesRecord? e) => const ListEquality().hash([
        e?.nurseryName,
        e?.location,
        e?.county,
        e?.nurseryOwner,
        e?.addedBy,
        e?.nurseryPhoto,
        e?.adminContact,
        e?.extraNotes
      ]);

  @override
  bool isValidKey(Object? o) => o is AllNurseriesRecord;
}
