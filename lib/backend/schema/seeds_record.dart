import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SeedsRecord extends FirestoreRecord {
  SeedsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "seedName" field.
  String? _seedName;
  String get seedName => _seedName ?? '';
  bool hasSeedName() => _seedName != null;

  // "seedCategory" field.
  String? _seedCategory;
  String get seedCategory => _seedCategory ?? '';
  bool hasSeedCategory() => _seedCategory != null;

  // "spices" field.
  String? _spices;
  String get spices => _spices ?? '';
  bool hasSpices() => _spices != null;

  // "quantity" field.
  double? _quantity;
  double get quantity => _quantity ?? 0.0;
  bool hasQuantity() => _quantity != null;

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  bool hasLocation() => _location != null;

  // "ID" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "PageIndex" field.
  int? _pageIndex;
  int get pageIndex => _pageIndex ?? 0;
  bool hasPageIndex() => _pageIndex != null;

  // "seedsOwner" field.
  DocumentReference? _seedsOwner;
  DocumentReference? get seedsOwner => _seedsOwner;
  bool hasSeedsOwner() => _seedsOwner != null;

  // "seedsRef" field.
  String? _seedsRef;
  String get seedsRef => _seedsRef ?? '';
  bool hasSeedsRef() => _seedsRef != null;

  // "dateofPlanting" field.
  DateTime? _dateofPlanting;
  DateTime? get dateofPlanting => _dateofPlanting;
  bool hasDateofPlanting() => _dateofPlanting != null;

  // "dateOfTransferToBags" field.
  DateTime? _dateOfTransferToBags;
  DateTime? get dateOfTransferToBags => _dateOfTransferToBags;
  bool hasDateOfTransferToBags() => _dateOfTransferToBags != null;

  // "seedImage" field.
  String? _seedImage;
  String get seedImage => _seedImage ?? '';
  bool hasSeedImage() => _seedImage != null;

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

  // "seedlingDescription" field.
  String? _seedlingDescription;
  String get seedlingDescription => _seedlingDescription ?? '';
  bool hasSeedlingDescription() => _seedlingDescription != null;

  // "dateofDelivery" field.
  DateTime? _dateofDelivery;
  DateTime? get dateofDelivery => _dateofDelivery;
  bool hasDateofDelivery() => _dateofDelivery != null;

  // "dateOfPlantingInField" field.
  DateTime? _dateOfPlantingInField;
  DateTime? get dateOfPlantingInField => _dateOfPlantingInField;
  bool hasDateOfPlantingInField() => _dateOfPlantingInField != null;

  // "conditionOfTheTree" field.
  String? _conditionOfTheTree;
  String get conditionOfTheTree => _conditionOfTheTree ?? '';
  bool hasConditionOfTheTree() => _conditionOfTheTree != null;

  // "nurseryName" field.
  String? _nurseryName;
  String get nurseryName => _nurseryName ?? '';
  bool hasNurseryName() => _nurseryName != null;

  // "plantingsiteCoordinates" field.
  LatLng? _plantingsiteCoordinates;
  LatLng? get plantingsiteCoordinates => _plantingsiteCoordinates;
  bool hasPlantingsiteCoordinates() => _plantingsiteCoordinates != null;

  // "photosOfUpdaters" field.
  List<String>? _photosOfUpdaters;
  List<String> get photosOfUpdaters => _photosOfUpdaters ?? const [];
  bool hasPhotosOfUpdaters() => _photosOfUpdaters != null;

  // "usernameofUddaters" field.
  List<String>? _usernameofUddaters;
  List<String> get usernameofUddaters => _usernameofUddaters ?? const [];
  bool hasUsernameofUddaters() => _usernameofUddaters != null;

  // "nurseryTransferredto" field.
  String? _nurseryTransferredto;
  String get nurseryTransferredto => _nurseryTransferredto ?? '';
  bool hasNurseryTransferredto() => _nurseryTransferredto != null;

  // "numberofTransferredseeds" field.
  double? _numberofTransferredseeds;
  double get numberofTransferredseeds => _numberofTransferredseeds ?? 0.0;
  bool hasNumberofTransferredseeds() => _numberofTransferredseeds != null;

  // "isTransferredSeeds" field.
  bool? _isTransferredSeeds;
  bool get isTransferredSeeds => _isTransferredSeeds ?? false;
  bool hasIsTransferredSeeds() => _isTransferredSeeds != null;

  // "remainingSeeds" field.
  double? _remainingSeeds;
  double get remainingSeeds => _remainingSeeds ?? 0.0;
  bool hasRemainingSeeds() => _remainingSeeds != null;

  // "SeedlingsReceivedFrom" field.
  String? _seedlingsReceivedFrom;
  String get seedlingsReceivedFrom => _seedlingsReceivedFrom ?? '';
  bool hasSeedlingsReceivedFrom() => _seedlingsReceivedFrom != null;

  // "dateofTransfer" field.
  DateTime? _dateofTransfer;
  DateTime? get dateofTransfer => _dateofTransfer;
  bool hasDateofTransfer() => _dateofTransfer != null;

  // "transferDriver" field.
  String? _transferDriver;
  String get transferDriver => _transferDriver ?? '';
  bool hasTransferDriver() => _transferDriver != null;

  // "OriginalSeedsDocRef" field.
  DocumentReference? _originalSeedsDocRef;
  DocumentReference? get originalSeedsDocRef => _originalSeedsDocRef;
  bool hasOriginalSeedsDocRef() => _originalSeedsDocRef != null;

  // "numberofSeedlings" field.
  double? _numberofSeedlings;
  double get numberofSeedlings => _numberofSeedlings ?? 0.0;
  bool hasNumberofSeedlings() => _numberofSeedlings != null;

  // "initialReceivingDate" field.
  DateTime? _initialReceivingDate;
  DateTime? get initialReceivingDate => _initialReceivingDate;
  bool hasInitialReceivingDate() => _initialReceivingDate != null;

  // "TransferCheck" field.
  bool? _transferCheck;
  bool get transferCheck => _transferCheck ?? false;
  bool hasTransferCheck() => _transferCheck != null;

  // "numberofSortedSeedlings" field.
  double? _numberofSortedSeedlings;
  double get numberofSortedSeedlings => _numberofSortedSeedlings ?? 0.0;
  bool hasNumberofSortedSeedlings() => _numberofSortedSeedlings != null;

  // "quantityofSeedsplanted" field.
  double? _quantityofSeedsplanted;
  double get quantityofSeedsplanted => _quantityofSeedsplanted ?? 0.0;
  bool hasQuantityofSeedsplanted() => _quantityofSeedsplanted != null;

  // "quantityAvailableinKGS" field.
  double? _quantityAvailableinKGS;
  double get quantityAvailableinKGS => _quantityAvailableinKGS ?? 0.0;
  bool hasQuantityAvailableinKGS() => _quantityAvailableinKGS != null;

  void _initializeFields() {
    _seedName = snapshotData['seedName'] as String?;
    _seedCategory = snapshotData['seedCategory'] as String?;
    _spices = snapshotData['spices'] as String?;
    _quantity = castToType<double>(snapshotData['quantity']);
    _location = snapshotData['location'] as String?;
    _id = snapshotData['ID'] as String?;
    _description = snapshotData['description'] as String?;
    _pageIndex = castToType<int>(snapshotData['PageIndex']);
    _seedsOwner = snapshotData['seedsOwner'] as DocumentReference?;
    _seedsRef = snapshotData['seedsRef'] as String?;
    _dateofPlanting = snapshotData['dateofPlanting'] as DateTime?;
    _dateOfTransferToBags = snapshotData['dateOfTransferToBags'] as DateTime?;
    _seedImage = snapshotData['seedImage'] as String?;
    _plantingSite = snapshotData['plantingSite'] as String?;
    _designatedDriverForSeedling =
        snapshotData['DesignatedDriverForSeedling'] as String?;
    _receivedBy = snapshotData['receivedBy'] as String?;
    _contact = snapshotData['contact'] as String?;
    _seedlingDescription = snapshotData['seedlingDescription'] as String?;
    _dateofDelivery = snapshotData['dateofDelivery'] as DateTime?;
    _dateOfPlantingInField = snapshotData['dateOfPlantingInField'] as DateTime?;
    _conditionOfTheTree = snapshotData['conditionOfTheTree'] as String?;
    _nurseryName = snapshotData['nurseryName'] as String?;
    _plantingsiteCoordinates =
        snapshotData['plantingsiteCoordinates'] as LatLng?;
    _photosOfUpdaters = getDataList(snapshotData['photosOfUpdaters']);
    _usernameofUddaters = getDataList(snapshotData['usernameofUddaters']);
    _nurseryTransferredto = snapshotData['nurseryTransferredto'] as String?;
    _numberofTransferredseeds =
        castToType<double>(snapshotData['numberofTransferredseeds']);
    _isTransferredSeeds = snapshotData['isTransferredSeeds'] as bool?;
    _remainingSeeds = castToType<double>(snapshotData['remainingSeeds']);
    _seedlingsReceivedFrom = snapshotData['SeedlingsReceivedFrom'] as String?;
    _dateofTransfer = snapshotData['dateofTransfer'] as DateTime?;
    _transferDriver = snapshotData['transferDriver'] as String?;
    _originalSeedsDocRef =
        snapshotData['OriginalSeedsDocRef'] as DocumentReference?;
    _numberofSeedlings = castToType<double>(snapshotData['numberofSeedlings']);
    _initialReceivingDate = snapshotData['initialReceivingDate'] as DateTime?;
    _transferCheck = snapshotData['TransferCheck'] as bool?;
    _numberofSortedSeedlings =
        castToType<double>(snapshotData['numberofSortedSeedlings']);
    _quantityofSeedsplanted =
        castToType<double>(snapshotData['quantityofSeedsplanted']);
    _quantityAvailableinKGS =
        castToType<double>(snapshotData['quantityAvailableinKGS']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('seeds');

  static Stream<SeedsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SeedsRecord.fromSnapshot(s));

  static Future<SeedsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SeedsRecord.fromSnapshot(s));

  static SeedsRecord fromSnapshot(DocumentSnapshot snapshot) => SeedsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SeedsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SeedsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SeedsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SeedsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSeedsRecordData({
  String? seedName,
  String? seedCategory,
  String? spices,
  double? quantity,
  String? location,
  String? id,
  String? description,
  int? pageIndex,
  DocumentReference? seedsOwner,
  String? seedsRef,
  DateTime? dateofPlanting,
  DateTime? dateOfTransferToBags,
  String? seedImage,
  String? plantingSite,
  String? designatedDriverForSeedling,
  String? receivedBy,
  String? contact,
  String? seedlingDescription,
  DateTime? dateofDelivery,
  DateTime? dateOfPlantingInField,
  String? conditionOfTheTree,
  String? nurseryName,
  LatLng? plantingsiteCoordinates,
  String? nurseryTransferredto,
  double? numberofTransferredseeds,
  bool? isTransferredSeeds,
  double? remainingSeeds,
  String? seedlingsReceivedFrom,
  DateTime? dateofTransfer,
  String? transferDriver,
  DocumentReference? originalSeedsDocRef,
  double? numberofSeedlings,
  DateTime? initialReceivingDate,
  bool? transferCheck,
  double? numberofSortedSeedlings,
  double? quantityofSeedsplanted,
  double? quantityAvailableinKGS,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'seedName': seedName,
      'seedCategory': seedCategory,
      'spices': spices,
      'quantity': quantity,
      'location': location,
      'ID': id,
      'description': description,
      'PageIndex': pageIndex,
      'seedsOwner': seedsOwner,
      'seedsRef': seedsRef,
      'dateofPlanting': dateofPlanting,
      'dateOfTransferToBags': dateOfTransferToBags,
      'seedImage': seedImage,
      'plantingSite': plantingSite,
      'DesignatedDriverForSeedling': designatedDriverForSeedling,
      'receivedBy': receivedBy,
      'contact': contact,
      'seedlingDescription': seedlingDescription,
      'dateofDelivery': dateofDelivery,
      'dateOfPlantingInField': dateOfPlantingInField,
      'conditionOfTheTree': conditionOfTheTree,
      'nurseryName': nurseryName,
      'plantingsiteCoordinates': plantingsiteCoordinates,
      'nurseryTransferredto': nurseryTransferredto,
      'numberofTransferredseeds': numberofTransferredseeds,
      'isTransferredSeeds': isTransferredSeeds,
      'remainingSeeds': remainingSeeds,
      'SeedlingsReceivedFrom': seedlingsReceivedFrom,
      'dateofTransfer': dateofTransfer,
      'transferDriver': transferDriver,
      'OriginalSeedsDocRef': originalSeedsDocRef,
      'numberofSeedlings': numberofSeedlings,
      'initialReceivingDate': initialReceivingDate,
      'TransferCheck': transferCheck,
      'numberofSortedSeedlings': numberofSortedSeedlings,
      'quantityofSeedsplanted': quantityofSeedsplanted,
      'quantityAvailableinKGS': quantityAvailableinKGS,
    }.withoutNulls,
  );

  return firestoreData;
}

