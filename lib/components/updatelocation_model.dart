import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_place_picker.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/place.dart';
import 'dart:io';
import 'dart:ui';
import 'updatelocation_widget.dart' show UpdatelocationWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class UpdatelocationModel extends FlutterFlowModel<UpdatelocationWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for GOOGLELINK widget.
  FocusNode? googlelinkFocusNode;
  TextEditingController? googlelinkTextController;
  String? Function(BuildContext, String?)? googlelinkTextControllerValidator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for noOfMonitoredTrees widget.
  FocusNode? noOfMonitoredTreesFocusNode;
  TextEditingController? noOfMonitoredTreesTextController;
  String? Function(BuildContext, String?)?
      noOfMonitoredTreesTextControllerValidator;
  // State field(s) for ContactPerson widget.
  FocusNode? contactPersonFocusNode;
  TextEditingController? contactPersonTextController;
  String? Function(BuildContext, String?)? contactPersonTextControllerValidator;
  // State field(s) for PlacePicker widget.
  FFPlace placePickerValue = FFPlace();
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  AllTreesDeliveredRecord? alltreesdelolivered;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    googlelinkFocusNode?.dispose();
    googlelinkTextController?.dispose();

    textFieldFocusNode?.dispose();
    textController2?.dispose();

    noOfMonitoredTreesFocusNode?.dispose();
    noOfMonitoredTreesTextController?.dispose();

    contactPersonFocusNode?.dispose();
    contactPersonTextController?.dispose();
  }
}
