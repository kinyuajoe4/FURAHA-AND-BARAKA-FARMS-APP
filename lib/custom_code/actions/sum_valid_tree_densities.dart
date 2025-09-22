// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

/// Automatic FlutterFlow imports

double sumValidTreeDensities(List<double> treeDensities) {
  double totalSum = 0.0;

  for (var density in treeDensities) {
    if (density != null && density > 0) {
      totalSum += density;
    }
  }

  return double.parse(totalSum.toStringAsFixed(1));
}
