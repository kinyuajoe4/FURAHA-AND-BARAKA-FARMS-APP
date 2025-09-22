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

import 'dart:typed_data';
import 'dart:io';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:excel/excel.dart';
import 'package:path_provider/path_provider.dart';
import 'package:open_filex/open_filex.dart';
import 'dart:html' as html; // For web download

Future<void> generateHybridExcel(
  List<String> fieldNames,
  List<String> counties,
  List<String> speciesPlanted,
  List<int> numberOfSpecies,
  List<LatLng> coordinates, // ✅ Now LatLng instead of String
  List<String> mainPlanters,
  String? fileName,
) async {
  // Create a new Excel document
  var excel = Excel.createExcel();
  String sheetName = "Tree Planting Data";
  Sheet sheetObject = excel[sheetName];

  // Add headers
  List<String> headers = [
    "Field Name",
    "County",
    "Species Planted",
    "Number of Species",
    "Coordinates",
    "Main Planter",
  ];
  sheetObject.appendRow(headers.map((h) => TextCellValue(h)).toList());

  // Add data rows
  for (int i = 0; i < fieldNames.length; i++) {
    final coord = i < coordinates.length
        ? "${coordinates[i].latitude}, ${coordinates[i].longitude}"
        : "";

    sheetObject.appendRow([
      TextCellValue(i < fieldNames.length ? fieldNames[i] : ""),
      TextCellValue(i < counties.length ? counties[i] : ""),
      TextCellValue(i < speciesPlanted.length ? speciesPlanted[i] : ""),
      IntCellValue(i < numberOfSpecies.length ? numberOfSpecies[i] : 0),
      TextCellValue(coord),
      TextCellValue(i < mainPlanters.length ? mainPlanters[i] : ""),
    ]);
  }

  // Encode file
  List<int>? fileBytes = excel.encode();
  if (fileBytes == null) return;

  // Ensure .xlsx extension
  String safeFileName = (fileName ?? "Tree_Planting_Data").endsWith(".xlsx")
      ? (fileName ?? "Tree_Planting_Data")
      : "${fileName ?? "Tree_Planting_Data"}.xlsx";

  if (kIsWeb) {
    // ---- WEB FLOW ----
    final blob = html.Blob([Uint8List.fromList(fileBytes)]);
    final url = html.Url.createObjectUrlFromBlob(blob);
    final anchor = html.AnchorElement(href: url)
      ..download = safeFileName
      ..click();
    html.Url.revokeObjectUrl(url);
  } else {
    // ---- MOBILE / DESKTOP FLOW ----
    final directory = await getApplicationDocumentsDirectory();
    String outputFile = "${directory.path}/$safeFileName";

    File(outputFile)
      ..createSync(recursive: true)
      ..writeAsBytesSync(fileBytes);

    await OpenFilex.open(outputFile);
  }
}
