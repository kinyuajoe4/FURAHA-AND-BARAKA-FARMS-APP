import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'dashboards_widget.dart' show DashboardsWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DashboardsModel extends FlutterFlowModel<DashboardsWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for searchBar widget.
  FocusNode? searchBarFocusNode1;
  TextEditingController? searchBarTextController1;
  String? Function(BuildContext, String?)? searchBarTextController1Validator;
  // State field(s) for UNIAH widget.
  FocusNode? uniahFocusNode;
  TextEditingController? uniahTextController;
  String? Function(BuildContext, String?)? uniahTextControllerValidator;
  // State field(s) for searchBar widget.
  FocusNode? searchBarFocusNode2;
  TextEditingController? searchBarTextController2;
  String? Function(BuildContext, String?)? searchBarTextController2Validator;
  // State field(s) for searchBar widget.
  FocusNode? searchBarFocusNode3;
  TextEditingController? searchBarTextController3;
  String? Function(BuildContext, String?)? searchBarTextController3Validator;
  // State field(s) for kpa widget.
  FocusNode? kpaFocusNode;
  TextEditingController? kpaTextController;
  String? Function(BuildContext, String?)? kpaTextControllerValidator;
  // State field(s) for kpasafety widget.
  FocusNode? kpasafetyFocusNode;
  TextEditingController? kpasafetyTextController;
  String? Function(BuildContext, String?)? kpasafetyTextControllerValidator;
  // State field(s) for dtbpillars widget.
  FocusNode? dtbpillarsFocusNode;
  TextEditingController? dtbpillarsTextController;
  String? Function(BuildContext, String?)? dtbpillarsTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    searchBarFocusNode1?.dispose();
    searchBarTextController1?.dispose();

    uniahFocusNode?.dispose();
    uniahTextController?.dispose();

    searchBarFocusNode2?.dispose();
    searchBarTextController2?.dispose();

    searchBarFocusNode3?.dispose();
    searchBarTextController3?.dispose();

    kpaFocusNode?.dispose();
    kpaTextController?.dispose();

    kpasafetyFocusNode?.dispose();
    kpasafetyTextController?.dispose();

    dtbpillarsFocusNode?.dispose();
    dtbpillarsTextController?.dispose();
  }
}
