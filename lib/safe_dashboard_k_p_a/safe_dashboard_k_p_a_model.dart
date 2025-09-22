import '/backend/backend.dart';
import '/components/empty_widget.dart';
import '/components/safetynavkpa_widget.dart';
import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'safe_dashboard_k_p_a_widget.dart' show SafeDashboardKPAWidget;
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';

class SafeDashboardKPAModel extends FlutterFlowModel<SafeDashboardKPAWidget> {
  ///  Local state fields for this page.

  bool? mainNav1;

  bool? mainNav2;

  ///  State fields for stateful widgets in this page.

  // Model for SAFETYNAVKPA component.
  late SafetynavkpaModel safetynavkpaModel1;
  // Model for SAFETYNAVKPA component.
  late SafetynavkpaModel safetynavkpaModel2;

  @override
  void initState(BuildContext context) {
    safetynavkpaModel1 = createModel(context, () => SafetynavkpaModel());
    dataTableShowLogs = false; // Disables noisy DataTable2 debug statements.
    dataTableShowLogs = false; // Disables noisy DataTable2 debug statements.
    dataTableShowLogs = false; // Disables noisy DataTable2 debug statements.
    dataTableShowLogs = false; // Disables noisy DataTable2 debug statements.
    dataTableShowLogs = false; // Disables noisy DataTable2 debug statements.
    dataTableShowLogs = false; // Disables noisy DataTable2 debug statements.
    dataTableShowLogs = false; // Disables noisy DataTable2 debug statements.
    safetynavkpaModel2 = createModel(context, () => SafetynavkpaModel());
  }

  @override
  void dispose() {
    safetynavkpaModel1.dispose();
    safetynavkpaModel2.dispose();
  }
}
