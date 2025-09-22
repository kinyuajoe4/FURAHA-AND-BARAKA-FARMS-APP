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

import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import 'dart:math';

Future generatePdfSelectedCounty(
    String institutionName,
    String reportCategory,
    String date,
    String county,
    String table1Title,
    double totalTrees,
    double totalInstitutions,
    double totalSpecies,
    double treeSurvivalRate,
    double treeCanopyCoverage,
    double carbonAbsorbed,
    String table1Description,
    String table2Title,
    String table2Description,
    List<String> fieldName,
    List<double> totalTreesList,
    List<double> carbonAbsorbedList,
    String table4Title,
    String table4Description,
    double healthyTrees,
    double damagedTrees,
    double totalMonitoredTrees,
    double visitCycles,
    String table5Title,
    String table5Description,
    List<String> institutions,
    List<double> numberOfHealthyTrees,
    List<String> comments,
    String table6Title,
    String table6Description,
    List<String> institutionsTable6,
    List<double> numberOfDeadTrees,
    List<String> commentsTable6,
    String table7Title,
    String table7Description,
    double totalCO2Captured,
    double cumulativeTreesPlanted,
    double netZeroTarget,
    String realWorldComparison,
    String table8Title,
    String table8Description) async {
  final pdf = pw.Document();

  pdf.addPage(
    pw.MultiPage(
      pageFormat: PdfPageFormat.a4,
      build: (pw.Context context) => [
        // Header Section (Centered)
        pw.Center(
          child: pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.center,
            children: [
              pw.Text(institutionName,
                  style: pw.TextStyle(
                      fontSize: 18, fontWeight: pw.FontWeight.bold)),
              pw.Text('$reportCategory',
                  style: pw.TextStyle(
                      fontSize: 14, fontWeight: pw.FontWeight.bold)),
              pw.Text('Prepared by Furaha Baraka Farms',
                  style: pw.TextStyle(
                      fontSize: 14, fontWeight: pw.FontWeight.bold)),
              pw.Text('Date: $date',
                  style: pw.TextStyle(
                      fontSize: 12, fontWeight: pw.FontWeight.bold)),
              pw.Text('For: $county',
                  style: pw.TextStyle(
                      fontSize: 12, fontWeight: pw.FontWeight.bold)),
              pw.SizedBox(height: 20),
            ],
          ),
        ),

        // Table 1 (Centered)
        pw.Text(table1Title,
            style: pw.TextStyle(fontSize: 14, fontWeight: pw.FontWeight.bold),
            textAlign: pw.TextAlign.center),
        pw.SizedBox(height: 10),
        pw.Table.fromTextArray(
          border: pw.TableBorder.all(),
          cellAlignment: pw.Alignment.center,
          headers: ['Parameter', 'Value'],
          data: [
            ['Total Trees', totalTrees.toString()],
            ['Total Institutions', totalInstitutions.toString()],
            ['Total Species', totalSpecies.toString()],
            ['Tree Survival Rate', '${treeSurvivalRate.toString()}%'],
            ['Tree Canopy Coverage', '${treeCanopyCoverage.toString()}%'],
            ['Carbon Absorbed (kg)', carbonAbsorbed.toString()],
          ],
        ),
        pw.SizedBox(height: 10),
        pw.Text(table1Description, style: pw.TextStyle(fontSize: 12)),

        pw.SizedBox(height: 20),

        // Table 2
        pw.Text(table2Title,
            style: pw.TextStyle(fontSize: 14, fontWeight: pw.FontWeight.bold),
            textAlign: pw.TextAlign.center),
        pw.SizedBox(height: 10),
        pw.Table.fromTextArray(
          border: pw.TableBorder.all(),
          headers: ['Field Name', 'Total Trees', 'Carbon Absorbed (kg)'],
          data: List.generate(
              fieldName.length,
              (index) => [
                    fieldName[index] ?? '',
                    totalTreesList.isNotEmpty && index < totalTreesList.length
                        ? totalTreesList[index].toString()
                        : '',
                    carbonAbsorbedList.isNotEmpty &&
                            index < carbonAbsorbedList.length
                        ? carbonAbsorbedList[index].toStringAsFixed(2)
                        : '',
                  ]),
        ),
        pw.SizedBox(height: 10),
        pw.Text(table2Description, style: pw.TextStyle(fontSize: 12)),

        pw.SizedBox(height: 20),

        /*// Table 3
        pw.Text(table3Title,
            style: pw.TextStyle(fontSize: 14, fontWeight: pw.FontWeight.bold),
            textAlign: pw.TextAlign.center),
        pw.SizedBox(height: 10),
        pw.Table.fromTextArray(
          border: pw.TableBorder.all(),
          headers: ['County', 'Number of Institutions'],
          data: List.generate(
              countyList.length,
              (index) => [
                    countyList[index] ?? '',
                    institutionsList.isNotEmpty &&
                            index < institutionsList.length
                        ? institutionsList[index].toString()
                        : '',
                  ]),
        ),
        pw.SizedBox(height: 10),
        pw.Text(table3Description, style: pw.TextStyle(fontSize: 12)),

        pw.SizedBox(height: 20),*/

        // Table 4
        pw.Text(table4Title,
            style: pw.TextStyle(fontSize: 14, fontWeight: pw.FontWeight.bold),
            textAlign: pw.TextAlign.center),
        pw.SizedBox(height: 10),
        pw.Table.fromTextArray(
          border: pw.TableBorder.all(),
          headers: ['Parameter', 'Value'],
          data: [
            ['Healthy Trees', healthyTrees.toString()],
            ['Damaged Trees', damagedTrees.toString()],
            ['Total Monitored Trees', totalMonitoredTrees.toString()],
            ['Visit Cycles', visitCycles.toString()],
          ],
        ),
        pw.SizedBox(height: 10),
        pw.Text(table4Description, style: pw.TextStyle(fontSize: 12)),

        pw.SizedBox(height: 20),

        // Table 5
        pw.Text(table5Title,
            style: pw.TextStyle(fontSize: 14, fontWeight: pw.FontWeight.bold),
            textAlign: pw.TextAlign.center),
        pw.SizedBox(height: 10),
        pw.Table.fromTextArray(
          border: pw.TableBorder.all(),
          headers: ['Institution', 'Number of Healthy Trees', 'Comments'],
          data: List.generate(
              institutions.length,
              (index) => [
                    institutions[index] ?? '',
                    numberOfHealthyTrees.isNotEmpty &&
                            index < numberOfHealthyTrees.length
                        ? numberOfHealthyTrees[index].toString()
                        : '',
                    comments.isNotEmpty && index < comments.length
                        ? comments[index]
                        : '',
                  ]),
        ),
        pw.SizedBox(height: 10),
        pw.Text(table5Description, style: pw.TextStyle(fontSize: 12)),

        pw.SizedBox(height: 10),

        // Table 6
        pw.Text(table6Title,
            style: pw.TextStyle(fontSize: 14, fontWeight: pw.FontWeight.bold),
            textAlign: pw.TextAlign.center),
        pw.SizedBox(height: 10),
        pw.Table.fromTextArray(
          border: pw.TableBorder.all(),
          headers: ['Institution', 'Number of Dead Trees', 'Comments'],
          data: List.generate(
              institutionsTable6.length,
              (index) => [
                    institutionsTable6[index] ?? '',
                    numberOfDeadTrees.isNotEmpty &&
                            index < numberOfDeadTrees.length
                        ? numberOfDeadTrees[index].toString()
                        : '',
                    commentsTable6.isNotEmpty && index < commentsTable6.length
                        ? commentsTable6[index]
                        : '',
                  ]),
        ),
        pw.SizedBox(height: 10),
        pw.Text(table6Description, style: pw.TextStyle(fontSize: 12)),
        pw.SizedBox(height: 20),

        // Table 7
        pw.Text(table7Title,
            style: pw.TextStyle(fontSize: 14, fontWeight: pw.FontWeight.bold),
            textAlign: pw.TextAlign.center),
        pw.SizedBox(height: 10),
        pw.Table.fromTextArray(
          border: pw.TableBorder.all(),
          cellAlignment: pw.Alignment.center,
          headers: ['Parameter', 'Value'],
          data: [
            ['Total CO2 Captured', totalCO2Captured.toString()],
            ['Cumulative Trees Planted', cumulativeTreesPlanted.toString()],
            ['Net Zero Target Reached (%)', '$netZeroTarget%'],
            ['Real World Comparison', realWorldComparison],
          ],
        ),
        pw.SizedBox(height: 10),
        pw.Text(table7Description, style: pw.TextStyle(fontSize: 12)),
        pw.SizedBox(height: 20),

        // Species Carbon Absorption Distribution Chart
        pw.Text('Species Carbon Absorption Distribution',
            style: pw.TextStyle(fontSize: 14, fontWeight: pw.FontWeight.bold)),
        pw.SizedBox(height: 10),
        pw.Container(
          height: 350,
          child: pw.Chart(
            grid: pw.CartesianGrid(
              xAxis: pw.FixedAxis(
                List.generate(fieldName.length, (index) => index.toDouble()),
                marginStart: 10,
                marginEnd: 10,
                divisions: true,
              ),
              yAxis: pw.FixedAxis(
                List.generate(
                    6,
                    (index) => (index *
                            ((carbonAbsorbedList.isNotEmpty
                                    ? carbonAbsorbedList
                                        .reduce((a, b) => a > b ? a : b)
                                    : 10) /
                                5))
                        .toDouble()),
                divisions: true,
              ),
            ),
            datasets: [
              pw.BarDataSet(
                color: PdfColors.blue,
                width: 8,
                data: List.generate(
                  fieldName.length,
                  (index) => pw.PointChartValue(
                      index.toDouble(), carbonAbsorbedList[index]),
                ),
              ),
            ],
          ),
        ),
        /* // X-Axis Labels (Rotated)
        pw.SizedBox(height: 10),
        pw.Row(
          mainAxisAlignment: pw.MainAxisAlignment.spaceAround,
          children: List.generate(
            fieldName.length,
            (index) => pw.Transform.rotate(
              angle: -pi / 4, // Rotate the labels by -45 degrees
              child: pw.Text(
                fieldName[index],
                textAlign: pw.TextAlign.center,
                style: pw.TextStyle(fontSize: 8),
              ),
            ),
          ),
        ),
        pw.SizedBox(height: 20),*/

        // Table 8 (Hardcoded)
        pw.Text(table8Title,
            style: pw.TextStyle(fontSize: 14, fontWeight: pw.FontWeight.bold),
            textAlign: pw.TextAlign.center),
        pw.SizedBox(height: 10),
        pw.Table.fromTextArray(
          border: pw.TableBorder.all(),
          cellAlignment: pw.Alignment.center,
          headers: [
            'Year',
            'Total Trees Planted',
            'Total Carbon Absorbed',
            'Carbon Credit',
            'Paris Goal (%)'
          ],
          data: [
            ['2023', '337k', '6020', '9030', '30%'],
            ['2024', '398k', '7115', '10675.5', '36%'],
            ['2025', '465k', '8312', '12468', '36%'],
            ['2026 (Projection)', '672k', '12000', '18000', '60%'],
          ],
        ),
        pw.SizedBox(height: 10),
        pw.Text(table8Description, style: pw.TextStyle(fontSize: 12)),
      ],
    ),
  );

  await Printing.sharePdf(
      bytes: await pdf.save(), filename: '${reportCategory}_Report.pdf');
}
