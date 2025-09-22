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
import 'package:screenshot/screenshot.dart';

Future<FFUploadedFile?> takeScreenshotFile(
  FFUploadedFile imageParam,
  String fieldName,
  LatLng coordinates,
  String capturedBy,
  String mainPlanter,
  String date,
) async {
  try {
    // Extract bytes from FFUploadedFile
    final Uint8List? imageBytes = imageParam.bytes;
    if (imageBytes == null) {
      throw Exception("No image bytes found");
    }

    // Build watermark texts
    final watermarkTexts = [
      "Field: $fieldName",
      "Coordinates: ${coordinates.latitude}, ${coordinates.longitude}",
      "Captured By: $capturedBy",
      "Main Planter: $mainPlanter",
      "Date: $date",
    ];

    // Screenshot controller
    final screenshotController = ScreenshotController();

    // Widget with image + watermark overlay
    final widgetToCapture = Screenshot(
      controller: screenshotController,
      child: Container(
        width: 400,
        height: 500,
        color: Colors.black12,
        child: Stack(
          fit: StackFit.expand,
          children: [
            // Background Image
            Image.memory(
              imageBytes,
              fit: BoxFit.cover,
            ),
            // Overlay Watermarks
            Positioned(
              bottom: 16,
              left: 16,
              right: 16,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: watermarkTexts.map((text) {
                  return Container(
                    margin: const EdgeInsets.only(bottom: 6),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 6,
                    ),
                    color: Colors.black54,
                    child: Text(
                      text,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );

    // Capture final image
    final Uint8List finalBytes = await screenshotController.captureFromWidget(
      widgetToCapture,
      pixelRatio: 2.5,
    );

    return FFUploadedFile(
      name: 'watermarked_image_${DateTime.now().millisecondsSinceEpoch}.png',
      bytes: finalBytes,
    );
  } catch (e) {
    print('Error taking screenshot: $e');
    FFAppState().update(() {
      FFAppState().errorMessage = e.toString();
    });
    return null;
  }
}
