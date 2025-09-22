import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SolarProjectKPARecord extends FirestoreRecord {
  SolarProjectKPARecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "solarSite" field.
  String? _solarSite;
  String get solarSite => _solarSite ?? '';
  bool hasSolarSite() => _solarSite != null;

  // "unitCapacity" field.
  double? _unitCapacity;
  double get unitCapacity => _unitCapacity ?? 0.0;
  bool hasUnitCapacity() => _unitCapacity != null;

  void _initializeFields() {
    _solarSite = snapshotData['solarSite'] as String?;
    _unitCapacity = castToType<double>(snapshotData['unitCapacity']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('solarProjectKPA');

  static Stream<SolarProjectKPARecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SolarProjectKPARecord.fromSnapshot(s));

  static Future<SolarProjectKPARecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SolarProjectKPARecord.fromSnapshot(s));

  static SolarProjectKPARecord fromSnapshot(DocumentSnapshot snapshot) =>
      SolarProjectKPARecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SolarProjectKPARecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SolarProjectKPARecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SolarProjectKPARecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SolarProjectKPARecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSolarProjectKPARecordData({
  String? solarSite,
  double? unitCapacity,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'solarSite': solarSite,
      'unitCapacity': unitCapacity,
    }.withoutNulls,
  );

  return firestoreData;
}

class SolarProjectKPARecordDocumentEquality
    implements Equality<SolarProjectKPARecord> {
  const SolarProjectKPARecordDocumentEquality();

  @override
  bool equals(SolarProjectKPARecord? e1, SolarProjectKPARecord? e2) {
    return e1?.solarSite == e2?.solarSite &&
        e1?.unitCapacity == e2?.unitCapacity;
  }

  @override
  int hash(SolarProjectKPARecord? e) =>
      const ListEquality().hash([e?.solarSite, e?.unitCapacity]);

  @override
  bool isValidKey(Object? o) => o is SolarProjectKPARecord;
}
