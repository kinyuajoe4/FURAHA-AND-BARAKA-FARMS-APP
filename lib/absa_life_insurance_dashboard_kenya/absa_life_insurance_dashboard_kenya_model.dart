import '/auth/base_auth_user_provider.dart';
import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/absa_dasnav_widget.dart';
import '/components/authh_dash_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_video_player.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:math';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'absa_life_insurance_dashboard_kenya_widget.dart'
    show AbsaLifeInsuranceDashboardKenyaWidget;
import 'dart:math' as math;
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

class AbsaLifeInsuranceDashboardKenyaModel
    extends FlutterFlowModel<AbsaLifeInsuranceDashboardKenyaWidget> {
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

  // Stores action output result for [Firestore Query - Query a collection] action in AbsaLifeInsuranceDashboardKenya widget.
  List<FieldsRecord>? institutionsfilteredmain;
  // Model for absaDasnav component.
  late AbsaDasnavModel absaDasnavModel1;
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
