import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:math';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/index.dart';
import 'add_trees_widget.dart' show AddTreesWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddTreesModel extends FlutterFlowModel<AddTreesWidget> {
  ///  State fields for stateful widgets in this page.

  DateTime? datePicked;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for speciesaddes widget.
  String? speciesaddesValue;
  FormFieldController<String>? speciesaddesValueController;
  // State field(s) for nooftrees widget.
  FocusNode? nooftreesFocusNode;
  TextEditingController? nooftreesTextController;
  String? Function(BuildContext, String?)? nooftreesTextControllerValidator;
  // State field(s) for receivedby widget.
  FocusNode? receivedbyFocusNode;
  TextEditingController? receivedbyTextController;
  String? Function(BuildContext, String?)? receivedbyTextControllerValidator;
  // State field(s) for receiversphone widget.
  FocusNode? receiversphoneFocusNode;
  TextEditingController? receiversphoneTextController;
  String? Function(BuildContext, String?)?
      receiversphoneTextControllerValidator;
  // State field(s) for extranotes widget.
  FocusNode? extranotesFocusNode;
  TextEditingController? extranotesTextController;
  String? Function(BuildContext, String?)? extranotesTextControllerValidator;
  bool isDataUploading_uploadData5ck = false;
  FFUploadedFile uploadedLocalFile_uploadData5ck =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadData5ck = '';

  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  TotalTreesInAFieldRecord? confirmQuery;
  // Stores action output result for [Custom Action - addTwoDoubleNumbers] action in Button widget.
  double? generalSum;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  TotalTreesPerSpeciesRecord? speciesref;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  DistributionPerCountyRecord? distpercounty;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nooftreesFocusNode?.dispose();
    nooftreesTextController?.dispose();

    receivedbyFocusNode?.dispose();
    receivedbyTextController?.dispose();

    receiversphoneFocusNode?.dispose();
    receiversphoneTextController?.dispose();

    extranotesFocusNode?.dispose();
    extranotesTextController?.dispose();
  }
}
