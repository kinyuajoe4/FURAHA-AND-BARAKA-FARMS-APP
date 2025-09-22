import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/empty_widget.dart';
import '/components/i_b_e_r_dashnav_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:math';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'tree_status_i_b_e_r_a_f_r_i_c_a_widget.dart'
    show TreeStatusIBERAFRICAWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TreeStatusIBERAFRICAModel
    extends FlutterFlowModel<TreeStatusIBERAFRICAWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in TreeStatusIBERAFRICA widget.
  List<AllTreesDeliveredRecord>? mainQuery;
  // Stores action output result for [Custom Action - stringToLatLong] action in TreeStatusIBERAFRICA widget.
  List<LatLng>? coordinates;
  // State field(s) for allCountieslist widget.
  String? allCountieslistValue;
  FormFieldController<String>? allCountieslistValueController;
  // Stores action output result for [Firestore Query - Query a collection] action in allCountieslist widget.
  DistributionPerCountyRecord? institutionsfiltered;
  // Stores action output result for [Firestore Query - Query a collection] action in allCountieslist widget.
  List<FieldsRecord>? totaltreespercounty;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Model for IBERDashnav component.
  late IBERDashnavModel iBERDashnavModel1;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<AllTreesDeliveredRecord>();
  // Model for IBERDashnav component.
  late IBERDashnavModel iBERDashnavModel2;

  @override
  void initState(BuildContext context) {
    iBERDashnavModel1 = createModel(context, () => IBERDashnavModel());
    dataTableShowLogs = false; // Disables noisy DataTable2 debug statements.
    iBERDashnavModel2 = createModel(context, () => IBERDashnavModel());
  }

  @override
  void dispose() {
    iBERDashnavModel1.dispose();
    paginatedDataTableController.dispose();
    iBERDashnavModel2.dispose();
  }
}
