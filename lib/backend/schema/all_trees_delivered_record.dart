import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AllTreesDeliveredRecord extends FirestoreRecord {
  AllTreesDeliveredRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "RED_CIDER" field.
  int? _redCider;
  int get redCider => _redCider ?? 0;
  bool hasRedCider() => _redCider != null;

  // "OLEA_AFRICANA" field.
  int? _oleaAfricana;
  int get oleaAfricana => _oleaAfricana ?? 0;
  bool hasOleaAfricana() => _oleaAfricana != null;

  // "LEMON" field.
  int? _lemon;
  int get lemon => _lemon ?? 0;
  bool hasLemon() => _lemon != null;

  // "CYPRESS" field.
  int? _cypress;
  int get cypress => _cypress ?? 0;
  bool hasCypress() => _cypress != null;

  // "SENNA_SIAMEA" field.
  int? _sennaSiamea;
  int get sennaSiamea => _sennaSiamea ?? 0;
  bool hasSennaSiamea() => _sennaSiamea != null;

  // "CASUARINA" field.
  int? _casuarina;
  int get casuarina => _casuarina ?? 0;
  bool hasCasuarina() => _casuarina != null;

  // "MARKHAMIA_LUTEA" field.
  int? _markhamiaLutea;
  int get markhamiaLutea => _markhamiaLutea ?? 0;
  bool hasMarkhamiaLutea() => _markhamiaLutea != null;

  // "CROTON_MEGALOCARPUS" field.
  int? _crotonMegalocarpus;
  int get crotonMegalocarpus => _crotonMegalocarpus ?? 0;
  bool hasCrotonMegalocarpus() => _crotonMegalocarpus != null;

  // "SYZYGIUM" field.
  int? _syzygium;
  int get syzygium => _syzygium ?? 0;
  bool hasSyzygium() => _syzygium != null;

  // "WHITE_SAPOTE" field.
  int? _whiteSapote;
  int get whiteSapote => _whiteSapote ?? 0;
  bool hasWhiteSapote() => _whiteSapote != null;

  // "PODO" field.
  int? _podo;
  int get podo => _podo ?? 0;
  bool hasPodo() => _podo != null;

  // "PRUNUS_AFRICANA" field.
  int? _prunusAfricana;
  int get prunusAfricana => _prunusAfricana ?? 0;
  bool hasPrunusAfricana() => _prunusAfricana != null;

  // "MANGO" field.
  int? _mango;
  int get mango => _mango ?? 0;
  bool hasMango() => _mango != null;

  // "MEXICAN_GREENASH" field.
  int? _mexicanGreenash;
  int get mexicanGreenash => _mexicanGreenash ?? 0;
  bool hasMexicanGreenash() => _mexicanGreenash != null;

  // "BLUE_GUM" field.
  int? _blueGum;
  int get blueGum => _blueGum ?? 0;
  bool hasBlueGum() => _blueGum != null;

  // "SALIGNA" field.
  int? _saligna;
  int get saligna => _saligna ?? 0;
  bool hasSaligna() => _saligna != null;

  // "MACADAMIA_MURANGA_20" field.
  int? _macadamiaMuranga20;
  int get macadamiaMuranga20 => _macadamiaMuranga20 ?? 0;
  bool hasMacadamiaMuranga20() => _macadamiaMuranga20 != null;

  // "TANGERINE" field.
  int? _tangerine;
  int get tangerine => _tangerine ?? 0;
  bool hasTangerine() => _tangerine != null;

  // "GUAVA" field.
  int? _guava;
  int get guava => _guava ?? 0;
  bool hasGuava() => _guava != null;

  // "PIXIE_ORANGES" field.
  int? _pixieOranges;
  int get pixieOranges => _pixieOranges ?? 0;
  bool hasPixieOranges() => _pixieOranges != null;

  // "BERRY" field.
  int? _berry;
  int get berry => _berry ?? 0;
  bool hasBerry() => _berry != null;

  // "HASS_AVOCADO" field.
  int? _hassAvocado;
  int get hassAvocado => _hassAvocado ?? 0;
  bool hasHassAvocado() => _hassAvocado != null;

  // "BOTTLE_BRUSH" field.
  int? _bottleBrush;
  int get bottleBrush => _bottleBrush ?? 0;
  bool hasBottleBrush() => _bottleBrush != null;

  // "GREVILLEA" field.
  int? _grevillea;
  int get grevillea => _grevillea ?? 0;
  bool hasGrevillea() => _grevillea != null;

  // "GIANT_BAMBOO" field.
  int? _giantBamboo;
  int get giantBamboo => _giantBamboo ?? 0;
  bool hasGiantBamboo() => _giantBamboo != null;

  // "NEEM" field.
  int? _neem;
  int get neem => _neem ?? 0;
  bool hasNeem() => _neem != null;

  // "MORINGA" field.
  int? _moringa;
  int get moringa => _moringa ?? 0;
  bool hasMoringa() => _moringa != null;

  // "ASHOK" field.
  int? _ashok;
  int get ashok => _ashok ?? 0;
  bool hasAshok() => _ashok != null;

  // "ACACIA" field.
  int? _acacia;
  int get acacia => _acacia ?? 0;
  bool hasAcacia() => _acacia != null;

  // "MAHOGANY" field.
  int? _mahogany;
  int get mahogany => _mahogany ?? 0;
  bool hasMahogany() => _mahogany != null;

  // "TERMINALIA" field.
  int? _terminalia;
  int get terminalia => _terminalia ?? 0;
  bool hasTerminalia() => _terminalia != null;

  // "EUCALYPTUS" field.
  int? _eucalyptus;
  int get eucalyptus => _eucalyptus ?? 0;
  bool hasEucalyptus() => _eucalyptus != null;

  // "PAWPAW" field.
  int? _pawpaw;
  int get pawpaw => _pawpaw ?? 0;
  bool hasPawpaw() => _pawpaw != null;

  // "COUNTY" field.
  String? _county;
  String get county => _county ?? '';
  bool hasCounty() => _county != null;

  // "INSTITUTION" field.
  String? _institution;
  String get institution => _institution ?? '';
  bool hasInstitution() => _institution != null;

  // "TreeSpeciesDelivered" field.
  String? _treeSpeciesDelivered;
  String get treeSpeciesDelivered => _treeSpeciesDelivered ?? '';
  bool hasTreeSpeciesDelivered() => _treeSpeciesDelivered != null;

  // "RECEIVEDBY" field.
  String? _receivedby;
  String get receivedby => _receivedby ?? '';
  bool hasReceivedby() => _receivedby != null;

  // "CONTACT" field.
  String? _contact;
  String get contact => _contact ?? '';
  bool hasContact() => _contact != null;

  // "Timestamp" field.
  String? _timestamp;
  String get timestamp => _timestamp ?? '';
  bool hasTimestamp() => _timestamp != null;

  // "DeliveryDate" field.
  String? _deliveryDate;
  String get deliveryDate => _deliveryDate ?? '';
  bool hasDeliveryDate() => _deliveryDate != null;

  // "COORDINATES" field.
  String? _coordinates;
  String get coordinates => _coordinates ?? '';
  bool hasCoordinates() => _coordinates != null;

  // "SpecificLocation" field.
  LatLng? _specificLocation;
  LatLng? get specificLocation => _specificLocation;
  bool hasSpecificLocation() => _specificLocation != null;

  // "datesListFromPlantation" field.
  List<String>? _datesListFromPlantation;
  List<String> get datesListFromPlantation =>
      _datesListFromPlantation ?? const [];
  bool hasDatesListFromPlantation() => _datesListFromPlantation != null;

  // "speciesListFromPlanting" field.
  List<String>? _speciesListFromPlanting;
  List<String> get speciesListFromPlanting =>
      _speciesListFromPlanting ?? const [];
  bool hasSpeciesListFromPlanting() => _speciesListFromPlanting != null;

  // "totatTreesList" field.
  List<int>? _totatTreesList;
  List<int> get totatTreesList => _totatTreesList ?? const [];
  bool hasTotatTreesList() => _totatTreesList != null;

  // "totalAliveTreesList" field.
  List<int>? _totalAliveTreesList;
  List<int> get totalAliveTreesList => _totalAliveTreesList ?? const [];
  bool hasTotalAliveTreesList() => _totalAliveTreesList != null;

  // "conditionofTreesList" field.
  List<String>? _conditionofTreesList;
  List<String> get conditionofTreesList => _conditionofTreesList ?? const [];
  bool hasConditionofTreesList() => _conditionofTreesList != null;

  // "totalTreesReplaced" field.
  List<int>? _totalTreesReplaced;
  List<int> get totalTreesReplaced => _totalTreesReplaced ?? const [];
  bool hasTotalTreesReplaced() => _totalTreesReplaced != null;

  // "dateOfReplacement" field.
  List<DateTime>? _dateOfReplacement;
  List<DateTime> get dateOfReplacement => _dateOfReplacement ?? const [];
  bool hasDateOfReplacement() => _dateOfReplacement != null;

  // "treesPhotolist" field.
  List<String>? _treesPhotolist;
  List<String> get treesPhotolist => _treesPhotolist ?? const [];
  bool hasTreesPhotolist() => _treesPhotolist != null;

  // "TOTAL_TREE_SPECIES" field.
  double? _totalTreeSpecies;
  double get totalTreeSpecies => _totalTreeSpecies ?? 0.0;
  bool hasTotalTreeSpecies() => _totalTreeSpecies != null;

  // "extraComments" field.
  List<String>? _extraComments;
  List<String> get extraComments => _extraComments ?? const [];
  bool hasExtraComments() => _extraComments != null;

  // "totalDeadTreesList" field.
  List<double>? _totalDeadTreesList;
  List<double> get totalDeadTreesList => _totalDeadTreesList ?? const [];
  bool hasTotalDeadTreesList() => _totalDeadTreesList != null;

  // "isIandM" field.
  bool? _isIandM;
  bool get isIandM => _isIandM ?? false;
  bool hasIsIandM() => _isIandM != null;

  // "ispersonalTree" field.
  bool? _ispersonalTree;
  bool get ispersonalTree => _ispersonalTree ?? false;
  bool hasIspersonalTree() => _ispersonalTree != null;

  // "dateofPlanting" field.
  DateTime? _dateofPlanting;
  DateTime? get dateofPlanting => _dateofPlanting;
  bool hasDateofPlanting() => _dateofPlanting != null;

  // "treeCategory" field.
  String? _treeCategory;
  String get treeCategory => _treeCategory ?? '';
  bool hasTreeCategory() => _treeCategory != null;

  // "isDTBandKCB" field.
  bool? _isDTBandKCB;
  bool get isDTBandKCB => _isDTBandKCB ?? false;
  bool hasIsDTBandKCB() => _isDTBandKCB != null;

  // "PASSION" field.
  int? _passion;
  int get passion => _passion ?? 0;
  bool hasPassion() => _passion != null;

  // "isnewspecie" field.
  bool? _isnewspecie;
  bool get isnewspecie => _isnewspecie ?? false;
  bool hasIsnewspecie() => _isnewspecie != null;

  // "NUMBER_OF_TREES_DELIVERED" field.
  double? _numberOfTreesDelivered;
  double get numberOfTreesDelivered => _numberOfTreesDelivered ?? 0.0;
  bool hasNumberOfTreesDelivered() => _numberOfTreesDelivered != null;

  // "PlanterCompany" field.
  String? _planterCompany;
  String get planterCompany => _planterCompany ?? '';
  bool hasPlanterCompany() => _planterCompany != null;

  // "D_NoteNo" field.
  String? _dNoteNo;
  String get dNoteNo => _dNoteNo ?? '';
  bool hasDNoteNo() => _dNoteNo != null;

  // "LOQUAT" field.
  int? _loquat;
  int get loquat => _loquat ?? 0;
  bool hasLoquat() => _loquat != null;

  // "YEAR" field.
  int? _year;
  int get year => _year ?? 0;
  bool hasYear() => _year != null;

  // "PINE" field.
  int? _pine;
  int get pine => _pine ?? 0;
  bool hasPine() => _pine != null;

  // "MLUKINA" field.
  int? _mlukina;
  int get mlukina => _mlukina ?? 0;
  bool hasMlukina() => _mlukina != null;

  // "MKILIFI" field.
  int? _mkilifi;
  int get mkilifi => _mkilifi ?? 0;
  bool hasMkilifi() => _mkilifi != null;

  // "MSUKUKU" field.
  int? _msukuku;
  int get msukuku => _msukuku ?? 0;
  bool hasMsukuku() => _msukuku != null;

  // "MSONOBARI" field.
  int? _msonobari;
  int get msonobari => _msonobari ?? 0;
  bool hasMsonobari() => _msonobari != null;

  // "TOMOKO" field.
  int? _tomoko;
  int get tomoko => _tomoko ?? 0;
  bool hasTomoko() => _tomoko != null;

  // "CITRUS" field.
  int? _citrus;
  int get citrus => _citrus ?? 0;
  bool hasCitrus() => _citrus != null;

  // "MBIRIMBI" field.
  int? _mbirimbi;
  int get mbirimbi => _mbirimbi ?? 0;
  bool hasMbirimbi() => _mbirimbi != null;

  // "GLICIDIA" field.
  int? _glicidia;
  int get glicidia => _glicidia ?? 0;
  bool hasGlicidia() => _glicidia != null;

  // "PHASE" field.
  String? _phase;
  String get phase => _phase ?? '';
  bool hasPhase() => _phase != null;

  // "subPlanterCompany" field.
  String? _subPlanterCompany;
  String get subPlanterCompany => _subPlanterCompany ?? '';
  bool hasSubPlanterCompany() => _subPlanterCompany != null;

  // "singleEntry" field.
  double? _singleEntry;
  double get singleEntry => _singleEntry ?? 0.0;
  bool hasSingleEntry() => _singleEntry != null;

  void _initializeFields() {
    _redCider = castToType<int>(snapshotData['RED_CIDER']);
    _oleaAfricana = castToType<int>(snapshotData['OLEA_AFRICANA']);
    _lemon = castToType<int>(snapshotData['LEMON']);
    _cypress = castToType<int>(snapshotData['CYPRESS']);
    _sennaSiamea = castToType<int>(snapshotData['SENNA_SIAMEA']);
    _casuarina = castToType<int>(snapshotData['CASUARINA']);
    _markhamiaLutea = castToType<int>(snapshotData['MARKHAMIA_LUTEA']);
    _crotonMegalocarpus = castToType<int>(snapshotData['CROTON_MEGALOCARPUS']);
    _syzygium = castToType<int>(snapshotData['SYZYGIUM']);
    _whiteSapote = castToType<int>(snapshotData['WHITE_SAPOTE']);
    _podo = castToType<int>(snapshotData['PODO']);
    _prunusAfricana = castToType<int>(snapshotData['PRUNUS_AFRICANA']);
    _mango = castToType<int>(snapshotData['MANGO']);
    _mexicanGreenash = castToType<int>(snapshotData['MEXICAN_GREENASH']);
    _blueGum = castToType<int>(snapshotData['BLUE_GUM']);
    _saligna = castToType<int>(snapshotData['SALIGNA']);
    _macadamiaMuranga20 = castToType<int>(snapshotData['MACADAMIA_MURANGA_20']);
    _tangerine = castToType<int>(snapshotData['TANGERINE']);
    _guava = castToType<int>(snapshotData['GUAVA']);
    _pixieOranges = castToType<int>(snapshotData['PIXIE_ORANGES']);
    _berry = castToType<int>(snapshotData['BERRY']);
    _hassAvocado = castToType<int>(snapshotData['HASS_AVOCADO']);
    _bottleBrush = castToType<int>(snapshotData['BOTTLE_BRUSH']);
    _grevillea = castToType<int>(snapshotData['GREVILLEA']);
    _giantBamboo = castToType<int>(snapshotData['GIANT_BAMBOO']);
    _neem = castToType<int>(snapshotData['NEEM']);
    _moringa = castToType<int>(snapshotData['MORINGA']);
    _ashok = castToType<int>(snapshotData['ASHOK']);
    _acacia = castToType<int>(snapshotData['ACACIA']);
    _mahogany = castToType<int>(snapshotData['MAHOGANY']);
    _terminalia = castToType<int>(snapshotData['TERMINALIA']);
    _eucalyptus = castToType<int>(snapshotData['EUCALYPTUS']);
    _pawpaw = castToType<int>(snapshotData['PAWPAW']);
    _county = snapshotData['COUNTY'] as String?;
    _institution = snapshotData['INSTITUTION'] as String?;
    _treeSpeciesDelivered = snapshotData['TreeSpeciesDelivered'] as String?;
    _receivedby = snapshotData['RECEIVEDBY'] as String?;
    _contact = snapshotData['CONTACT'] as String?;
    _timestamp = snapshotData['Timestamp'] as String?;
    _deliveryDate = snapshotData['DeliveryDate'] as String?;
    _coordinates = snapshotData['COORDINATES'] as String?;
    _specificLocation = snapshotData['SpecificLocation'] as LatLng?;
    _datesListFromPlantation =
        getDataList(snapshotData['datesListFromPlantation']);
    _speciesListFromPlanting =
        getDataList(snapshotData['speciesListFromPlanting']);
    _totatTreesList = getDataList(snapshotData['totatTreesList']);
    _totalAliveTreesList = getDataList(snapshotData['totalAliveTreesList']);
    _conditionofTreesList = getDataList(snapshotData['conditionofTreesList']);
    _totalTreesReplaced = getDataList(snapshotData['totalTreesReplaced']);
    _dateOfReplacement = getDataList(snapshotData['dateOfReplacement']);
    _treesPhotolist = getDataList(snapshotData['treesPhotolist']);
    _totalTreeSpecies = castToType<double>(snapshotData['TOTAL_TREE_SPECIES']);
    _extraComments = getDataList(snapshotData['extraComments']);
    _totalDeadTreesList = getDataList(snapshotData['totalDeadTreesList']);
    _isIandM = snapshotData['isIandM'] as bool?;
    _ispersonalTree = snapshotData['ispersonalTree'] as bool?;
    _dateofPlanting = snapshotData['dateofPlanting'] as DateTime?;
    _treeCategory = snapshotData['treeCategory'] as String?;
    _isDTBandKCB = snapshotData['isDTBandKCB'] as bool?;
    _passion = castToType<int>(snapshotData['PASSION']);
    _isnewspecie = snapshotData['isnewspecie'] as bool?;
    _numberOfTreesDelivered =
        castToType<double>(snapshotData['NUMBER_OF_TREES_DELIVERED']);
    _planterCompany = snapshotData['PlanterCompany'] as String?;
    _dNoteNo = snapshotData['D_NoteNo'] as String?;
    _loquat = castToType<int>(snapshotData['LOQUAT']);
    _year = castToType<int>(snapshotData['YEAR']);
    _pine = castToType<int>(snapshotData['PINE']);
    _mlukina = castToType<int>(snapshotData['MLUKINA']);
    _mkilifi = castToType<int>(snapshotData['MKILIFI']);
    _msukuku = castToType<int>(snapshotData['MSUKUKU']);
    _msonobari = castToType<int>(snapshotData['MSONOBARI']);
    _tomoko = castToType<int>(snapshotData['TOMOKO']);
    _citrus = castToType<int>(snapshotData['CITRUS']);
    _mbirimbi = castToType<int>(snapshotData['MBIRIMBI']);
    _glicidia = castToType<int>(snapshotData['GLICIDIA']);
    _phase = snapshotData['PHASE'] as String?;
    _subPlanterCompany = snapshotData['subPlanterCompany'] as String?;
    _singleEntry = castToType<double>(snapshotData['singleEntry']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('allTreesDelivered');

  static Stream<AllTreesDeliveredRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AllTreesDeliveredRecord.fromSnapshot(s));

  static Future<AllTreesDeliveredRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => AllTreesDeliveredRecord.fromSnapshot(s));

  static AllTreesDeliveredRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AllTreesDeliveredRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AllTreesDeliveredRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AllTreesDeliveredRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AllTreesDeliveredRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AllTreesDeliveredRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAllTreesDeliveredRecordData({
  int? redCider,
  int? oleaAfricana,
  int? lemon,
  int? cypress,
  int? sennaSiamea,
  int? casuarina,
  int? markhamiaLutea,
  int? crotonMegalocarpus,
  int? syzygium,
  int? whiteSapote,
  int? podo,
  int? prunusAfricana,
  int? mango,
  int? mexicanGreenash,
  int? blueGum,
  int? saligna,
  int? macadamiaMuranga20,
  int? tangerine,
  int? guava,
  int? pixieOranges,
  int? berry,
  int? hassAvocado,
  int? bottleBrush,
  int? grevillea,
  int? giantBamboo,
  int? neem,
  int? moringa,
  int? ashok,
  int? acacia,
  int? mahogany,
  int? terminalia,
  int? eucalyptus,
  int? pawpaw,
  String? county,
  String? institution,
  String? treeSpeciesDelivered,
  String? receivedby,
  String? contact,
  String? timestamp,
  String? deliveryDate,
  String? coordinates,
  LatLng? specificLocation,
  double? totalTreeSpecies,
  bool? isIandM,
  bool? ispersonalTree,
  DateTime? dateofPlanting,
  String? treeCategory,
  bool? isDTBandKCB,
  int? passion,
  bool? isnewspecie,
  double? numberOfTreesDelivered,
  String? planterCompany,
  String? dNoteNo,
  int? loquat,
  int? year,
  int? pine,
  int? mlukina,
  int? mkilifi,
  int? msukuku,
  int? msonobari,
  int? tomoko,
  int? citrus,
  int? mbirimbi,
  int? glicidia,
  String? phase,
  String? subPlanterCompany,
  double? singleEntry,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'RED_CIDER': redCider,
      'OLEA_AFRICANA': oleaAfricana,
      'LEMON': lemon,
      'CYPRESS': cypress,
      'SENNA_SIAMEA': sennaSiamea,
      'CASUARINA': casuarina,
      'MARKHAMIA_LUTEA': markhamiaLutea,
      'CROTON_MEGALOCARPUS': crotonMegalocarpus,
      'SYZYGIUM': syzygium,
      'WHITE_SAPOTE': whiteSapote,
      'PODO': podo,
      'PRUNUS_AFRICANA': prunusAfricana,
      'MANGO': mango,
      'MEXICAN_GREENASH': mexicanGreenash,
      'BLUE_GUM': blueGum,
      'SALIGNA': saligna,
      'MACADAMIA_MURANGA_20': macadamiaMuranga20,
      'TANGERINE': tangerine,
      'GUAVA': guava,
      'PIXIE_ORANGES': pixieOranges,
      'BERRY': berry,
      'HASS_AVOCADO': hassAvocado,
      'BOTTLE_BRUSH': bottleBrush,
      'GREVILLEA': grevillea,
      'GIANT_BAMBOO': giantBamboo,
      'NEEM': neem,
      'MORINGA': moringa,
      'ASHOK': ashok,
      'ACACIA': acacia,
      'MAHOGANY': mahogany,
      'TERMINALIA': terminalia,
      'EUCALYPTUS': eucalyptus,
      'PAWPAW': pawpaw,
      'COUNTY': county,
      'INSTITUTION': institution,
      'TreeSpeciesDelivered': treeSpeciesDelivered,
      'RECEIVEDBY': receivedby,
      'CONTACT': contact,
      'Timestamp': timestamp,
      'DeliveryDate': deliveryDate,
      'COORDINATES': coordinates,
      'SpecificLocation': specificLocation,
      'TOTAL_TREE_SPECIES': totalTreeSpecies,
      'isIandM': isIandM,
      'ispersonalTree': ispersonalTree,
      'dateofPlanting': dateofPlanting,
      'treeCategory': treeCategory,
      'isDTBandKCB': isDTBandKCB,
      'PASSION': passion,
      'isnewspecie': isnewspecie,
      'NUMBER_OF_TREES_DELIVERED': numberOfTreesDelivered,
      'PlanterCompany': planterCompany,
      'D_NoteNo': dNoteNo,
      'LOQUAT': loquat,
      'YEAR': year,
      'PINE': pine,
      'MLUKINA': mlukina,
      'MKILIFI': mkilifi,
      'MSUKUKU': msukuku,
      'MSONOBARI': msonobari,
      'TOMOKO': tomoko,
      'CITRUS': citrus,
      'MBIRIMBI': mbirimbi,
      'GLICIDIA': glicidia,
      'PHASE': phase,
      'subPlanterCompany': subPlanterCompany,
      'singleEntry': singleEntry,
    }.withoutNulls,
  );

  return firestoreData;
}

