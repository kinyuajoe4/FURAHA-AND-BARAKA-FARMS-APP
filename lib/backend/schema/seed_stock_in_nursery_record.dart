import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SeedStockInNurseryRecord extends FirestoreRecord {
  SeedStockInNurseryRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "seedSpecies" field.
  String? _seedSpecies;
  String get seedSpecies => _seedSpecies ?? '';
  bool hasSeedSpecies() => _seedSpecies != null;

  // "ammountinstock" field.
  double? _ammountinstock;
  double get ammountinstock => _ammountinstock ?? 0.0;
  bool hasAmmountinstock() => _ammountinstock != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _seedSpecies = snapshotData['seedSpecies'] as String?;
    _ammountinstock = castToType<double>(snapshotData['ammountinstock']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('seedStockInNursery')
          : FirebaseFirestore.instance.collectionGroup('seedStockInNursery');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('seedStockInNursery').doc(id);

  static Stream<SeedStockInNurseryRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SeedStockInNurseryRecord.fromSnapshot(s));

  static Future<SeedStockInNurseryRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => SeedStockInNurseryRecord.fromSnapshot(s));

  static SeedStockInNurseryRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SeedStockInNurseryRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SeedStockInNurseryRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SeedStockInNurseryRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SeedStockInNurseryRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SeedStockInNurseryRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSeedStockInNurseryRecordData({
  String? seedSpecies,
  double? ammountinstock,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'seedSpecies': seedSpecies,
      'ammountinstock': ammountinstock,
    }.withoutNulls,
  );

  return firestoreData;
}

class SeedStockInNurseryRecordDocumentEquality
    implements Equality<SeedStockInNurseryRecord> {
  const SeedStockInNurseryRecordDocumentEquality();

  @override
  bool equals(SeedStockInNurseryRecord? e1, SeedStockInNurseryRecord? e2) {
    return e1?.seedSpecies == e2?.seedSpecies &&
        e1?.ammountinstock == e2?.ammountinstock;
  }

  @override
  int hash(SeedStockInNurseryRecord? e) =>
      const ListEquality().hash([e?.seedSpecies, e?.ammountinstock]);

  @override
  bool isValidKey(Object? o) => o is SeedStockInNurseryRecord;
}
