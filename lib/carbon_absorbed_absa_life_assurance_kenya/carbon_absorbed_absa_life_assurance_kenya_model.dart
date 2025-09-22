import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/absa_dasnav_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'carbon_absorbed_absa_life_assurance_kenya_widget.dart'
    show CarbonAbsorbedAbsaLifeAssuranceKenyaWidget;
import 'dart:math' as math;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CarbonAbsorbedAbsaLifeAssuranceKenyaModel
    extends FlutterFlowModel<CarbonAbsorbedAbsaLifeAssuranceKenyaWidget> {
  ///  Local state fields for this page.

  double carbonAbsorbed = 8312.0;

  bool? y2023;

  bool? y2024;

  bool y2025 = true;

  /// y2026
  bool? y2026;

  double? totalTreesplanted;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in CarbonAbsorbedAbsaLifeAssuranceKenya widget.
  List<TotalTreesPerSpeciesRecord>? speciestotalDTB;
  // Stores action output result for [Firestore Query - Query a collection] action in CarbonAbsorbedAbsaLifeAssuranceKenya widget.
  List<DistributionPerCountyRecord>? pe4rcounty;
  // Stores action output result for [Custom Action - sumValidTreeDensities] action in CarbonAbsorbedAbsaLifeAssuranceKenya widget.
  double? totalCarbonseqDTB;
  // Stores action output result for [Firestore Query - Query a collection] action in CarbonAbsorbedAbsaLifeAssuranceKenya widget.
  List<AllTreesDeliveredRecord>? refff;
  // Model for absaDasnav component.
  late AbsaDasnavModel absaDasnavModel1;
  // Model for absaDasnav component.
  late AbsaDasnavModel absaDasnavModel2;

  @override
  void initState(BuildContext context) {
    absaDasnavModel1 = createModel(context, () => AbsaDasnavModel());
    absaDasnavModel2 = createModel(context, () => AbsaDasnavModel());
  }

  @override
  void dispose() {
    absaDasnavModel1.dispose();
    absaDasnavModel2.dispose();
  }
}
