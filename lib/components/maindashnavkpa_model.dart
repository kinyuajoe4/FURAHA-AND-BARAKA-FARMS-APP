import '/components/m_a_i_n_b_u_tmini_k_p_a_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'maindashnavkpa_widget.dart' show MaindashnavkpaWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MaindashnavkpaModel extends FlutterFlowModel<MaindashnavkpaWidget> {
  ///  Local state fields for this component.

  bool? dashboard;

  bool? allTrees;

  bool? treeStatus;

  bool? carbonFootprint;

  bool? showMini;

  ///  State fields for stateful widgets in this component.

  // Model for MAINBUTminiKPA component.
  late MAINBUTminiKPAModel mAINBUTminiKPAModel;

  @override
  void initState(BuildContext context) {
    mAINBUTminiKPAModel = createModel(context, () => MAINBUTminiKPAModel());
  }

  @override
  void dispose() {
    mAINBUTminiKPAModel.dispose();
  }
}
