import '/components/requestaccount_deletion_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'account_deletion_widget.dart' show AccountDeletionWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AccountDeletionModel extends FlutterFlowModel<AccountDeletionWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for requestaccountDeletion component.
  late RequestaccountDeletionModel requestaccountDeletionModel;

  @override
  void initState(BuildContext context) {
    requestaccountDeletionModel =
        createModel(context, () => RequestaccountDeletionModel());
  }

  @override
  void dispose() {
    requestaccountDeletionModel.dispose();
  }
}
