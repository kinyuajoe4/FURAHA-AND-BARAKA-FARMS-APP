import '/auth/base_auth_user_provider.dart';
import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/supabase/supabase.dart';
import '/components/updatelocation_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'all_institutions_m_a_i_n_widget.dart' show AllInstitutionsMAINWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';

class AllInstitutionsMAINModel
    extends FlutterFlowModel<AllInstitutionsMAINWidget> {
  ///  Local state fields for this page.

  List<FieldsRecord> allFieldsPageState = [];
  void addToAllFieldsPageState(FieldsRecord item) =>
      allFieldsPageState.add(item);
  void removeFromAllFieldsPageState(FieldsRecord item) =>
      allFieldsPageState.remove(item);
  void removeAtIndexFromAllFieldsPageState(int index) =>
      allFieldsPageState.removeAt(index);
  void insertAtIndexInAllFieldsPageState(int index, FieldsRecord item) =>
      allFieldsPageState.insert(index, item);
  void updateAllFieldsPageStateAtIndex(
          int index, Function(FieldsRecord) updateFn) =>
      allFieldsPageState[index] = updateFn(allFieldsPageState[index]);

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<FieldsRecord> simpleSearchResults = [];
  bool isDataUploading_uploadDataAfwerty = false;
  FFUploadedFile uploadedLocalFile_uploadDataAfwerty =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadDataAfwerty = '';

  bool isDataUploading_uploadDataAfwertyi = false;
  FFUploadedFile uploadedLocalFile_uploadDataAfwertyi =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadDataAfwertyi = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
