import '/backend/backend.dart';
import '/components/empty_field_image_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:math';
import 'dart:ui';
import 'edit_visit_history_widget.dart' show EditVisitHistoryWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class EditVisitHistoryModel extends FlutterFlowModel<EditVisitHistoryWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for noOFtreesdead widget.
  FocusNode? noOFtreesdeadFocusNode;
  TextEditingController? noOFtreesdeadTextController;
  String? Function(BuildContext, String?)? noOFtreesdeadTextControllerValidator;
  // State field(s) for Height widget.
  FormFieldController<List<String>>? heightValueController;
  String? get heightValue => heightValueController?.value?.firstOrNull;
  set heightValue(String? val) =>
      heightValueController?.value = val != null ? [val] : [];
  // State field(s) for OverallTreeHealth widget.
  FormFieldController<List<String>>? overallTreeHealthValueController;
  String? get overallTreeHealthValue =>
      overallTreeHealthValueController?.value?.firstOrNull;
  set overallTreeHealthValue(String? val) =>
      overallTreeHealthValueController?.value = val != null ? [val] : [];
  // State field(s) for Mulching widget.
  FormFieldController<List<String>>? mulchingValueController;
  String? get mulchingValue => mulchingValueController?.value?.firstOrNull;
  set mulchingValue(String? val) =>
      mulchingValueController?.value = val != null ? [val] : [];
  // State field(s) for HumanInterference widget.
  FormFieldController<List<String>>? humanInterferenceValueController;
  String? get humanInterferenceValue =>
      humanInterferenceValueController?.value?.firstOrNull;
  set humanInterferenceValue(String? val) =>
      humanInterferenceValueController?.value = val != null ? [val] : [];
  // State field(s) for NotedRisks widget.
  FormFieldController<List<String>>? notedRisksValueController;
  String? get notedRisksValue => notedRisksValueController?.value?.firstOrNull;
  set notedRisksValue(String? val) =>
      notedRisksValueController?.value = val != null ? [val] : [];
  // State field(s) for FocalPerson widget.
  FocusNode? focalPersonFocusNode;
  TextEditingController? focalPersonTextController;
  String? Function(BuildContext, String?)? focalPersonTextControllerValidator;
  // State field(s) for condition widget.
  FocusNode? conditionFocusNode;
  TextEditingController? conditionTextController;
  String? Function(BuildContext, String?)? conditionTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController1?.dispose();

    noOFtreesdeadFocusNode?.dispose();
    noOFtreesdeadTextController?.dispose();

    focalPersonFocusNode?.dispose();
    focalPersonTextController?.dispose();

    conditionFocusNode?.dispose();
    conditionTextController?.dispose();
  }
}
