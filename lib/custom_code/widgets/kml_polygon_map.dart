// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:convert';
import 'dart:math' as math;
import 'package:google_maps_flutter/google_maps_flutter.dart' as gmaps;

/// KmlPolygonMap — parses polygonsJson string (GeoJSON or custom formats)
/// and renders polygons on Google Maps. If parsing yields nothing,
/// it falls back to two hardcoded sample polygons.
class KmlPolygonMap extends StatefulWidget {
  const KmlPolygonMap({
    Key? key,
    required this.polygonsJson,
    this.width,
    this.height,
    this.initialZoom = 12.0,
    this.strokeWidth = 2,
    this.strokeColor = const Color(0xFF1E88E5),
    this.fillColor = const Color(0x441E88E5),
    this.boundsPadding = 64.0,
  }) : super(key: key);

  final String polygonsJson;
  final double? width;
  final double? height;
  final double initialZoom;
  final int strokeWidth;
  final Color strokeColor;
  final Color fillColor;
  final double boundsPadding;

  @override
  State<KmlPolygonMap> createState() => _KmlPolygonMapState();
}

class _KmlPolygonMapState extends State<KmlPolygonMap> {
  gmaps.GoogleMapController? _controller;
  Set<gmaps.Polygon> _polygons = {};

  @override
  void initState() {
    super.initState();
    _loadPolygons();
  }

