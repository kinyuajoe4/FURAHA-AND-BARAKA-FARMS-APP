import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'all_tree_batches_in_af_i_e_l_d_iand_m_bank_widget.dart'
    show AllTreeBatchesInAfIELDIandMBankWidget;
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AllTreeBatchesInAfIELDIandMBankModel
    extends FlutterFlowModel<AllTreeBatchesInAfIELDIandMBankWidget> {
  ///  Local state fields for this page.

  List<String> condition = [
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    ''
  ];
  void addToCondition(String item) => condition.add(item);
  void removeFromCondition(String item) => condition.remove(item);
  void removeAtIndexFromCondition(int index) => condition.removeAt(index);
  void insertAtIndexInCondition(int index, String item) =>
      condition.insert(index, item);
  void updateConditionAtIndex(int index, Function(String) updateFn) =>
      condition[index] = updateFn(condition[index]);

  List<int> replacedtrees = [
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0
  ];
  void addToReplacedtrees(int item) => replacedtrees.add(item);
  void removeFromReplacedtrees(int item) => replacedtrees.remove(item);
  void removeAtIndexFromReplacedtrees(int index) =>
      replacedtrees.removeAt(index);
  void insertAtIndexInReplacedtrees(int index, int item) =>
      replacedtrees.insert(index, item);
  void updateReplacedtreesAtIndex(int index, Function(int) updateFn) =>
      replacedtrees[index] = updateFn(replacedtrees[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in AllTreeBatchesInAfIELDIandMBank widget.
  List<TotalTreesInAFieldRecord>? listfortable;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
