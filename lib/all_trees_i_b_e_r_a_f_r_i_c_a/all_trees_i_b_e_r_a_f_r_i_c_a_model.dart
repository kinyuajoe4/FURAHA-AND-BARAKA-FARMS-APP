import '/backend/backend.dart';
import '/components/i_b_e_r_dashnav_widget.dart';
import '/components/tappedcopy_widget.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'all_trees_i_b_e_r_a_f_r_i_c_a_widget.dart'
    show AllTreesIBERAFRICAWidget;
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AllTreesIBERAFRICAModel
    extends FlutterFlowModel<AllTreesIBERAFRICAWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for IBERDashnav component.
  late IBERDashnavModel iBERDashnavModel1;
  // State field(s) for GoogleMap widget.
  LatLng? googleMapsCenter;
  final googleMapsController = Completer<GoogleMapController>();
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
