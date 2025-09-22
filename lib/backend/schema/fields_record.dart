import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FieldsRecord extends FirestoreRecord {
  FieldsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  bool hasLocation() => _location != null;

  // "fieldName" field.
  String? _fieldName;
  String get fieldName => _fieldName ?? '';
  bool hasFieldName() => _fieldName != null;

  // "GPSCoordinates" field.
  LatLng? _gPSCoordinates;
  LatLng? get gPSCoordinates => _gPSCoordinates;
  bool hasGPSCoordinates() => _gPSCoordinates != null;

  // "dateOfAddingField" field.
  DateTime? _dateOfAddingField;
  DateTime? get dateOfAddingField => _dateOfAddingField;
  bool hasDateOfAddingField() => _dateOfAddingField != null;

  // "shortDescription" field.
  String? _shortDescription;
  String get shortDescription => _shortDescription ?? '';
  bool hasShortDescription() => _shortDescription != null;

  // "LandImage" field.
  String? _landImage;
  String get landImage => _landImage ?? '';
  bool hasLandImage() => _landImage != null;

  // "FieldOwner" field.
  String? _fieldOwner;
  String get fieldOwner => _fieldOwner ?? '';
  bool hasFieldOwner() => _fieldOwner != null;

  // "FieldOwnerRef" field.
  DocumentReference? _fieldOwnerRef;
  DocumentReference? get fieldOwnerRef => _fieldOwnerRef;
  bool hasFieldOwnerRef() => _fieldOwnerRef != null;

  // "fieldRef" field.
  String? _fieldRef;
  String get fieldRef => _fieldRef ?? '';
  bool hasFieldRef() => _fieldRef != null;

  // "TOTAL_TREE_SPECIES_PLANTED" field.
  int? _totalTreeSpeciesPlanted;
  int get totalTreeSpeciesPlanted => _totalTreeSpeciesPlanted ?? 0;
  bool hasTotalTreeSpeciesPlanted() => _totalTreeSpeciesPlanted != null;

  // "DEAD_OR_DAMAGED" field.
  int? _deadOrDamaged;
  int get deadOrDamaged => _deadOrDamaged ?? 0;
  bool hasDeadOrDamaged() => _deadOrDamaged != null;

  // "SURVIVAL_RATE" field.
  int? _survivalRate;
  int get survivalRate => _survivalRate ?? 0;
  bool hasSurvivalRate() => _survivalRate != null;

  // "TREE_SPECIES" field.
  String? _treeSpecies;
  String get treeSpecies => _treeSpecies ?? '';
  bool hasTreeSpecies() => _treeSpecies != null;

  // "TREE_STATUS" field.
  String? _treeStatus;
  String get treeStatus => _treeStatus ?? '';
  bool hasTreeStatus() => _treeStatus != null;

  // "DATE_OF_VISITATION" field.
  DateTime? _dateOfVisitation;
  DateTime? get dateOfVisitation => _dateOfVisitation;
  bool hasDateOfVisitation() => _dateOfVisitation != null;

  // "INSTITUTION" field.
  String? _institution;
  String get institution => _institution ?? '';
  bool hasInstitution() => _institution != null;

  // "COUNTY" field.
  String? _county;
  String get county => _county ?? '';
  bool hasCounty() => _county != null;

  // "isIandMbank" field.
  bool? _isIandMbank;
  bool get isIandMbank => _isIandMbank ?? false;
  bool hasIsIandMbank() => _isIandMbank != null;

  // "IsDTBandKCB" field.
  bool? _isDTBandKCB;
  bool get isDTBandKCB => _isDTBandKCB ?? false;
  bool hasIsDTBandKCB() => _isDTBandKCB != null;

  // "TreesReceivedBy" field.
  String? _treesReceivedBy;
  String get treesReceivedBy => _treesReceivedBy ?? '';
  bool hasTreesReceivedBy() => _treesReceivedBy != null;

  // "receiverContact" field.
  String? _receiverContact;
  String get receiverContact => _receiverContact ?? '';
  bool hasReceiverContact() => _receiverContact != null;

  // "TotalTreesPlanted" field.
  double? _totalTreesPlanted;
  double get totalTreesPlanted => _totalTreesPlanted ?? 0.0;
  bool hasTotalTreesPlanted() => _totalTreesPlanted != null;

  // "coordinatesRef" field.
  String? _coordinatesRef;
  String get coordinatesRef => _coordinatesRef ?? '';
  bool hasCoordinatesRef() => _coordinatesRef != null;

  // "isUpdated" field.
  bool? _isUpdated;
  bool get isUpdated => _isUpdated ?? false;
  bool hasIsUpdated() => _isUpdated != null;

  // "YEAR" field.
  int? _year;
  int get year => _year ?? 0;
  bool hasYear() => _year != null;

  // "PlanterCompany" field.
  String? _planterCompany;
  String get planterCompany => _planterCompany ?? '';
  bool hasPlanterCompany() => _planterCompany != null;

  // "imagesOverTime" field.
  List<String>? _imagesOverTime;
  List<String> get imagesOverTime => _imagesOverTime ?? const [];
  bool hasImagesOverTime() => _imagesOverTime != null;

  // "googleEarthlink" field.
  String? _googleEarthlink;
  String get googleEarthlink => _googleEarthlink ?? '';
  bool hasGoogleEarthlink() => _googleEarthlink != null;

  // "treesMonitored" field.
  double? _treesMonitored;
  double get treesMonitored => _treesMonitored ?? 0.0;
  bool hasTreesMonitored() => _treesMonitored != null;

  // "fieldVisitedBy" field.
  List<String>? _fieldVisitedBy;
  List<String> get fieldVisitedBy => _fieldVisitedBy ?? const [];
  bool hasFieldVisitedBy() => _fieldVisitedBy != null;

  // "allVisitationDates" field.
  List<DateTime>? _allVisitationDates;
  List<DateTime> get allVisitationDates => _allVisitationDates ?? const [];
  bool hasAllVisitationDates() => _allVisitationDates != null;

  // "contactPerson" field.
  String? _contactPerson;
  String get contactPerson => _contactPerson ?? '';
  bool hasContactPerson() => _contactPerson != null;

  void _initializeFields() {
    _location = snapshotData['location'] as String?;
    _fieldName = snapshotData['fieldName'] as String?;
    _gPSCoordinates = snapshotData['GPSCoordinates'] as LatLng?;
    _dateOfAddingField = snapshotData['dateOfAddingField'] as DateTime?;
    _shortDescription = snapshotData['shortDescription'] as String?;
    _landImage = snapshotData['LandImage'] as String?;
    _fieldOwner = snapshotData['FieldOwner'] as String?;
    _fieldOwnerRef = snapshotData['FieldOwnerRef'] as DocumentReference?;
    _fieldRef = snapshotData['fieldRef'] as String?;
    _totalTreeSpeciesPlanted =
        castToType<int>(snapshotData['TOTAL_TREE_SPECIES_PLANTED']);
    _deadOrDamaged = castToType<int>(snapshotData['DEAD_OR_DAMAGED']);
    _survivalRate = castToType<int>(snapshotData['SURVIVAL_RATE']);
    _treeSpecies = snapshotData['TREE_SPECIES'] as String?;
    _treeStatus = snapshotData['TREE_STATUS'] as String?;
    _dateOfVisitation = snapshotData['DATE_OF_VISITATION'] as DateTime?;
    _institution = snapshotData['INSTITUTION'] as String?;
    _county = snapshotData['COUNTY'] as String?;
    _isIandMbank = snapshotData['isIandMbank'] as bool?;
    _isDTBandKCB = snapshotData['IsDTBandKCB'] as bool?;
    _treesReceivedBy = snapshotData['TreesReceivedBy'] as String?;
    _receiverContact = snapshotData['receiverContact'] as String?;
    _totalTreesPlanted = castToType<double>(snapshotData['TotalTreesPlanted']);
    _coordinatesRef = snapshotData['coordinatesRef'] as String?;
    _isUpdated = snapshotData['isUpdated'] as bool?;
    _year = castToType<int>(snapshotData['YEAR']);
    _planterCompany = snapshotData['PlanterCompany'] as String?;
    _imagesOverTime = getDataList(snapshotData['imagesOverTime']);
    _googleEarthlink = snapshotData['googleEarthlink'] as String?;
    _treesMonitored = castToType<double>(snapshotData['treesMonitored']);
    _fieldVisitedBy = getDataList(snapshotData['fieldVisitedBy']);
    _allVisitationDates = getDataList(snapshotData['allVisitationDates']);
    _contactPerson = snapshotData['contactPerson'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Fields');

  static Stream<FieldsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FieldsRecord.fromSnapshot(s));

  static Future<FieldsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FieldsRecord.fromSnapshot(s));

  static FieldsRecord fromSnapshot(DocumentSnapshot snapshot) => FieldsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FieldsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FieldsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FieldsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FieldsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFieldsRecordData({
  String? location,
  String? fieldName,
  LatLng? gPSCoordinates,
  DateTime? dateOfAddingField,
  String? shortDescription,
  String? landImage,
  String? fieldOwner,
  DocumentReference? fieldOwnerRef,
  String? fieldRef,
  int? totalTreeSpeciesPlanted,
  int? deadOrDamaged,
  int? survivalRate,
  String? treeSpecies,
  String? treeStatus,
  DateTime? dateOfVisitation,
  String? institution,
  String? county,
  bool? isIandMbank,
  bool? isDTBandKCB,
  String? treesReceivedBy,
  String? receiverContact,
  double? totalTreesPlanted,
  String? coordinatesRef,
  bool? isUpdated,
  int? year,
  String? planterCompany,
  String? googleEarthlink,
  double? treesMonitored,
  String? contactPerson,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'location': location,
      'fieldName': fieldName,
      'GPSCoordinates': gPSCoordinates,
      'dateOfAddingField': dateOfAddingField,
      'shortDescription': shortDescription,
      'LandImage': landImage,
      'FieldOwner': fieldOwner,
      'FieldOwnerRef': fieldOwnerRef,
      'fieldRef': fieldRef,
      'TOTAL_TREE_SPECIES_PLANTED': totalTreeSpeciesPlanted,
      'DEAD_OR_DAMAGED': deadOrDamaged,
      'SURVIVAL_RATE': survivalRate,
      'TREE_SPECIES': treeSpecies,
      'TREE_STATUS': treeStatus,
      'DATE_OF_VISITATION': dateOfVisitation,
      'INSTITUTION': institution,
      'COUNTY': county,
      'isIandMbank': isIandMbank,
      'IsDTBandKCB': isDTBandKCB,
      'TreesReceivedBy': treesReceivedBy,
      'receiverContact': receiverContact,
      'TotalTreesPlanted': totalTreesPlanted,
      'coordinatesRef': coordinatesRef,
      'isUpdated': isUpdated,
      'YEAR': year,
      'PlanterCompany': planterCompany,
      'googleEarthlink': googleEarthlink,
      'treesMonitored': treesMonitored,
      'contactPerson': contactPerson,
    }.withoutNulls,
  );

  return firestoreData;
}

