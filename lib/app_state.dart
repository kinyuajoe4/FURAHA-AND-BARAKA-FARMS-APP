import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _showgreenButton =
          prefs.getBool('ff_showgreenButton') ?? _showgreenButton;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _showProgress1 = false;
  bool get showProgress1 => _showProgress1;
  set showProgress1(bool value) {
    _showProgress1 = value;
  }

  bool _showProgress2 = false;
  bool get showProgress2 => _showProgress2;
  set showProgress2(bool value) {
    _showProgress2 = value;
  }

  bool _showProgress3 = false;
  bool get showProgress3 => _showProgress3;
  set showProgress3(bool value) {
    _showProgress3 = value;
  }

  bool _showgreenButton = true;
  bool get showgreenButton => _showgreenButton;
  set showgreenButton(bool value) {
    _showgreenButton = value;
    prefs.setBool('ff_showgreenButton', value);
  }

  bool _showprogress4 = false;
  bool get showprogress4 => _showprogress4;
  set showprogress4(bool value) {
    _showprogress4 = value;
  }

  String _loadingimage = '';
  String get loadingimage => _loadingimage;
  set loadingimage(String value) {
    _loadingimage = value;
  }

  bool _page1 = false;
  bool get page1 => _page1;
  set page1(bool value) {
    _page1 = value;
  }

  bool _page2 = false;
  bool get page2 => _page2;
  set page2(bool value) {
    _page2 = value;
  }

  bool _page3 = false;
  bool get page3 => _page3;
  set page3(bool value) {
    _page3 = value;
  }

  bool _page4 = false;
  bool get page4 => _page4;
  set page4(bool value) {
    _page4 = value;
  }

  List<String> _PInames = ['0 -5\'\'', '5 -10\'\'', '10 -20\'\'', '20 -30\'\''];
  List<String> get PInames => _PInames;
  set PInames(List<String> value) {
    _PInames = value;
  }

  void addToPInames(String value) {
    PInames.add(value);
  }

  void removeFromPInames(String value) {
    PInames.remove(value);
  }

  void removeAtIndexFromPInames(int index) {
    PInames.removeAt(index);
  }

  void updatePInamesAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    PInames[index] = updateFn(_PInames[index]);
  }

  void insertAtIndexInPInames(int index, String value) {
    PInames.insert(index, value);
  }

  List<double> _piValues = [30.0, 20.0, 25.0, 25.0];
  List<double> get piValues => _piValues;
  set piValues(List<double> value) {
    _piValues = value;
  }

  void addToPiValues(double value) {
    piValues.add(value);
  }

  void removeFromPiValues(double value) {
    piValues.remove(value);
  }

  void removeAtIndexFromPiValues(int index) {
    piValues.removeAt(index);
  }

  void updatePiValuesAtIndex(
    int index,
    double Function(double) updateFn,
  ) {
    piValues[index] = updateFn(_piValues[index]);
  }

  void insertAtIndexInPiValues(int index, double value) {
    piValues.insert(index, value);
  }

  List<String> _PiTreesSurvival = ['Healthy trees', 'Damaged trees'];
  List<String> get PiTreesSurvival => _PiTreesSurvival;
  set PiTreesSurvival(List<String> value) {
    _PiTreesSurvival = value;
  }

  void addToPiTreesSurvival(String value) {
    PiTreesSurvival.add(value);
  }

  void removeFromPiTreesSurvival(String value) {
    PiTreesSurvival.remove(value);
  }

  void removeAtIndexFromPiTreesSurvival(int index) {
    PiTreesSurvival.removeAt(index);
  }

  void updatePiTreesSurvivalAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    PiTreesSurvival[index] = updateFn(_PiTreesSurvival[index]);
  }

  void insertAtIndexInPiTreesSurvival(int index, String value) {
    PiTreesSurvival.insert(index, value);
  }

  List<int> _rateofsurvival = [86, 14];
  List<int> get rateofsurvival => _rateofsurvival;
  set rateofsurvival(List<int> value) {
    _rateofsurvival = value;
  }

  void addToRateofsurvival(int value) {
    rateofsurvival.add(value);
  }

  void removeFromRateofsurvival(int value) {
    rateofsurvival.remove(value);
  }

  void removeAtIndexFromRateofsurvival(int index) {
    rateofsurvival.removeAt(index);
  }

  void updateRateofsurvivalAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    rateofsurvival[index] = updateFn(_rateofsurvival[index]);
  }

  void insertAtIndexInRateofsurvival(int index, int value) {
    rateofsurvival.insert(index, value);
  }

  /// oNCE THE DTB DASHBOARD LOADS THIS APPSTATE CHANGES TO TRUE  MAKING THE
  /// COLOR OF THE DTB DASHBOARD TEXT TO PINK
  bool _dtbDashboard = false;
  bool get dtbDashboard => _dtbDashboard;
  set dtbDashboard(bool value) {
    _dtbDashboard = value;
  }

  /// defines the current visit cycle
  double _IterrativeVisitConstant = 1.0;
  double get IterrativeVisitConstant => _IterrativeVisitConstant;
  set IterrativeVisitConstant(double value) {
    _IterrativeVisitConstant = value;
  }

  bool _mainNav1 = false;
  bool get mainNav1 => _mainNav1;
  set mainNav1(bool value) {
    _mainNav1 = value;
  }

  bool _mainNav2 = false;
  bool get mainNav2 => _mainNav2;
  set mainNav2(bool value) {
    _mainNav2 = value;
  }

  bool _mainNav3 = false;
  bool get mainNav3 => _mainNav3;
  set mainNav3(bool value) {
    _mainNav3 = value;
  }

  bool _mainNav4 = false;
  bool get mainNav4 => _mainNav4;
  set mainNav4(bool value) {
    _mainNav4 = value;
  }

  bool _mainNav5 = false;
  bool get mainNav5 => _mainNav5;
  set mainNav5(bool value) {
    _mainNav5 = value;
  }

  bool _mainNav6 = false;
  bool get mainNav6 => _mainNav6;
  set mainNav6(bool value) {
    _mainNav6 = value;
  }

  bool _mainNav7 = false;
  bool get mainNav7 => _mainNav7;
  set mainNav7(bool value) {
    _mainNav7 = value;
  }

  bool _mainNav8 = false;
  bool get mainNav8 => _mainNav8;
  set mainNav8(bool value) {
    _mainNav8 = value;
  }

  bool _mainNav9 = false;
  bool get mainNav9 => _mainNav9;
  set mainNav9(bool value) {
    _mainNav9 = value;
  }

  bool _carbonReportMain = false;
  bool get carbonReportMain => _carbonReportMain;
  set carbonReportMain(bool value) {
    _carbonReportMain = value;
  }

  String _onLoadAuthValue = '';
  String get onLoadAuthValue => _onLoadAuthValue;
  set onLoadAuthValue(String value) {
    _onLoadAuthValue = value;
  }

  String _authComp = '';
  String get authComp => _authComp;
  set authComp(String value) {
    _authComp = value;
  }

  String _planterCompanyFilter = '';
  String get planterCompanyFilter => _planterCompanyFilter;
  set planterCompanyFilter(String value) {
    _planterCompanyFilter = value;
  }

  bool _isDTBFilter = false;
  bool get isDTBFilter => _isDTBFilter;
  set isDTBFilter(bool value) {
    _isDTBFilter = value;
  }

  String _errorMessage = '';
  String get errorMessage => _errorMessage;
  set errorMessage(String value) {
    _errorMessage = value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
