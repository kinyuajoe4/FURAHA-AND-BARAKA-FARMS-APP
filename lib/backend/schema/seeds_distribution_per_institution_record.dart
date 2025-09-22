import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SeedsDistributionPerInstitutionRecord extends FirestoreRecord {
  SeedsDistributionPerInstitutionRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "seedCategory" field.
  String? _seedCategory;
  String get seedCategory => _seedCategory ?? '';
  bool hasSeedCategory() => _seedCategory != null;

  // "spices" field.
  String? _spices;
  String get spices => _spices ?? '';
  bool hasSpices() => _spices != null;

  // "ID" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "seedsOwner" field.
  DocumentReference? _seedsOwner;
  DocumentReference? get seedsOwner => _seedsOwner;
  bool hasSeedsOwner() => _seedsOwner != null;

  // "seedsRef" field.
  String? _seedsRef;
  String get seedsRef => _seedsRef ?? '';
  bool hasSeedsRef() => _seedsRef != null;

  // "plantingSite" field.
  String? _plantingSite;
  String get plantingSite => _plantingSite ?? '';
  bool hasPlantingSite() => _plantingSite != null;

  // "DesignatedDriverForSeedling" field.
  String? _designatedDriverForSeedling;
  String get designatedDriverForSeedling => _designatedDriverForSeedling ?? '';
  bool hasDesignatedDriverForSeedling() => _designatedDriverForSeedling != null;

  // "receivedBy" field.
  String? _receivedBy;
  String get receivedBy => _receivedBy ?? '';
  bool hasReceivedBy() => _receivedBy != null;

  // "contact" field.
  String? _contact;
  String get contact => _contact ?? '';
  bool hasContact() => _contact != null;

  // "numberofSeedlings" field.
  double? _numberofSeedlings;
  double get numberofSeedlings => _numberofSeedlings ?? 0.0;
  bool hasNumberofSeedlings() => _numberofSeedlings != null;

  // "receiptImage" field.
  String? _receiptImage;
  String get receiptImage => _receiptImage ?? '';
  bool hasReceiptImage() => _receiptImage != null;

  // "dateofDelivery" field.
  DateTime? _dateofDelivery;
  DateTime? get dateofDelivery => _dateofDelivery;
  bool hasDateofDelivery() => _dateofDelivery != null;

  // "plantingSiteCoordinates" field.
  LatLng? _plantingSiteCoordinates;
  LatLng? get plantingSiteCoordinates => _plantingSiteCoordinates;
  bool hasPlantingSiteCoordinates() => _plantingSiteCoordinates != null;

  // "latlongRef" field.
  String? _latlongRef;
  String get latlongRef => _latlongRef ?? '';
  bool hasLatlongRef() => _latlongRef != null;

  // "matchedWithField" field.
  bool? _matchedWithField;
  bool get matchedWithField => _matchedWithField ?? false;
  bool hasMatchedWithField() => _matchedWithField != null;

  // "matchedWithFieldBy" field.
  DocumentReference? _matchedWithFieldBy;
  DocumentReference? get matchedWithFieldBy => _matchedWithFieldBy;
  bool hasMatchedWithFieldBy() => _matchedWithFieldBy != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _seedCategory = snapshotData['seedCategory'] as String?;
    _spices = snapshotData['spices'] as String?;
    _id = snapshotData['ID'] as String?;
    _description = snapshotData['description'] as String?;
    _seedsOwner = snapshotData['seedsOwner'] as DocumentReference?;
    _seedsRef = snapshotData['seedsRef'] as String?;
    _plantingSite = snapshotData['plantingSite'] as String?;
    _designatedDriverForSeedling =
        snapshotData['DesignatedDriverForSeedling'] as String?;
    _receivedBy = snapshotData['receivedBy'] as String?;
    _contact = snapshotData['contact'] as String?;
    _numberofSeedlings = castToType<double>(snapshotData['numberofSeedlings']);
    _receiptImage = snapshotData['receiptImage'] as String?;
    _dateofDelivery = snapshotData['dateofDelivery'] as DateTime?;
    _plantingSiteCoordinates =
        snapshotData['plantingSiteCoordinates'] as LatLng?;
    _latlongRef = snapshotData['latlongRef'] as String?;
    _matchedWithField = snapshotData['matchedWithField'] as bool?;
    _matchedWithFieldBy =
        snapshotData['matchedWithFieldBy'] as DocumentReference?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('seedsDistributionPerInstitution')
          : FirebaseFirestore.instance
              .collectionGroup('seedsDistributionPerInstitution');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('seedsDistributionPerInstitution').doc(id);

  static Stream<SeedsDistributionPerInstitutionRecord> getDocument(
          DocumentReference ref) =>
      ref
          .snapshots()
          .map((s) => SeedsDistributionPerInstitutionRecord.fromSnapshot(s));

  static Future<SeedsDistributionPerInstitutionRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref
          .get()
          .then((s) => SeedsDistributionPerInstitutionRecord.fromSnapshot(s));

  static SeedsDistributionPerInstitutionRecord fromSnapshot(
          DocumentSnapshot snapshot) =>
      SeedsDistributionPerInstitutionRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SeedsDistributionPerInstitutionRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SeedsDistributionPerInstitutionRecord._(
          reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SeedsDistributionPerInstitutionRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SeedsDistributionPerInstitutionRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSeedsDistributionPerInstitutionRecordData({
  String? seedCategory,
  String? spices,
  String? id,
  String? description,
  DocumentReference? seedsOwner,
  String? seedsRef,
  String? plantingSite,
  String? designatedDriverForSeedling,
  String? receivedBy,
  String? contact,
  double? numberofSeedlings,
  String? receiptImage,
  DateTime? dateofDelivery,
  LatLng? plantingSiteCoordinates,
  String? latlongRef,
  bool? matchedWithField,
  DocumentReference? matchedWithFieldBy,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'seedCategory': seedCategory,
      'spices': spices,
      'ID': id,
      'description': description,
      'seedsOwner': seedsOwner,
      'seedsRef': seedsRef,
      'plantingSite': plantingSite,
      'DesignatedDriverForSeedling': designatedDriverForSeedling,
      'receivedBy': receivedBy,
      'contact': contact,
      'numberofSeedlings': numberofSeedlings,
      'receiptImage': receiptImage,
      'dateofDelivery': dateofDelivery,
      'plantingSiteCoordinates': plantingSiteCoordinates,
      'latlongRef': latlongRef,
      'matchedWithField': matchedWithField,
      'matchedWithFieldBy': matchedWithFieldBy,
    }.withoutNulls,
  );

  return firestoreData;
}

class SeedsDistributionPerInstitutionRecordDocumentEquality
    implements Equality<SeedsDistributionPerInstitutionRecord> {
  const SeedsDistributionPerInstitutionRecordDocumentEquality();

  @override
  bool equals(SeedsDistributionPerInstitutionRecord? e1,
      SeedsDistributionPerInstitutionRecord? e2) {
    return e1?.seedCategory == e2?.seedCategory &&
        e1?.spices == e2?.spices &&
        e1?.id == e2?.id &&
        e1?.description == e2?.description &&
        e1?.seedsOwner == e2?.seedsOwner &&
        e1?.seedsRef == e2?.seedsRef &&
        e1?.plantingSite == e2?.plantingSite &&
        e1?.designatedDriverForSeedling == e2?.designatedDriverForSeedling &&
        e1?.receivedBy == e2?.receivedBy &&
        e1?.contact == e2?.contact &&
        e1?.numberofSeedlings == e2?.numberofSeedlings &&
        e1?.receiptImage == e2?.receiptImage &&
        e1?.dateofDelivery == e2?.dateofDelivery &&
        e1?.plantingSiteCoordinates == e2?.plantingSiteCoordinates &&
        e1?.latlongRef == e2?.latlongRef &&
        e1?.matchedWithField == e2?.matchedWithField &&
        e1?.matchedWithFieldBy == e2?.matchedWithFieldBy;
  }

  @override
  int hash(SeedsDistributionPerInstitutionRecord? e) =>
      const ListEquality().hash([
        e?.seedCategory,
        e?.spices,
        e?.id,
        e?.description,
        e?.seedsOwner,
        e?.seedsRef,
        e?.plantingSite,
        e?.designatedDriverForSeedling,
        e?.receivedBy,
        e?.contact,
        e?.numberofSeedlings,
        e?.receiptImage,
        e?.dateofDelivery,
        e?.plantingSiteCoordinates,
        e?.latlongRef,
        e?.matchedWithField,
        e?.matchedWithFieldBy
      ]);

  @override
  bool isValidKey(Object? o) => o is SeedsDistributionPerInstitutionRecord;
}
