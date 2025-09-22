import '/auth/base_auth_user_provider.dart';
import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
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
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import 'visitataion_page_widget.dart' show VisitataionPageWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class VisitataionPageModel extends FlutterFlowModel<VisitataionPageWidget> {
  ///  Local state fields for this page.

  List<FFUploadedFile> imagesCaptures = [];
  void addToImagesCaptures(FFUploadedFile item) => imagesCaptures.add(item);
  void removeFromImagesCaptures(FFUploadedFile item) =>
      imagesCaptures.remove(item);
  void removeAtIndexFromImagesCaptures(int index) =>
      imagesCaptures.removeAt(index);
  void insertAtIndexInImagesCaptures(int index, FFUploadedFile item) =>
      imagesCaptures.insert(index, item);
  void updateImagesCapturesAtIndex(
          int index, Function(FFUploadedFile) updateFn) =>
      imagesCaptures[index] = updateFn(imagesCaptures[index]);

  ///  State fields for stateful widgets in this page.

  bool isDataUploading_uploadDataH8s = false;
  FFUploadedFile uploadedLocalFile_uploadDataH8s =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Custom Action - takeScreenshotFile] action in IconButton widget.
  FFUploadedFile? watermarkedImage;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for firstPlacepicker widget.
  FFPlace firstPlacepickerValue = FFPlace();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
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
  bool isDataUploading_supabaseuploads = false;
  List<FFUploadedFile> uploadedLocalFiles_supabaseuploads = [];
  List<String> uploadedFileUrls_supabaseuploads = [];

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

    focalPersonFocusNode?.dispose();
    focalPersonTextController?.dispose();

    conditionFocusNode?.dispose();
    conditionTextController?.dispose();
  }
}