class FieldsRecordDocumentEquality implements Equality<FieldsRecord> {
  const FieldsRecordDocumentEquality();

  @override
  bool equals(FieldsRecord? e1, FieldsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.location == e2?.location &&
        e1?.fieldName == e2?.fieldName &&
        e1?.gPSCoordinates == e2?.gPSCoordinates &&
        e1?.dateOfAddingField == e2?.dateOfAddingField &&
        e1?.shortDescription == e2?.shortDescription &&
        e1?.landImage == e2?.landImage &&
        e1?.fieldOwner == e2?.fieldOwner &&
        e1?.fieldOwnerRef == e2?.fieldOwnerRef &&
        e1?.fieldRef == e2?.fieldRef &&
        e1?.totalTreeSpeciesPlanted == e2?.totalTreeSpeciesPlanted &&
        e1?.deadOrDamaged == e2?.deadOrDamaged &&
        e1?.survivalRate == e2?.survivalRate &&
        e1?.treeSpecies == e2?.treeSpecies &&
        e1?.treeStatus == e2?.treeStatus &&
        e1?.dateOfVisitation == e2?.dateOfVisitation &&
        e1?.institution == e2?.institution &&
        e1?.county == e2?.county &&
        e1?.isIandMbank == e2?.isIandMbank &&
        e1?.isDTBandKCB == e2?.isDTBandKCB &&
        e1?.treesReceivedBy == e2?.treesReceivedBy &&
        e1?.receiverContact == e2?.receiverContact &&
        e1?.totalTreesPlanted == e2?.totalTreesPlanted &&
        e1?.coordinatesRef == e2?.coordinatesRef &&
        e1?.isUpdated == e2?.isUpdated &&
        e1?.year == e2?.year &&
        e1?.planterCompany == e2?.planterCompany &&
        listEquality.equals(e1?.imagesOverTime, e2?.imagesOverTime) &&
        e1?.googleEarthlink == e2?.googleEarthlink &&
        e1?.treesMonitored == e2?.treesMonitored &&
        listEquality.equals(e1?.fieldVisitedBy, e2?.fieldVisitedBy) &&
        listEquality.equals(e1?.allVisitationDates, e2?.allVisitationDates) &&
        e1?.contactPerson == e2?.contactPerson;
  }

  @override
  int hash(FieldsRecord? e) => const ListEquality().hash([
        e?.location,
        e?.fieldName,
        e?.gPSCoordinates,
        e?.dateOfAddingField,
        e?.shortDescription,
        e?.landImage,
        e?.fieldOwner,
        e?.fieldOwnerRef,
        e?.fieldRef,
        e?.totalTreeSpeciesPlanted,
        e?.deadOrDamaged,
        e?.survivalRate,
        e?.treeSpecies,
        e?.treeStatus,
        e?.dateOfVisitation,
        e?.institution,
        e?.county,
        e?.isIandMbank,
        e?.isDTBandKCB,
        e?.treesReceivedBy,
        e?.receiverContact,
        e?.totalTreesPlanted,
        e?.coordinatesRef,
        e?.isUpdated,
        e?.year,
        e?.planterCompany,
        e?.imagesOverTime,
        e?.googleEarthlink,
        e?.treesMonitored,
        e?.fieldVisitedBy,
        e?.allVisitationDates,
        e?.contactPerson
      ]);

  @override
  bool isValidKey(Object? o) => o is FieldsRecord;
}
