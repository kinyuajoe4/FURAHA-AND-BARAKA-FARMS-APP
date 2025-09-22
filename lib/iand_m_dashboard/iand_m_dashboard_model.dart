import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/iand_m_dashnav_widget.dart';
import '/components/tappedmap_iand_mbank_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:math';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'iand_m_dashboard_widget.dart' show IandMDashboardWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';

class IandMDashboardModel extends FlutterFlowModel<IandMDashboardWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in IandMDashboard widget.
  List<AllTreesDeliveredRecord>? mainQuery;
  // Stores action output result for [Custom Action - stringToLatLong] action in IandMDashboard widget.
  List<LatLng>? coordinates;
  // Model for IandMDashnav component.
  late IandMDashnavModel iandMDashnavModel1;
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // State field(s) for GoogleMap widget.
  LatLng? googleMapsCenter;
  final googleMapsController = Completer<GoogleMapController>();
  // Model for IandMDashnav component.
  late IandMDashnavModel iandMDashnavModel2;

  @override
  void initState(BuildContext context) {
    iandMDashnavModel1 = createModel(context, () => IandMDashnavModel());
    iandMDashnavModel2 = createModel(context, () => IandMDashnavModel());
  }

  @override
  void dispose() {
    iandMDashnavModel1.dispose();
    iandMDashnavModel2.dispose();
  }
}
