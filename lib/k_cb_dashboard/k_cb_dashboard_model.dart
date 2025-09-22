import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/kcb_dash_nav_widget.dart';
import '/components/tappedmap_widget.dart';
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
import 'k_cb_dashboard_widget.dart' show KCbDashboardWidget;
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

class KCbDashboardModel extends FlutterFlowModel<KCbDashboardWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in KCbDashboard widget.
  List<AllTreesDeliveredRecord>? mainQuery;
  // Stores action output result for [Custom Action - stringToLatLong] action in KCbDashboard widget.
  List<LatLng>? coordinates;
  // Model for kcbDashNav component.
  late KcbDashNavModel kcbDashNavModel1;
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // State field(s) for GoogleMapphone widget.
  LatLng? googleMapphonesCenter;
  final googleMapphonesController = Completer<GoogleMapController>();
  // Model for kcbDashNav component.
  late KcbDashNavModel kcbDashNavModel2;

  @override
  void initState(BuildContext context) {
    kcbDashNavModel1 = createModel(context, () => KcbDashNavModel());
    kcbDashNavModel2 = createModel(context, () => KcbDashNavModel());
  }

  @override
  void dispose() {
    kcbDashNavModel1.dispose();
    kcbDashNavModel2.dispose();
  }
}
