import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/kcb_dash_nav_widget.dart';
import '/components/tappedcopy_widget.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/index.dart';
import 'all_trees_k_c_b_widget.dart' show AllTreesKCBWidget;
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AllTreesKCBModel extends FlutterFlowModel<AllTreesKCBWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in AllTreesKCB widget.
  List<AllTreesDeliveredRecord>? mainQuery;
  // Stores action output result for [Custom Action - stringToLatLong] action in AllTreesKCB widget.
  List<LatLng>? coordinates;
  // Model for kcbDashNav component.
  late KcbDashNavModel kcbDashNavModel1;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // State field(s) for GoogleMap widget.
  LatLng? googleMapsCenter;
  final googleMapsController = Completer<GoogleMapController>();
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
    tabBarController?.dispose();
    kcbDashNavModel2.dispose();
  }
}
