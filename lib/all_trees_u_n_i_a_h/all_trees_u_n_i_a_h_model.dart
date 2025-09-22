import '/backend/backend.dart';
import '/components/tappedcopy_widget.dart';
import '/components/uniah_dashnav_widget.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'all_trees_u_n_i_a_h_widget.dart' show AllTreesUNIAHWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AllTreesUNIAHModel extends FlutterFlowModel<AllTreesUNIAHWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for UniahDashnav component.
  late UniahDashnavModel uniahDashnavModel;
  // State field(s) for GoogleMap widget.
  LatLng? googleMapsCenter;
  final googleMapsController = Completer<GoogleMapController>();

  @override
  void initState(BuildContext context) {
    uniahDashnavModel = createModel(context, () => UniahDashnavModel());
  }

  @override
  void dispose() {
    uniahDashnavModel.dispose();
  }
}
