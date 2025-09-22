import '/components/newmini_d_t_b_dash_nav_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'new_d_t_b_dashnav_widget.dart' show NewDTBDashnavWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class NewDTBDashnavModel extends FlutterFlowModel<NewDTBDashnavWidget> {
  ///  Local state fields for this component.

  bool? dashboard;

  bool? allTrees;

  bool? treeStatus;

  bool? carbonFootprint;

  bool? showMini;

  ///  State fields for stateful widgets in this component.

  // Model for newminiDTBDashNav component.
  late NewminiDTBDashNavModel newminiDTBDashNavModel;

  @override
  void initState(BuildContext context) {
    newminiDTBDashNavModel =
        createModel(context, () => NewminiDTBDashNavModel());
  }

  @override
  void dispose() {
    newminiDTBDashNavModel.dispose();
  }
}
