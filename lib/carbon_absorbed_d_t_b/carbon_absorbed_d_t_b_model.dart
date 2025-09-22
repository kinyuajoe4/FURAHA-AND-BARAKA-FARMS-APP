import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/dtb_dashnav_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'carbon_absorbed_d_t_b_widget.dart' show CarbonAbsorbedDTBWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CarbonAbsorbedDTBModel extends FlutterFlowModel<CarbonAbsorbedDTBWidget> {
  ///  Local state fields for this page.

  double carbonAbsorbed = 8312.0;

  bool? y2023;

  bool? y2024;

  bool y2025 = true;

  /// y2026
  bool? y2026;

  double? totalTreesplanted;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in CarbonAbsorbedDTB widget.
  List<TotalTreesPerSpeciesRecord>? speciestotalDTB;
  // Stores action output result for [Firestore Query - Query a collection] action in CarbonAbsorbedDTB widget.
  List<DistributionPerCountyRecord>? pe4rcounty;
  // Stores action output result for [Custom Action - sumValidTreeDensities] action in CarbonAbsorbedDTB widget.
  double? totalCarbonseqDTB;
  // Model for dtbDashnav component.
  late DtbDashnavModel dtbDashnavModel;

  @override
  void initState(BuildContext context) {
    dtbDashnavModel = createModel(context, () => DtbDashnavModel());
  }

  @override
  void dispose() {
    dtbDashnavModel.dispose();
  }
}
