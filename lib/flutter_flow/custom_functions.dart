import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/supabase/supabase.dart';
import '/auth/firebase_auth/auth_util.dart';

String? greetAccordingToTime(DateTime? currentTime) {
  if (currentTime == null) {
    return null;
  }
  int hour = currentTime.hour;
  if (hour < 12) {
    return 'Good morning';
  } else if (hour < 18) {
    return 'Good afternoon';
  } else {
    return 'Good evening';
  }
}

int? sumAllTrees(List<int>? treesList) {
  if (treesList == null || treesList.isEmpty) {
    return 0;
  }

  // Filter out any nulls (missing Trees fields)
  final validTrees = treesList.where((treeCount) => treeCount != null);

  // Sum all valid (non-null) tree values
  final total = validTrees.fold(0, (sum, treeCount) => sum + treeCount!);

  return total;
}

double? sumAllLists(List<double>? treesList) {
  if (treesList == null || treesList.isEmpty) {
    return 0.0;
  }

  // Sum all tree values
  final total = treesList.fold(0.0, (sum, treeCount) => sum + treeCount);

  // Round to 3 decimal places
  final roundedTotal = double.parse(total.toStringAsFixed(3));

  return roundedTotal;
}

List<String> summarizeGroupedTotals1(
  List<String> baseKeys,
  List<String> referenceList,
  List<double> totalsList,
) {
  if (baseKeys.isEmpty || referenceList.isEmpty || totalsList.isEmpty) {
    return [];
  }

  // Map to store the final result
  final Map<String, double> resultMap = {};

  for (final key in baseKeys) {
    double sum = 0.0;
    bool keyExists = false;

    for (int i = 0; i < referenceList.length; i++) {
      if (referenceList[i].toLowerCase().trim() == key.toLowerCase().trim()) {
        sum += totalsList[i];
        keyExists = true;
      }
    }

    if (keyExists) {
      resultMap[key] = double.parse(sum.toStringAsFixed(2));
    }
  }

  // Format output list
  final resultList = resultMap.entries.map((e) => '${e.key}').toList();

  return resultList;
}

List<double> summarizeGroupedTotalsValuesOnly(
  List<String> baseKeys,
  List<String> referenceList,
  List<double> totalsList,
) {
  if (baseKeys.isEmpty || referenceList.isEmpty || totalsList.isEmpty) {
    return [];
  }

  final List<double> resultList = [];

  for (final key in baseKeys) {
    double sum = 0.0;
    bool keyExists = false;

    for (int i = 0; i < referenceList.length; i++) {
      if (referenceList[i].toLowerCase().trim() == key.toLowerCase().trim()) {
        sum += totalsList[i];
        keyExists = true;
      }
    }

    if (keyExists) {
      resultList.add(double.parse(sum.toStringAsFixed(2)));
    }
  }

  return resultList;
}

List<double> countOccurrencesForBaseKeys(
  List<String> baseKeys,
  List<String> referenceList,
) {
  if (baseKeys.isEmpty || referenceList.isEmpty) {
    return [];
  }

  final Map<String, int> counts = {};

  for (final key in baseKeys) {
    int count = referenceList
        .where((ref) => ref.toLowerCase().trim() == key.toLowerCase().trim())
        .length;

    if (count > 0) {
      counts[key] = count;
    }
  }

  // Sort by counts in descending order
  final sortedEntries = counts.entries.toList()
    ..sort((a, b) => b.value.compareTo(a.value));

  // Return only the counts as doubles
  final resultList =
      sortedEntries.map((entry) => entry.value.toDouble()).toList();

  return resultList;
}

List<String> sortedOccurrenceNames(
  List<String> baseKeys,
  List<String> referenceList,
) {
  if (baseKeys.isEmpty || referenceList.isEmpty) {
    return [];
  }

  final Map<String, int> counts = {};

  for (final key in baseKeys) {
    int count = referenceList
        .where((ref) => ref.toLowerCase().trim() == key.toLowerCase().trim())
        .length;

    if (count > 0) {
      counts[key] = count;
    }
  }

  // Sort by counts in descending order
  final sortedEntries = counts.entries.toList()
    ..sort((a, b) => b.value.compareTo(a.value));

  // Return only the baseKey names in sorted order
  final resultList = sortedEntries.map((entry) => entry.key).toList();

  return resultList;
}