class SeedsRecordDocumentEquality implements Equality<SeedsRecord> {
  const SeedsRecordDocumentEquality();

  @override
  bool equals(SeedsRecord? e1, SeedsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.seedName == e2?.seedName &&
        e1?.seedCategory == e2?.seedCategory &&
        e1?.spices == e2?.spices &&
        e1?.quantity == e2?.quantity &&
        e1?.location == e2?.location &&
        e1?.id == e2?.id &&
        e1?.description == e2?.description &&
        e1?.pageIndex == e2?.pageIndex &&
        e1?.seedsOwner == e2?.seedsOwner &&
        e1?.seedsRef == e2?.seedsRef &&
        e1?.dateofPlanting == e2?.dateofPlanting &&
        e1?.dateOfTransferToBags == e2?.dateOfTransferToBags &&
        e1?.seedImage == e2?.seedImage &&
        e1?.plantingSite == e2?.plantingSite &&
        e1?.designatedDriverForSeedling == e2?.designatedDriverForSeedling &&
        e1?.receivedBy == e2?.receivedBy &&
        e1?.contact == e2?.contact &&
        e1?.seedlingDescription == e2?.seedlingDescription &&
        e1?.dateofDelivery == e2?.dateofDelivery &&
        e1?.dateOfPlantingInField == e2?.dateOfPlantingInField &&
        e1?.conditionOfTheTree == e2?.conditionOfTheTree &&
        e1?.nurseryName == e2?.nurseryName &&
        e1?.plantingsiteCoordinates == e2?.plantingsiteCoordinates &&
        listEquality.equals(e1?.photosOfUpdaters, e2?.photosOfUpdaters) &&
        listEquality.equals(e1?.usernameofUddaters, e2?.usernameofUddaters) &&
        e1?.nurseryTransferredto == e2?.nurseryTransferredto &&
        e1?.numberofTransferredseeds == e2?.numberofTransferredseeds &&
        e1?.isTransferredSeeds == e2?.isTransferredSeeds &&
        e1?.remainingSeeds == e2?.remainingSeeds &&
        e1?.seedlingsReceivedFrom == e2?.seedlingsReceivedFrom &&
        e1?.dateofTransfer == e2?.dateofTransfer &&
        e1?.transferDriver == e2?.transferDriver &&
        e1?.originalSeedsDocRef == e2?.originalSeedsDocRef &&
        e1?.numberofSeedlings == e2?.numberofSeedlings &&
        e1?.initialReceivingDate == e2?.initialReceivingDate &&
        e1?.transferCheck == e2?.transferCheck &&
        e1?.numberofSortedSeedlings == e2?.numberofSortedSeedlings &&
        e1?.quantityofSeedsplanted == e2?.quantityofSeedsplanted &&
        e1?.quantityAvailableinKGS == e2?.quantityAvailableinKGS;
  }

