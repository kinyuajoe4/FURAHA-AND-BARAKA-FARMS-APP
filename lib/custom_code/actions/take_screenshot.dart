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
import 'dart:ui' as ui;
import 'dart:io';
import 'package:flutter/rendering.dart';
import 'package:path_provider/path_provider.dart';

final GlobalKey globalKey = GlobalKey();

Future<String?> takeScreenshot() async {
  try {
    RenderRepaintBoundary? boundary =
        globalKey.currentContext?.findRenderObject() as RenderRepaintBoundary?;
    if (boundary == null) {
      debugPrint("Error: RenderRepaintBoundary is null");
      return null;
    }

    ui.Image image = await boundary.toImage(pixelRatio: 3.0);
    ByteData? byteData = await image.toByteData(format: ui.ImageByteFormat.png);
    if (byteData == null) {
      debugPrint("Error: ByteData is null");
      return null;
    }

    Uint8List pngBytes = byteData.buffer.asUint8List();
    final directory = await getApplicationDocumentsDirectory();
    String imagePath = '${directory.path}/screenshot.png';

    File imageFile = File(imagePath);
    await imageFile.writeAsBytes(pngBytes);

    return imagePath;
  } catch (e, stackTrace) {
    debugPrint("Screenshot Error: $e\n$stackTrace");
    return null;
  }
}
