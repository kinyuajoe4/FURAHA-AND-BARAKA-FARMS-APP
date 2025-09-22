import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import 'testpage_widget.dart' show TestpageWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class TestpageModel extends FlutterFlowModel<TestpageWidget> {
  ///  Local state fields for this page.

  List<FFUploadedFile> uploadedImages = [];
  void addToUploadedImages(FFUploadedFile item) => uploadedImages.add(item);
  void removeFromUploadedImages(FFUploadedFile item) =>
      uploadedImages.remove(item);
  void removeAtIndexFromUploadedImages(int index) =>
      uploadedImages.removeAt(index);
  void insertAtIndexInUploadedImages(int index, FFUploadedFile item) =>
      uploadedImages.insert(index, item);
  void updateUploadedImagesAtIndex(
          int index, Function(FFUploadedFile) updateFn) =>
      uploadedImages[index] = updateFn(uploadedImages[index]);

  ///  State fields for stateful widgets in this page.

  bool isDataUploading_mediaUploadFromCam = false;
  FFUploadedFile uploadedLocalFile_mediaUploadFromCam =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Custom Action - takeScreenshotFile] action in Button widget.
  FFUploadedFile? watermarkedimage;
  bool isDataUploading_uploadtosupabase = false;
  List<FFUploadedFile> uploadedLocalFiles_uploadtosupabase = [];
  List<String> uploadedFileUrls_uploadtosupabase = [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
