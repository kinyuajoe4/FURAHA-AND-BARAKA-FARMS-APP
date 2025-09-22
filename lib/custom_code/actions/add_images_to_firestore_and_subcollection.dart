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

import 'package:cloud_firestore/cloud_firestore.dart';

Future<void> addImagesToFirestoreAndSubcollection(
  String docId,
  List<String> newImageUrls,
  String subDocId,
) async {
  final firestore = FirebaseFirestore.instance;

  final mainDocRef = firestore.collection('Fields').doc(docId);
  final subDocRef = mainDocRef.collection('TotalTreesInAField').doc(subDocId);

  // Run both updates together
  WriteBatch batch = firestore.batch();

  // Update main doc field: imagesOverTime
  batch.update(mainDocRef, {
    'imagesOverTime': FieldValue.arrayUnion(newImageUrls),
  });

  // Update subcollection doc field: imagesDuringVisitation
  batch.update(subDocRef, {
    'imagesDuringVisitation': FieldValue.arrayUnion(newImageUrls),
  });

  await batch.commit();
}
