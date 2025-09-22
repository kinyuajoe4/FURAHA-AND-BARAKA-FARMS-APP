import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'dart:math' as math;
import 'editcarbin_widget.dart' show EditcarbinWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditcarbinModel extends FlutterFlowModel<EditcarbinWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for totattrees widget.
  FocusNode? totattreesFocusNode;
  TextEditingController? totattreesTextController;
  String? Function(BuildContext, String?)? totattreesTextControllerValidator;
  // State field(s) for HEIGHT widget.
  FocusNode? heightFocusNode;
  TextEditingController? heightTextController;
  String? Function(BuildContext, String?)? heightTextControllerValidator;
  // State field(s) for diameter widget.
  FocusNode? diameterFocusNode;
  TextEditingController? diameterTextController;
  String? Function(BuildContext, String?)? diameterTextControllerValidator;
  // State field(s) for density widget.
  FocusNode? densityFocusNode;
  TextEditingController? densityTextController;
  String? Function(BuildContext, String?)? densityTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    totattreesFocusNode?.dispose();
    totattreesTextController?.dispose();

    heightFocusNode?.dispose();
    heightTextController?.dispose();

    diameterFocusNode?.dispose();
    diameterTextController?.dispose();

    densityFocusNode?.dispose();
    densityTextController?.dispose();
  }
}
