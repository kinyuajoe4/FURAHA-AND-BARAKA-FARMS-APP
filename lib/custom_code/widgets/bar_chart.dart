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

import 'package:syncfusion_flutter_charts/charts.dart';

class BarChart extends StatefulWidget {
  const BarChart({
    super.key,
    this.width,
    this.height,
    required this.xValues,
    required this.yValues,
    this.chartTitle,
  });

  final double? width;
  final double? height;
  final List<String> xValues;
  final List<int> yValues;
  final String? chartTitle;

  @override
  State<BarChart> createState() => _BarChartState();
}

class _BarChartState extends State<BarChart> {
  late double minY;
  late double maxY;
  late double interval;

  @override
  void initState() {
    super.initState();
    _calculateYAxisValues();
  }

  void _calculateYAxisValues() {
    final allYValues = widget.yValues;
    minY = 0;
    maxY = allYValues.isNotEmpty
        ? allYValues.reduce((a, b) => a > b ? a : b).toDouble()
        : 1.0;
    maxY = (maxY + (maxY * 0.1).ceil()).toDouble();
    interval = (maxY / 5).ceilToDouble();
  }

  @override
  Widget build(BuildContext context) {
    final filteredData = List.generate(widget.xValues.length,
            (index) => {'x': widget.xValues[index], 'y': widget.yValues[index]})
        .where((data) => data['y'] != 0)
        .toList();

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: SizedBox(
        width: MediaQuery.of(context).size.width *
            2.1, // Ensures scrolling with fixed 10 bars visible at a time
        child: SfCartesianChart(
          title: ChartTitle(text: widget.chartTitle ?? ''),
          primaryXAxis: CategoryAxis(),
          primaryYAxis: NumericAxis(
            minimum: minY,
            maximum: maxY,
            interval: interval,
          ),
          tooltipBehavior: TooltipBehavior(enable: true),
          series: <CartesianSeries<Map<String, dynamic>, String>>[
            ColumnSeries<Map<String, dynamic>, String>(
              dataSource: filteredData,
              xValueMapper: (data, _) => data['x'] as String,
              yValueMapper: (data, _) => (data['y'] as int).toDouble(),
              color: Colors.blue,
              dataLabelSettings: DataLabelSettings(isVisible: true),
            ),
          ],
        ),
      ),
    );
  }
}

// Set your widget name, define your parameter, and then add the
// boilerplate code using the green button on the right!
