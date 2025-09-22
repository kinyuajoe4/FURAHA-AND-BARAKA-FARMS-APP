import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/kcb_dash_nav_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'carbon_absorbed_k_c_b_widget.dart' show CarbonAbsorbedKCBWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CarbonAbsorbedKCBModel extends FlutterFlowModel<CarbonAbsorbedKCBWidget> {
  ///  Local state fields for this page.

  double carbonAbsorbed = 8312.0;

  bool? y2023;

  bool? y2024;

  bool y2025 = true;

  /// y2026
  bool? y2026;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in CarbonAbsorbedKCB widget.
  List<TotalTreesPerSpeciesRecord>? speciestotalKCB;
  // Stores action output result for [Custom Action - sumValidTreeDensities] action in CarbonAbsorbedKCB widget.
  double? totalCarbonseqKCB;
  // Model for kcbDashNav component.
  late KcbDashNavModel kcbDashNavModel1;
  // Stores action output result for [Custom Action - sumValidTreeDensities] action in Container widget.
  double? totalCarbonseqKC;
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
