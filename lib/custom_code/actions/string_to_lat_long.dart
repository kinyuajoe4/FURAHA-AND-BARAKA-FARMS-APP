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

Future<List<LatLng>?> stringToLatLong(List<String>? latLongStrings) async {
  if (latLongStrings == null || latLongStrings.isEmpty) {
    return [];
  }

  List<LatLng> latLngList = [];

  for (String latLongString in latLongStrings) {
    List<String> coordinates = latLongString.split(
        ';'); // Assuming multiple lat-long pairs are separated by semicolons

    for (String coordinate in coordinates) {
      List<String> latLongPair = coordinate.split(',');

      if (latLongPair.length == 2) {
        double? lat = double.tryParse(latLongPair[0].trim());
        double? long = double.tryParse(latLongPair[1].trim());

        if (lat != null && long != null) {
          latLngList.add(LatLng(lat, long));
        }
      }
    }
  }

  return latLngList;
}
