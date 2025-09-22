import '/components/safety_mini_nav_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'safetynavkpa_widget.dart' show SafetynavkpaWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SafetynavkpaModel extends FlutterFlowModel<SafetynavkpaWidget> {
  ///  Local state fields for this component.

  bool? dashboard;

  bool? allTrees;

  bool? treeStatus;

  bool? carbonFootprint;

  bool? showMini;

  ///  State fields for stateful widgets in this component.

  // Model for safetyMiniNav component.
  late SafetyMiniNavModel safetyMiniNavModel;

  @override
  void initState(BuildContext context) {
    safetyMiniNavModel = createModel(context, () => SafetyMiniNavModel());
  }

  @override
  void dispose() {
    safetyMiniNavModel.dispose();
  }
}
