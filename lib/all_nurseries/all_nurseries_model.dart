import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'all_nurseries_widget.dart' show AllNurseriesWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AllNurseriesModel extends FlutterFlowModel<AllNurseriesWidget> {
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

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