  @override
  int hash(SeedsRecord? e) => const ListEquality().hash([
        e?.seedName,
        e?.seedCategory,
        e?.spices,
        e?.quantity,
        e?.location,
        e?.id,
        e?.description,
        e?.pageIndex,
        e?.seedsOwner,
        e?.seedsRef,
        e?.dateofPlanting,
        e?.dateOfTransferToBags,
        e?.seedImage,
        e?.plantingSite,
        e?.designatedDriverForSeedling,
        e?.receivedBy,
        e?.contact,
        e?.seedlingDescription,
        e?.dateofDelivery,
        e?.dateOfPlantingInField,
        e?.conditionOfTheTree,
        e?.nurseryName,
        e?.plantingsiteCoordinates,
        e?.photosOfUpdaters,
        e?.usernameofUddaters,
        e?.nurseryTransferredto,
        e?.numberofTransferredseeds,
        e?.isTransferredSeeds,
        e?.remainingSeeds,
        e?.seedlingsReceivedFrom,
        e?.dateofTransfer,
        e?.transferDriver,
        e?.originalSeedsDocRef,
        e?.numberofSeedlings,
        e?.initialReceivingDate,
        e?.transferCheck,
        e?.numberofSortedSeedlings,
        e?.quantityofSeedsplanted,
        e?.quantityAvailableinKGS
      ]);

  @override
  bool isValidKey(Object? o) => o is SeedsRecord;
}
