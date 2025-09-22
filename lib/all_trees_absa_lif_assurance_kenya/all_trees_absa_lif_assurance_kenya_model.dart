import '/backend/backend.dart';
import '/components/absa_dasnav_widget.dart';
import '/components/tappedcopy_widget.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'all_trees_absa_lif_assurance_kenya_widget.dart'
    show AllTreesAbsaLifAssuranceKenyaWidget;
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AllTreesAbsaLifAssuranceKenyaModel
    extends FlutterFlowModel<AllTreesAbsaLifAssuranceKenyaWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for absaDasnav component.
  late AbsaDasnavModel absaDasnavModel1;
  // State field(s) for GoogleMap widget.
  LatLng? googleMapsCenter;
  final googleMapsController = Completer<GoogleMapController>();
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
