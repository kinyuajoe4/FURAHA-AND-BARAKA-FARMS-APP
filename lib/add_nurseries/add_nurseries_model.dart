import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_place_picker.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:io';
import 'dart:math';
import 'dart:ui';
import '/index.dart';
import 'add_nurseries_widget.dart' show AddNurseriesWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class AddNurseriesModel extends FlutterFlowModel<AddNurseriesWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for nurseryname widget.
  FocusNode? nurserynameFocusNode;
  TextEditingController? nurserynameTextController;
  String? Function(BuildContext, String?)? nurserynameTextControllerValidator;
  String? _nurserynameTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Nursery  Name is required';
    }

    return null;
  }

  // State field(s) for PlacePicker widget.
  FFPlace placePickerValue = FFPlace();
  // State field(s) for landowner widget.
  FocusNode? landownerFocusNode1;
  TextEditingController? landownerTextController1;
  String? Function(BuildContext, String?)? landownerTextController1Validator;
  // State field(s) for landowner widget.
  FocusNode? landownerFocusNode2;
  TextEditingController? landownerTextController2;
  String? Function(BuildContext, String?)? landownerTextController2Validator;
  // State field(s) for extranotes widget.
  FocusNode? extranotesFocusNode;
  TextEditingController? extranotesTextController;
  String? Function(BuildContext, String?)? extranotesTextControllerValidator;
  bool isDataUploading_uploadDataAfa = false;
  FFUploadedFile uploadedLocalFile_uploadDataAfa =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadDataAfa = '';

  // Stores action output result for [Validate Form] action in Button widget.
  bool? randomref;

  @override
  void initState(BuildContext context) {
    nurserynameTextControllerValidator = _nurserynameTextControllerValidator;
  }

  @override
  void dispose() {
    nurserynameFocusNode?.dispose();
    nurserynameTextController?.dispose();

    landownerFocusNode1?.dispose();
    landownerTextController1?.dispose();

    landownerFocusNode2?.dispose();
    landownerTextController2?.dispose();

    extranotesFocusNode?.dispose();
    extranotesTextController?.dispose();
  }
}
