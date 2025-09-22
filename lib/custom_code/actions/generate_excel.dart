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
import 'package:excel/excel.dart';
import 'package:path_provider/path_provider.dart';
import 'package:open_filex/open_filex.dart';

Future<void> generateExcel(
  List<String> fieldNames,
  List<String> counties,
  List<String> speciesPlanted,
  List<int> numberOfSpecies,
  List<String> coordinates,
  List<String> mainPlanters,
  String? fileName,
) async {
  // Create a new Excel document
  var excel = Excel.createExcel();
  String sheetName = "Tree Planting Data";
  Sheet sheetObject = excel[sheetName];

  // Add headers
  List<CellValue?> headers = [
    TextCellValue("Field Name"),
    TextCellValue("County"),
    TextCellValue("Species Planted"),
    TextCellValue("Number of Species"),
    TextCellValue("Coordinates"),
    TextCellValue("Main Planter")
  ];
  sheetObject.appendRow(headers);

  // Add data rows
  for (int i = 0; i < fieldNames.length; i++) {
    sheetObject.appendRow([
      TextCellValue(i < fieldNames.length ? fieldNames[i] : ""),
      TextCellValue(i < counties.length ? counties[i] : ""),
      TextCellValue(i < speciesPlanted.length ? speciesPlanted[i] : ""),
      IntCellValue(i < numberOfSpecies.length ? numberOfSpecies[i] : 0),
      TextCellValue(i < coordinates.length ? coordinates[i] : ""),
      TextCellValue(i < mainPlanters.length ? mainPlanters[i] : ""),
    ]);
  }

  // Save the file
  List<int>? fileBytes = excel.encode();
  if (fileBytes == null) return;

  // Ensure fileName is safe and has .xlsx extension
  String safeFileName = (fileName == null || fileName.isEmpty)
      ? "Tree_Planting_Data.xlsx"
      : (fileName.endsWith(".xlsx") ? fileName : "$fileName.xlsx");

  // Get storage directory
  final directory = await getApplicationDocumentsDirectory();
  String outputFile = "${directory.path}/$safeFileName";

  // Write file
  File(outputFile)
    ..createSync(recursive: true)
    ..writeAsBytesSync(fileBytes);

  // Open the file
  await OpenFilex.open(outputFile);
}
