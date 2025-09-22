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

import 'package:syncfusion_flutter_gauges/gauges.dart';

class RadialGaugeWidget extends StatefulWidget {
  const RadialGaugeWidget({
    super.key,
    this.width,
    this.height,
    required this.gaugeValue,
    this.minValue = 0,
    this.maxValue = 100,
    this.gaugeTitle,
    this.unit = '',
    this.gaugeColor = Colors.blue,
    this.needleColor = Colors.red,
  });

  final double? width;
  final double? height;
  final double gaugeValue;
  final double minValue;
  final double maxValue;
  final String? gaugeTitle;
  final String unit;
  final Color gaugeColor;
  final Color needleColor;

  @override
  State<RadialGaugeWidget> createState() => _RadialGaugeWidgetState();
}

class _RadialGaugeWidgetState extends State<RadialGaugeWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (widget.gaugeTitle != null)
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Text(
              widget.gaugeTitle!,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
        SizedBox(
          height: widget.height ?? 350,
          width: widget.width ?? 350,
          child: SfRadialGauge(
            axes: <RadialAxis>[
              RadialAxis(
                minimum: widget.minValue,
                maximum: widget.maxValue,
                ranges: [
                  GaugeRange(
                    startValue: widget.minValue,
                    endValue: widget.maxValue,
                    color: widget.gaugeColor,
                  ),
                ],
                pointers: [
                  NeedlePointer(
                    value: widget.gaugeValue,
                    needleColor: widget.needleColor,
                    knobStyle: const KnobStyle(color: Colors.black),
                  ),
                ],
                annotations: [
                  GaugeAnnotation(
                    widget: Text(
                      '${widget.gaugeValue} ${widget.unit}',
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    angle: 90,
                    positionFactor: 0.8,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
