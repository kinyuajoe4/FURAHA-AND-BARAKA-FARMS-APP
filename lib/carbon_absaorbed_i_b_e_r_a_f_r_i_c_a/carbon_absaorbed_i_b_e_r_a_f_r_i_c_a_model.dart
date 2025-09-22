import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/i_b_e_r_dashnav_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'carbon_absaorbed_i_b_e_r_a_f_r_i_c_a_widget.dart'
    show CarbonAbsaorbedIBERAFRICAWidget;
import 'dart:math' as math;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CarbonAbsaorbedIBERAFRICAModel
    extends FlutterFlowModel<CarbonAbsaorbedIBERAFRICAWidget> {
  ///  Local state fields for this page.

  double carbonAbsorbed = 8312.0;

  bool? y2023;

  bool? y2024;

  bool y2025 = true;

  /// y2026
  bool? y2026;

  double? totalTreesplanted;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in carbonAbsaorbedIBERAFRICA widget.
  List<TotalTreesPerSpeciesRecord>? speciestotalDTB;
  // Stores action output result for [Firestore Query - Query a collection] action in carbonAbsaorbedIBERAFRICA widget.
  List<DistributionPerCountyRecord>? pe4rcounty;
  // Stores action output result for [Custom Action - sumValidTreeDensities] action in carbonAbsaorbedIBERAFRICA widget.
  double? totalCarbonseqDTB;
  // Stores action output result for [Firestore Query - Query a collection] action in carbonAbsaorbedIBERAFRICA widget.
  List<AllTreesDeliveredRecord>? refff;
  // Model for IBERDashnav component.
  late IBERDashnavModel iBERDashnavModel1;
  // Model for IBERDashnav component.
  late IBERDashnavModel iBERDashnavModel2;

  @override
  void initState(BuildContext context) {
    iBERDashnavModel1 = createModel(context, () => IBERDashnavModel());
    iBERDashnavModel2 = createModel(context, () => IBERDashnavModel());
  }

  @override
  void dispose() {
    iBERDashnavModel1.dispose();
    iBERDashnavModel2.dispose();
  }
}
