import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/index.dart';
import 'replant_stock_widget.dart' show ReplantStockWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ReplantStockModel extends FlutterFlowModel<ReplantStockWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Custom Action - randomText] action in ReplantStock widget.
  String? randomtext;
  // State field(s) for AMMOUNT widget.
  FocusNode? ammountFocusNode;
  TextEditingController? ammountTextController;
  String? Function(BuildContext, String?)? ammountTextControllerValidator;
  String? _ammountTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Ammount in kgs is required';
    }

    return null;
  }

  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  SeedsRecord? referencedseeds;

  @override
  void initState(BuildContext context) {
    ammountTextControllerValidator = _ammountTextControllerValidator;
  }

  @override
  void dispose() {
    ammountFocusNode?.dispose();
    ammountTextController?.dispose();
  }
}
