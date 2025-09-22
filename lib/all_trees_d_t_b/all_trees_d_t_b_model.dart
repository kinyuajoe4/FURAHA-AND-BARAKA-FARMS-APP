import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/dtb_dashnav_widget.dart';
import '/components/tappedcopy_widget.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'all_trees_d_t_b_widget.dart' show AllTreesDTBWidget;
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AllTreesDTBModel extends FlutterFlowModel<AllTreesDTBWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in AllTreesDTB widget.
  List<AllTreesDeliveredRecord>? mainQuery;
  // Stores action output result for [Custom Action - stringToLatLong] action in AllTreesDTB widget.
  List<LatLng>? coordinates;
  // Model for dtbDashnav component.
  late DtbDashnavModel dtbDashnavModel;
  // State field(s) for GoogleMap widget.
  LatLng? googleMapsCenter;
  final googleMapsController = Completer<GoogleMapController>();

  @override
  void initState(BuildContext context) {
    dtbDashnavModel = createModel(context, () => DtbDashnavModel());
  }

  @override
  void dispose() {
    dtbDashnavModel.dispose();
  }
}