  @override
  void didUpdateWidget(covariant KmlPolygonMap oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.polygonsJson != widget.polygonsJson) {
      _loadPolygons();
    }
  }

  void _loadPolygons() {
    final parsed = _buildPolygonsFromJson(widget.polygonsJson);
    if (parsed.isNotEmpty) {
      setState(() => _polygons = parsed);
      // Fit after frame so the map has layout
      WidgetsBinding.instance
          .addPostFrameCallback((_) => _maybeFitToPolygons());
    } else {
      // fallback sample polygons (guaranteed to render)
      setState(() => _polygons = _samplePolygons());
      WidgetsBinding.instance
          .addPostFrameCallback((_) => _maybeFitToPolygons());
    }
  }

  /// Parse polygons from several JSON shapes
  Set<gmaps.Polygon> _buildPolygonsFromJson(String jsonStr) {
    final out = <gmaps.Polygon>{};
    if (jsonStr.trim().isEmpty) return out;

    dynamic data;
    try {
      data = jsonDecode(jsonStr);
    } catch (_) {
      return out; // invalid JSON
    }

    List<List<List<dynamic>>> foundPolygons = [];

    bool isCoordPair(dynamic v) =>
        v is List && v.length >= 2 && v[0] is num && v[1] is num;

    // Case A: { "polygons": [ { "coordinates": [ [lng,lat], ... ] } ] }
    if (data is Map && data['polygons'] is List) {
      for (final p in data['polygons']) {
        if (p is Map) {
          final coords = p['coordinates'] ?? p['outer'] ?? p['coords'];
          if (coords is List && coords.isNotEmpty) {
            if (isCoordPair(coords[0])) {
              foundPolygons.add(List<List<dynamic>>.from(
                  coords.map((x) => List<dynamic>.from(x))));
            } else if (coords[0] is List && isCoordPair(coords[0][0])) {
              for (final ring in coords) {
                if (ring is List && isCoordPair(ring[0])) {
                  foundPolygons.add(List<List<dynamic>>.from(
                      ring.map((x) => List<dynamic>.from(x))));
                }
              }
            }
          }
        } else if (p is List && p.isNotEmpty && isCoordPair(p[0])) {
          foundPolygons.add(
              List<List<dynamic>>.from(p.map((x) => List<dynamic>.from(x))));
        }
      }
    }

    // Case B: top-level is a list of polygons
    if (foundPolygons.isEmpty && data is List) {
      for (final item in data) {
        if (item is List && item.isNotEmpty && isCoordPair(item[0])) {
          foundPolygons.add(
              List<List<dynamic>>.from(item.map((x) => List<dynamic>.from(x))));
        } else if (item is List &&
            item.isNotEmpty &&
            item[0] is List &&
            item[0].isNotEmpty &&
            isCoordPair(item[0][0])) {
          for (final poly in item) {
            if (poly is List && isCoordPair(poly[0])) {
              foundPolygons.add(List<List<dynamic>>.from(
                  poly.map((x) => List<dynamic>.from(x))));
            }
          }
        }
      }
    }

    // Case C: GeoJSON FeatureCollection
    if (foundPolygons.isEmpty && data is Map && data['features'] is List) {
      for (final feat in data['features']) {
        try {
          final geom = feat['geometry'];
          final t = geom['type'];
          final coords = geom['coordinates'];
          if (t == 'Polygon' && coords is List && coords.isNotEmpty) {
            // coords: [ [ [lng,lat], ... ] ]
            foundPolygons.add(List<List<dynamic>>.from(
                (coords[0] as List).map((x) => List<dynamic>.from(x))));
          } else if (t == 'MultiPolygon' && coords is List) {
            // coords: [ [ [ [lng,lat], ... ] ], ... ]
            for (final poly in coords) {
              if (poly is List && poly.isNotEmpty && poly[0] is List) {
                foundPolygons.add(List<List<dynamic>>.from(
                    (poly[0] as List).map((x) => List<dynamic>.from(x))));
              }
            }
          }
        } catch (_) {
          // ignore malformed feature
        }
      }
    }

    // Convert to gmaps.Polygon set
    var idx = 0;
    for (final poly in foundPolygons) {
      final points = <gmaps.LatLng>[];
      for (final pair in poly) {
        final ll = _coordPairToLatLng(pair);
        if (ll != null) points.add(ll);
      }
      if (points.length >= 3) {
        out.add(
          gmaps.Polygon(
            polygonId: gmaps.PolygonId('poly_$idx'),
            points: points,
            strokeWidth: widget.strokeWidth,
            strokeColor: widget.strokeColor,
            fillColor: widget.fillColor,
          ),
        );
        idx++;
      }
    }

    return out;
  }

  /// Convert a coordinate pair into gmaps.LatLng(lat, lng)
  /// Accepts Map {lat,lng} or List [lng,lat] or [lat,lng] with sanity checks.
  gmaps.LatLng? _coordPairToLatLng(dynamic pair) {
    try {
      if (pair is Map) {
        final dynLat = pair['lat'] ?? pair['latitude'];
        final dynLng =
            pair['lng'] ?? pair['longitude'] ?? pair['lon'] ?? pair['long'];
        if (dynLat is num && dynLng is num) {
          return gmaps.LatLng(dynLat.toDouble(), dynLng.toDouble());
        }
      } else if (pair is List &&
          pair.length >= 2 &&
          pair[0] is num &&
          pair[1] is num) {
        final num0 = (pair[0] as num).toDouble();
        final num1 = (pair[1] as num).toDouble();

        // GeoJSON standard = [lng, lat]
        final maybeLat = num1;
        final maybeLng = num0;
        final inLatRange = maybeLat >= -90 && maybeLat <= 90;
        final inLngRange = maybeLng >= -180 && maybeLng <= 180;

        if (inLatRange && inLngRange) {
          return gmaps.LatLng(maybeLat, maybeLng); // interpreted as [lng,lat]
        }

        // fallback: maybe the user supplied [lat, lng]
        final altLat = num0;
        final altLng = num1;
        if (altLat >= -90 && altLat <= 90 && altLng >= -180 && altLng <= 180) {
          return gmaps.LatLng(altLat, altLng);
        }

        // Not a valid lon/lat (likely projected coords) -> skip
        return null;
      }
    } catch (_) {
      // ignore parse issues
    }
    return null;
  }

  /// Two clear fallback polygons
  Set<gmaps.Polygon> _samplePolygons() {
    return {
      gmaps.Polygon(
        polygonId: const gmaps.PolygonId('sample_nairobi'),
        points: const [
          gmaps.LatLng(-1.26, 36.80),
          gmaps.LatLng(-1.26, 36.90),
          gmaps.LatLng(-1.35, 36.90),
          gmaps.LatLng(-1.35, 36.80),
        ],
        strokeWidth: widget.strokeWidth,
        strokeColor: widget.strokeColor,
        fillColor: widget.fillColor,
      ),
      gmaps.Polygon(
        polygonId: const gmaps.PolygonId('sample_mombasa'),
        points: const [
          gmaps.LatLng(-4.00, 39.60),
          gmaps.LatLng(-4.00, 39.80),
          gmaps.LatLng(-4.20, 39.80),
          gmaps.LatLng(-4.20, 39.60),
        ],
        strokeWidth: widget.strokeWidth,
        strokeColor: const Color(0xFFE53935),
        fillColor: const Color(0x44E53935),
      ),
    };
  }

  gmaps.LatLngBounds? _boundsFromPolygons(Set<gmaps.Polygon> polys) {
    double? minLat;
    double? maxLat;
    double? minLng;
    double? maxLng;

    for (final p in polys) {
      for (final pt in p.points) {
        minLat = (minLat == null) ? pt.latitude : math.min(minLat, pt.latitude);
        maxLat = (maxLat == null) ? pt.latitude : math.max(maxLat, pt.latitude);
        minLng =
            (minLng == null) ? pt.longitude : math.min(minLng, pt.longitude);
        maxLng =
            (maxLng == null) ? pt.longitude : math.max(maxLng, pt.longitude);
      }
    }

    if (minLat == null || minLng == null || maxLat == null || maxLng == null)
      return null;

    // All values are non-null here, so use '!' to satisfy the type system
    return gmaps.LatLngBounds(
      southwest: gmaps.LatLng(minLat, minLng),
      northeast: gmaps.LatLng(maxLat, maxLng),
    );
  }

  Future<void> _maybeFitToPolygons() async {
    if (_controller == null || _polygons.isEmpty) return;
    final b = _boundsFromPolygons(_polygons);
    if (b == null) return;
    try {
      // newLatLngBounds expects a double padding; pass widget.boundsPadding directly
      await _controller!.animateCamera(
        gmaps.CameraUpdate.newLatLngBounds(b, widget.boundsPadding),
      );
    } catch (_) {
      // Retry on next frame if layout not ready
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (!mounted) return;
        _maybeFitToPolygons();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final initialTarget = _polygons.isNotEmpty
        ? _polygons.first.points.first
        : const gmaps.LatLng(-1.286389, 36.817223);

    return SizedBox(
      width: widget.width,
      height: widget.height ?? 400.0,
      child: gmaps.GoogleMap(
        initialCameraPosition: gmaps.CameraPosition(
            target: initialTarget, zoom: widget.initialZoom),
        polygons: _polygons,
        mapType: gmaps.MapType.normal,
        zoomControlsEnabled: true,
        onMapCreated: (c) {
          _controller = c;
          _maybeFitToPolygons();
        },
      ),
    );
  }
}
