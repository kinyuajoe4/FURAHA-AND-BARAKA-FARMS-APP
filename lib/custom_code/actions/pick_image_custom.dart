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
import 'package:image_picker/image_picker.dart';
import '/flutter_flow/flutter_flow_util.dart'; // for FFUploadedFile

Future<FFUploadedFile?> pickImageCustom(BuildContext context) async {
  final ImagePicker picker = ImagePicker();

  // Show dialog to choose Camera or Gallery
  final source = await showDialog<ImageSource>(
    context: context,
    builder: (ctx) => AlertDialog(
      title: const Text('Select Image Source'),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(ctx, ImageSource.camera),
          child: const Text('Camera'),
        ),
        TextButton(
          onPressed: () => Navigator.pop(ctx, ImageSource.gallery),
          child: const Text('Gallery'),
        ),
      ],
    ),
  );

  if (source == null) return null;

  // Pick the image
  final XFile? pickedFile = await picker.pickImage(source: source);
  if (pickedFile == null) return null;

  // Convert to bytes
  final bytes = await pickedFile.readAsBytes();

  // Wrap into FFUploadedFile
  return FFUploadedFile(
    name: pickedFile.name,
    bytes: bytes,
  );
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
