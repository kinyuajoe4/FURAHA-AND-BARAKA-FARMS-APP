import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/uniah_dashnav_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_charts.dart';
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
import 'dart:math' as math;
import 'uniahdashboard_widget.dart' show UniahdashboardWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';

class UniahdashboardModel extends FlutterFlowModel<UniahdashboardWidget> {
  ///  Local state fields for this page.
  /// list of insitutions based on the county selected
  List<String> institutions = [];
  void addToInstitutions(String item) => institutions.add(item);
  void removeFromInstitutions(String item) => institutions.remove(item);
  void removeAtIndexFromInstitutions(int index) => institutions.removeAt(index);
  void insertAtIndexInInstitutions(int index, String item) =>
      institutions.insert(index, item);
  void updateInstitutionsAtIndex(int index, Function(String) updateFn) =>
      institutions[index] = updateFn(institutions[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in UNIAHDASHBOARD widget.
  List<FieldsRecord>? institutionsfilteredmain;
  // Model for UniahDashnav component.
  late UniahDashnavModel uniahDashnavModel;
  // State field(s) for allcounties widget.
  String? allcountiesValue;
  FormFieldController<String>? allcountiesValueController;
  // Stores action output result for [Firestore Query - Query a collection] action in allcounties widget.
  List<FieldsRecord>? institutionsfiltered;
  // Stores action output result for [Firestore Query - Query a collection] action in allcounties widget.
  int? count;
  // Stores action output result for [Firestore Query - Query a collection] action in allcounties widget.
  DistributionPerCountyRecord? percounty;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  List<TotalTreesPerSpeciesRecord>? treesperSpecies;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  List<DistributionPerCountyRecord>? institutionsperCounty;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  List<AllTreesDeliveredRecord>? healthyTrees;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  List<AllTreesDeliveredRecord>? uNhealthyTrees;

  @override
  void initState(BuildContext context) {
    uniahDashnavModel = createModel(context, () => UniahDashnavModel());
  }

  @override
  void dispose() {
    uniahDashnavModel.dispose();
  }
}
