import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/iand_m_dashnav_widget.dart';
import '/components/tappedmap_iand_mbank_widget.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import 'all_trees_iand_m_bank_widget.dart' show AllTreesIandMBankWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AllTreesIandMBankModel extends FlutterFlowModel<AllTreesIandMBankWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in AllTreesIandMBank widget.
  List<AllTreesDeliveredRecord>? mainQuery;
  // Stores action output result for [Custom Action - stringToLatLong] action in AllTreesIandMBank widget.
  List<LatLng>? coordinates;
  // Model for IandMDashnav component.
  late IandMDashnavModel iandMDashnavModel1;
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
