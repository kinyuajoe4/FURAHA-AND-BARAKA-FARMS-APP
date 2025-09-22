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

class PieChartWidget extends StatefulWidget {
  const PieChartWidget({
    super.key,
    this.width,
    this.height,
    required this.treeNames,
    required this.totalTrees,
    this.chartTitle,
  });

  final double? width;
  final double? height;
  final List<String> treeNames;
  final List<int> totalTrees;
  final String? chartTitle;

  @override
  State<PieChartWidget> createState() => _PieChartWidgetState();
}

class _PieChartWidgetState extends State<PieChartWidget> {
  @override
  Widget build(BuildContext context) {
    final List<ChartData> chartData = List.generate(
      widget.treeNames.length,
      (index) => ChartData(
          widget.treeNames[index], widget.totalTrees[index].toDouble()),
    );

    return Scaffold(
      body: Center(
        child: Container(
          width: widget.width ?? MediaQuery.of(context).size.width,
          height: widget.height ?? 300,
          child: SfCircularChart(
            title: ChartTitle(text: widget.chartTitle ?? ''),
            legend: Legend(
                isVisible: true, overflowMode: LegendItemOverflowMode.wrap),
            tooltipBehavior: TooltipBehavior(enable: true),
            series: <CircularSeries<ChartData, String>>[
              PieSeries<ChartData, String>(
                dataSource: chartData,
                xValueMapper: (ChartData data, _) => data.x,
                yValueMapper: (ChartData data, _) => data.y,
                dataLabelSettings: const DataLabelSettings(isVisible: true),
                enableTooltip: true,
                dataLabelMapper: (ChartData data, _) =>
                    "${data.x}: ${data.y.toInt()}",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ChartData {
  ChartData(this.x, this.y, [this.color]);
  final String x;
  final double y;
  final Color? color;
}

// Set your widget name, define your parameter, and then add the
// boilerplate code using the green button on the right!
