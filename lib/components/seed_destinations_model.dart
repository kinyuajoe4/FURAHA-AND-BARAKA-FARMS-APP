import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_place_picker.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/place.dart';
import 'dart:io';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import 'seed_destinations_widget.dart' show SeedDestinationsWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SeedDestinationsModel extends FlutterFlowModel<SeedDestinationsWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for firstPlacepicker widget.
  FFPlace firstPlacepickerValue = FFPlace();
  // State field(s) for speciesfinal widget.
  String? speciesfinalValue;
  FormFieldController<String>? speciesfinalValueController;
  // State field(s) for quantity widget.
  FocusNode? quantityFocusNode;
  TextEditingController? quantityTextController;
  String? Function(BuildContext, String?)? quantityTextControllerValidator;
  String? _quantityTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'numberofSeedlings is required';
    }

    return null;
  }

  // State field(s) for driver widget.
  FocusNode? driverFocusNode;
  TextEditingController? driverTextController;
  String? Function(BuildContext, String?)? driverTextControllerValidator;
  String? _driverTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'DesignatedDriverForSeedling is required';
    }

    return null;
  }

  // State field(s) for receivedby widget.
  FocusNode? receivedbyFocusNode;
  TextEditingController? receivedbyTextController;
  String? Function(BuildContext, String?)? receivedbyTextControllerValidator;
  // State field(s) for contact widget.
  FocusNode? contactFocusNode;
  TextEditingController? contactTextController;
  String? Function(BuildContext, String?)? contactTextControllerValidator;
  // State field(s) for description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionTextController;
  String? Function(BuildContext, String?)? descriptionTextControllerValidator;
  // Stores action output result for [Custom Action - addTwoDoubleNumbers] action in Button widget.
  double? remainingsseedlings;

  @override
  void initState(BuildContext context) {
    quantityTextControllerValidator = _quantityTextControllerValidator;
    driverTextControllerValidator = _driverTextControllerValidator;
  }

  @override
  void dispose() {
    quantityFocusNode?.dispose();
    quantityTextController?.dispose();

    driverFocusNode?.dispose();
    driverTextController?.dispose();

    receivedbyFocusNode?.dispose();
    receivedbyTextController?.dispose();

    contactFocusNode?.dispose();
    contactTextController?.dispose();

    descriptionFocusNode?.dispose();
    descriptionTextController?.dispose();
  }
}
