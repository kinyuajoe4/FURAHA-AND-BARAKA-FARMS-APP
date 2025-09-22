import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:ui';
import 'visitataion_page_iand_m_widget.dart' show VisitataionPageIandMWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class VisitataionPageIandMModel
    extends FlutterFlowModel<VisitataionPageIandMWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading_uplo = false;
  FFUploadedFile uploadedLocalFile_uplo =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uplo = '';

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  DateTime? datePicked1;
  DateTime? datePicked2;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for noOFtreesdead widget.
  FocusNode? noOFtreesdeadFocusNode;
  TextEditingController? noOFtreesdeadTextController;
  String? Function(BuildContext, String?)? noOFtreesdeadTextControllerValidator;
  // State field(s) for noOFtreesReplaced widget.
  FocusNode? noOFtreesReplacedFocusNode;
  TextEditingController? noOFtreesReplacedTextController;
  String? Function(BuildContext, String?)?
      noOFtreesReplacedTextControllerValidator;
  DateTime? datePicked3;
  // State field(s) for conditionoftree widget.
  FocusNode? conditionoftreeFocusNode;
  TextEditingController? conditionoftreeTextController;
  String? Function(BuildContext, String?)?
      conditionoftreeTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    noOFtreesdeadFocusNode?.dispose();
    noOFtreesdeadTextController?.dispose();

    noOFtreesReplacedFocusNode?.dispose();
    noOFtreesReplacedTextController?.dispose();

    conditionoftreeFocusNode?.dispose();
    conditionoftreeTextController?.dispose();
  }
}