class AllTreesDeliveredRecordDocumentEquality
    implements Equality<AllTreesDeliveredRecord> {
  const AllTreesDeliveredRecordDocumentEquality();

  @override
  bool equals(AllTreesDeliveredRecord? e1, AllTreesDeliveredRecord? e2) {
    const listEquality = ListEquality();
    return e1?.redCider == e2?.redCider &&
        e1?.oleaAfricana == e2?.oleaAfricana &&
        e1?.lemon == e2?.lemon &&
        e1?.cypress == e2?.cypress &&
        e1?.sennaSiamea == e2?.sennaSiamea &&
        e1?.casuarina == e2?.casuarina &&
        e1?.markhamiaLutea == e2?.markhamiaLutea &&
        e1?.crotonMegalocarpus == e2?.crotonMegalocarpus &&
        e1?.syzygium == e2?.syzygium &&
        e1?.whiteSapote == e2?.whiteSapote &&
        e1?.podo == e2?.podo &&
        e1?.prunusAfricana == e2?.prunusAfricana &&
        e1?.mango == e2?.mango &&
        e1?.mexicanGreenash == e2?.mexicanGreenash &&
        e1?.blueGum == e2?.blueGum &&
        e1?.saligna == e2?.saligna &&
        e1?.macadamiaMuranga20 == e2?.macadamiaMuranga20 &&
        e1?.tangerine == e2?.tangerine &&
        e1?.guava == e2?.guava &&
        e1?.pixieOranges == e2?.pixieOranges &&
        e1?.berry == e2?.berry &&
        e1?.hassAvocado == e2?.hassAvocado &&
        e1?.bottleBrush == e2?.bottleBrush &&
        e1?.grevillea == e2?.grevillea &&
        e1?.giantBamboo == e2?.giantBamboo &&
        e1?.neem == e2?.neem &&
        e1?.moringa == e2?.moringa &&
        e1?.ashok == e2?.ashok &&
        e1?.acacia == e2?.acacia &&
        e1?.mahogany == e2?.mahogany &&
        e1?.terminalia == e2?.terminalia &&
        e1?.eucalyptus == e2?.eucalyptus &&
        e1?.pawpaw == e2?.pawpaw &&
        e1?.county == e2?.county &&
        e1?.institution == e2?.institution &&
        e1?.treeSpeciesDelivered == e2?.treeSpeciesDelivered &&
        e1?.receivedby == e2?.receivedby &&
        e1?.contact == e2?.contact &&
        e1?.timestamp == e2?.timestamp &&
        e1?.deliveryDate == e2?.deliveryDate &&
        e1?.coordinates == e2?.coordinates &&
        e1?.specificLocation == e2?.specificLocation &&
        listEquality.equals(
            e1?.datesListFromPlantation, e2?.datesListFromPlantation) &&
        listEquality.equals(
            e1?.speciesListFromPlanting, e2?.speciesListFromPlanting) &&
        listEquality.equals(e1?.totatTreesList, e2?.totatTreesList) &&
        listEquality.equals(e1?.totalAliveTreesList, e2?.totalAliveTreesList) &&
        listEquality.equals(
            e1?.conditionofTreesList, e2?.conditionofTreesList) &&
        listEquality.equals(e1?.totalTreesReplaced, e2?.totalTreesReplaced) &&
        listEquality.equals(e1?.dateOfReplacement, e2?.dateOfReplacement) &&
        listEquality.equals(e1?.treesPhotolist, e2?.treesPhotolist) &&
        e1?.totalTreeSpecies == e2?.totalTreeSpecies &&
        listEquality.equals(e1?.extraComments, e2?.extraComments) &&
        listEquality.equals(e1?.totalDeadTreesList, e2?.totalDeadTreesList) &&
        e1?.isIandM == e2?.isIandM &&
        e1?.ispersonalTree == e2?.ispersonalTree &&
        e1?.dateofPlanting == e2?.dateofPlanting &&
        e1?.treeCategory == e2?.treeCategory &&
        e1?.isDTBandKCB == e2?.isDTBandKCB &&
        e1?.passion == e2?.passion &&
        e1?.isnewspecie == e2?.isnewspecie &&
        e1?.numberOfTreesDelivered == e2?.numberOfTreesDelivered &&
        e1?.planterCompany == e2?.planterCompany &&
        e1?.dNoteNo == e2?.dNoteNo &&
        e1?.loquat == e2?.loquat &&
        e1?.year == e2?.year &&
        e1?.pine == e2?.pine &&
        e1?.mlukina == e2?.mlukina &&
        e1?.mkilifi == e2?.mkilifi &&
        e1?.msukuku == e2?.msukuku &&
        e1?.msonobari == e2?.msonobari &&
        e1?.tomoko == e2?.tomoko &&
        e1?.citrus == e2?.citrus &&
        e1?.mbirimbi == e2?.mbirimbi &&
        e1?.glicidia == e2?.glicidia &&
        e1?.phase == e2?.phase &&
        e1?.subPlanterCompany == e2?.subPlanterCompany &&
        e1?.singleEntry == e2?.singleEntry;
  }

  @override
  int hash(AllTreesDeliveredRecord? e) => const ListEquality().hash([
        e?.redCider,
        e?.oleaAfricana,
        e?.lemon,
        e?.cypress,
        e?.sennaSiamea,
        e?.casuarina,
        e?.markhamiaLutea,
        e?.crotonMegalocarpus,
        e?.syzygium,
        e?.whiteSapote,
        e?.podo,
        e?.prunusAfricana,
        e?.mango,
        e?.mexicanGreenash,
        e?.blueGum,
        e?.saligna,
        e?.macadamiaMuranga20,
        e?.tangerine,
        e?.guava,
        e?.pixieOranges,
        e?.berry,
        e?.hassAvocado,
        e?.bottleBrush,
        e?.grevillea,
        e?.giantBamboo,
        e?.neem,
        e?.moringa,
        e?.ashok,
        e?.acacia,
        e?.mahogany,
        e?.terminalia,
        e?.eucalyptus,
        e?.pawpaw,
        e?.county,
        e?.institution,
        e?.treeSpeciesDelivered,
        e?.receivedby,
        e?.contact,
        e?.timestamp,
        e?.deliveryDate,
        e?.coordinates,
        e?.specificLocation,
        e?.datesListFromPlantation,
        e?.speciesListFromPlanting,
        e?.totatTreesList,
        e?.totalAliveTreesList,
        e?.conditionofTreesList,
        e?.totalTreesReplaced,
        e?.dateOfReplacement,
        e?.treesPhotolist,
        e?.totalTreeSpecies,
        e?.extraComments,
        e?.totalDeadTreesList,
        e?.isIandM,
        e?.ispersonalTree,
        e?.dateofPlanting,
        e?.treeCategory,
        e?.isDTBandKCB,
        e?.passion,
        e?.isnewspecie,
        e?.numberOfTreesDelivered,
        e?.planterCompany,
        e?.dNoteNo,
        e?.loquat,
        e?.year,
        e?.pine,
        e?.mlukina,
        e?.mkilifi,
        e?.msukuku,
        e?.msonobari,
        e?.tomoko,
        e?.citrus,
        e?.mbirimbi,
        e?.glicidia,
        e?.phase,
        e?.subPlanterCompany,
        e?.singleEntry
      ]);

  @override
  bool isValidKey(Object? o) => o is AllTreesDeliveredRecord;
}
