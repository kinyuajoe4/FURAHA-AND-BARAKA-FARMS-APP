import '/backend/backend.dart';
import '/components/empty_widget.dart';
import '/components/new_d_t_b_dashnav_widget.dart';
import '/components/tappedcopy_widget.dart';
import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/random_data_util.dart' as random_data;
import 'e_s_g_d_t_b_dashboard_widget.dart' show ESGDTBDashboardWidget;
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:pointer_interceptor/pointer_interceptor.dart';
import 'package:provider/provider.dart';

class ESGDTBDashboardModel extends FlutterFlowModel<ESGDTBDashboardWidget> {
  ///  Local state fields for this page.

  bool? mainNav1;

  bool? mainNav2;

  ///  State fields for stateful widgets in this page.

  // Model for newDTBDashnav component.
  late NewDTBDashnavModel newDTBDashnavModel1;
  // State field(s) for GoogleMap widget.
  LatLng? googleMapsCenter1;
  final googleMapsController1 = Completer<GoogleMapController>();
  // State field(s) for GoogleMap widget.
  LatLng? googleMapsCenter2;
  final googleMapsController2 = Completer<GoogleMapController>();
  // Model for newDTBDashnav component.
  late NewDTBDashnavModel newDTBDashnavModel2;

  @override
  void initState(BuildContext context) {
    newDTBDashnavModel1 = createModel(context, () => NewDTBDashnavModel());
    dataTableShowLogs = false; // Disables noisy DataTable2 debug statements.
    dataTableShowLogs = false; // Disables noisy DataTable2 debug statements.
    dataTableShowLogs = false; // Disables noisy DataTable2 debug statements.
    dataTableShowLogs = false; // Disables noisy DataTable2 debug statements.
    dataTableShowLogs = false; // Disables noisy DataTable2 debug statements.
    dataTableShowLogs = false; // Disables noisy DataTable2 debug statements.
    dataTableShowLogs = false; // Disables noisy DataTable2 debug statements.
    dataTableShowLogs = false; // Disables noisy DataTable2 debug statements.
    newDTBDashnavModel2 = createModel(context, () => NewDTBDashnavModel());
  }

  @override
  void dispose() {
    newDTBDashnavModel1.dispose();
    newDTBDashnavModel2.dispose();
  }
}
