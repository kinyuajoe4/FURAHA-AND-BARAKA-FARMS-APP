import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:ui';
import 'uploadreceipt_widget.dart' show UploadreceiptWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class UploadreceiptModel extends FlutterFlowModel<UploadreceiptWidget> {
  ///  State fields for stateful widgets in this component.

  bool isDataUploading_uploadData0q = false;
  FFUploadedFile uploadedLocalFile_uploadData0q =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadData0q = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
