import '/auth/base_auth_user_provider.dart';
import '/backend/backend.dart';
import '/components/authh_dash_widget.dart';
import '/components/maindashnavkpa_widget.dart';
import '/components/tappedcopy_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_video_player.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'k_p_a_main_dash_board_widget.dart' show KPAMainDashBoardWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pointer_interceptor/pointer_interceptor.dart';
import 'package:provider/provider.dart';

class KPAMainDashBoardModel extends FlutterFlowModel<KPAMainDashBoardWidget> {
  ///  Local state fields for this page.

  bool? mainNav1;

  bool? mainNav2;

  ///  State fields for stateful widgets in this page.

  // Model for MAINDASHNAVKPA component.
  late MaindashnavkpaModel maindashnavkpaModel1;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController1 =
      FlutterFlowDataTableController<FieldsRecord>();
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController2 =
      FlutterFlowDataTableController<FieldsRecord>();
  // State field(s) for GoogleMap widget.
  LatLng? googleMapsCenter;
  final googleMapsController = Completer<GoogleMapController>();
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController3 =
      FlutterFlowDataTableController<HybridCranesKPARecord>();
  // Model for MAINDASHNAVKPA component.
  late MaindashnavkpaModel maindashnavkpaModel2;

  @override
  void initState(BuildContext context) {
    maindashnavkpaModel1 = createModel(context, () => MaindashnavkpaModel());
    maindashnavkpaModel2 = createModel(context, () => MaindashnavkpaModel());
  }

  @override
  void dispose() {
    maindashnavkpaModel1.dispose();
    paginatedDataTableController1.dispose();
    paginatedDataTableController2.dispose();
    paginatedDataTableController3.dispose();
    maindashnavkpaModel2.dispose();
  }
}
