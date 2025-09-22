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

import 'dart:convert';
import 'dart:math';

/// Helper: Convert UTM -> Lat/Lon (WGS84)
Map<String, double> utmToLatLon(double easting, double northing, int zoneNumber,
    bool isSouthernHemisphere) {
  // WGS84 constants
  const double a = 6378137.0; // Equatorial radius
  const double f = 1 / 298.257223563; // Flattening
  const double k0 = 0.9996;

  double e = sqrt(f * (2 - f));
  double e1sq = e * e / (1 - e * e);

  double x = easting - 500000.0; // false easting
  double y = northing;

  if (isSouthernHemisphere) {
    y -= 10000000.0; // false northing
  }

  double m = y / k0;
  double mu =
      m / (a * (1 - e * e / 4 - 3 * pow(e, 4) / 64 - 5 * pow(e, 6) / 256));

  double phi1Rad = mu +
      (3 * e / 2 - 27 * pow(e, 3) / 32) * sin(2 * mu) +
      (21 * pow(e, 2) / 16 - 55 * pow(e, 4) / 32) * sin(4 * mu) +
      (151 * pow(e, 3) / 96) * sin(6 * mu);

  double n1 = a / sqrt(1 - pow(e * sin(phi1Rad), 2));
  double t1 = pow(tan(phi1Rad), 2).toDouble();
  double c1 = e1sq * pow(cos(phi1Rad), 2).toDouble();
  double r1 = a * (1 - e * e) / pow(1 - pow(e * sin(phi1Rad), 2), 1.5);
  double d = x / (n1 * k0);

  double lat = phi1Rad -
      (n1 * tan(phi1Rad) / r1) *
          (d * d / 2 -
              (5 + 3 * t1 + 10 * c1 - 4 * c1 * c1 - 9 * e1sq) * pow(d, 4) / 24 +
              (61 +
                      90 * t1 +
                      298 * c1 +
                      45 * pow(t1, 2) -
                      252 * e1sq -
                      3 * pow(c1, 2)) *
                  pow(d, 6) /
                  720);

  double lon = (d -
          (1 + 2 * t1 + c1) * pow(d, 3) / 6 +
          (5 - 2 * c1 + 28 * t1 - 3 * pow(c1, 2) + 8 * e1sq + 24 * pow(t1, 2)) *
              pow(d, 5) /
              120) /
      cos(phi1Rad);

  lon = (zoneNumber - 1) * 6 - 180 + 3 + lon * (180 / pi);
  lat = lat * (180 / pi);

  return {"lat": lat, "lon": lon};
}

/// Custom Action: Convert GeoJSON (EPSG:32737) -> polygonsJson for KmlPolygonMap
Future<String> convertGeoJsonToPolygonsJson(String geoJsonString) async {
  final data = jsonDecode(geoJsonString);
  List<Map<String, dynamic>> polygonsOutput = [];

  if (data["features"] != null) {
    for (var feature in data["features"]) {
      final name = feature["properties"]?["Name"] ?? "Unnamed";
      final geometry = feature["geometry"];
      final type = geometry["type"];

      if (type == "MultiPolygon") {
        for (var polygon in geometry["coordinates"]) {
          final outerRing = polygon[0]; // outer boundary

          List<List<double>> convertedCoords = [];
          for (var coord in outerRing) {
            final easting = (coord[0] as num).toDouble();
            final northing = (coord[1] as num).toDouble();

            // Convert (Zone 37, Southern Hemisphere)
            final converted = utmToLatLon(easting, northing, 37, true);
            convertedCoords.add([converted["lon"]!, converted["lat"]!]);
          }

          polygonsOutput.add({
            "name": name,
            "coordinates": convertedCoords,
          });
        }
      } else if (type == "Polygon") {
        final outerRing = geometry["coordinates"][0];

        List<List<double>> convertedCoords = [];
        for (var coord in outerRing) {
          final easting = (coord[0] as num).toDouble();
          final northing = (coord[1] as num).toDouble();

          final converted = utmToLatLon(easting, northing, 37, true);
          convertedCoords.add([converted["lon"]!, converted["lat"]!]);
        }

        polygonsOutput.add({
          "name": name,
          "coordinates": convertedCoords,
        });
      }
    }
  }

  return jsonEncode({"polygons": polygonsOutput});
}
