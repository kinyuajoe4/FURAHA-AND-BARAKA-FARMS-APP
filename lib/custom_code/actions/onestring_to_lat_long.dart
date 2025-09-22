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

Future<LatLng?> onestringToLatLong(String? latLongString) async {
  if (latLongString == null) {
    return Future.value(null);
  }

  List<String> latLongList = latLongString.split(',');
  if (latLongList.length != 2) {
    return Future.value(null);
  }

  double? lat = double.tryParse(latLongList[0].trim());
  double? long = double.tryParse(latLongList[1].trim());

  if (lat == null || long == null) {
    return Future.value(null);
  }

  return Future.value(LatLng(lat, long));
}
