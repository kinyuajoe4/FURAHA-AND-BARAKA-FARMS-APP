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

class LineChart extends StatefulWidget {
  const LineChart({
    super.key,
    this.width,
    this.height,
    this.chartTitle,
    required this.xValues,
    required this.yValues,
  });

  final double? width;
  final double? height;
  final String? chartTitle;
  final List<String> xValues;
  final List<double> yValues;

  @override
  State<LineChart> createState() => _LineChartState();
}

class _LineChartState extends State<LineChart> {
  late double minY;
  late double maxY;
  late double interval;

  @override
  void initState() {
    super.initState();
    _calculateYAxisValues();
  }

  void _calculateYAxisValues() {
    minY = 0;
    maxY = widget.yValues.isNotEmpty
        ? widget.yValues.reduce((a, b) => a > b ? a : b).toDouble()
        : 0;
    final padding = (maxY * 0.1).ceil();
    maxY = maxY + padding;
    maxY = maxY.ceilToDouble();
    interval = (maxY / 5).ceilToDouble();
  }

  @override
  Widget build(BuildContext context) {
    final filteredData = List.generate(
      widget.xValues.length,
      (index) => ChartDataStruct(
        xTitle: widget.xValues[index],
        yValue: widget.yValues[index],
      ),
    );

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: SizedBox(
        width: widget.width ?? MediaQuery.of(context).size.width * 2.1,
        height: widget.height ?? 300,
        child: SfCartesianChart(
          title: ChartTitle(text: widget.chartTitle ?? ''),
          primaryXAxis: CategoryAxis(),
          primaryYAxis: NumericAxis(
            minimum: minY,
            maximum: maxY,
            interval: interval,
          ),
          tooltipBehavior: TooltipBehavior(enable: true),
          series: <CartesianSeries<ChartDataStruct, String>>[
            LineSeries<ChartDataStruct, String>(
              dataSource: filteredData,
              xValueMapper: (data, _) => data.xTitle,
              yValueMapper: (data, _) => data.yValue,
              name: widget.chartTitle ?? 'Data',
              color: Colors.blue,
              dataLabelSettings: const DataLabelSettings(isVisible: true),
              markerSettings: const MarkerSettings(isVisible: true),
            ),
          ],
        ),
      ),
    );
  }
}

class ChartDataStruct {
  final String xTitle;
  final double yValue;

  ChartDataStruct({
    required this.xTitle,
    required this.yValue,
  });
}

// Set your widget name, define your parameter, and then add the
// boilerplate code using the green button on the right!
