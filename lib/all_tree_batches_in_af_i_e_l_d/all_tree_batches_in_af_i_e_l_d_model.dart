import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/flutter_flow/request_manager.dart';

import '/index.dart';
import 'all_tree_batches_in_af_i_e_l_d_widget.dart'
    show AllTreeBatchesInAfIELDWidget;
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AllTreeBatchesInAfIELDModel
    extends FlutterFlowModel<AllTreeBatchesInAfIELDWidget> {
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

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Firestore Query - Query a collection] action in Row widget.
  TotalTreesInAFieldRecord? confirmQuery;
  // Stores action output result for [Firestore Query - Query a collection] action in Row widget.
  TotalTreesPerSpeciesRecord? speciesref;
  // Stores action output result for [Firestore Query - Query a collection] action in Row widget.
  DistributionPerCountyRecord? distpercounty;

  /// Query cache managers for this widget.

  final _speciesinaFieldManager =
      StreamRequestManager<List<TotalTreesInAFieldRecord>>();
  Stream<List<TotalTreesInAFieldRecord>> speciesinaField({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Stream<List<TotalTreesInAFieldRecord>> Function() requestFn,
  }) =>
      _speciesinaFieldManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearSpeciesinaFieldCache() => _speciesinaFieldManager.clear();
  void clearSpeciesinaFieldCacheKey(String? uniqueKey) =>
      _speciesinaFieldManager.clearRequest(uniqueKey);

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    /// Dispose query cache managers for this widget.

    clearSpeciesinaFieldCache();
  }
}
