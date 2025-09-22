import '/backend/backend.dart';
import '/components/iand_m_dashnav_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'carbon_absorbed_iand_m_bank_widget.dart'
    show CarbonAbsorbedIandMBankWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CarbonAbsorbedIandMBankModel
    extends FlutterFlowModel<CarbonAbsorbedIandMBankWidget> {
  ///  Local state fields for this page.

  double carbonAbsorbed = 8312.0;

  bool? y2023;

  bool? y2024;

  bool y2025 = true;

  /// y2026
  bool? y2026;

  ///  State fields for stateful widgets in this page.

  // Model for IandMDashnav component.
  late IandMDashnavModel iandMDashnavModel1;
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
