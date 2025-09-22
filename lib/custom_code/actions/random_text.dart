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

import 'dart:math'; // Import for Random
import 'package:shared_preferences/shared_preferences.dart'; // Import for SharedPreferences

Future<String?> randomText() async {
  // Action to generate random text of length 10 characters, including numbers, uppercase, and lowercase.
  // Ensures once a string is generated, it cannot be repeated.

  const String characters =
      '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
  bool isUnique = false;
  String randomString = '';

  SharedPreferences prefs = await SharedPreferences.getInstance();
  List<String>? generatedStrings =
      prefs.getStringList('generatedStrings') ?? [];

  while (!isUnique) {
    randomString = List.generate(
        10, (index) => characters[Random().nextInt(characters.length)]).join();

    if (!generatedStrings.contains(randomString)) {
      isUnique = true;
      generatedStrings.add(randomString);
      await prefs.setStringList('generatedStrings', generatedStrings);
    }
  }

  return randomString;
}
