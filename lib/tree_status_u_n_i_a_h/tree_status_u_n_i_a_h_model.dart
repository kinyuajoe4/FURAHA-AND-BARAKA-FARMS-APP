import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/empty_widget.dart';
import '/components/uniah_dashnav_widget.dart';
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
import '/index.dart';
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'tree_status_u_n_i_a_h_widget.dart' show TreeStatusUNIAHWidget;
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

class TreeStatusUNIAHModel extends FlutterFlowModel<TreeStatusUNIAHWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in treeStatusUNIAH widget.
  List<AllTreesDeliveredRecord>? mainQuery;
  // Stores action output result for [Custom Action - stringToLatLong] action in treeStatusUNIAH widget.
  List<LatLng>? coordinates;
  // Model for UniahDashnav component.
  late UniahDashnavModel uniahDashnavModel;
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
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<FieldsRecord>();

  @override
  void initState(BuildContext context) {
    uniahDashnavModel = createModel(context, () => UniahDashnavModel());
    dataTableShowLogs = false; // Disables noisy DataTable2 debug statements.
  }

  @override
  void dispose() {
    uniahDashnavModel.dispose();
    paginatedDataTableController.dispose();
  }
}
