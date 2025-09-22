import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'dart:math' as math;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'all_species_distributedddd_model.dart';
export 'all_species_distributedddd_model.dart';

class AllSpeciesDistributeddddWidget extends StatefulWidget {
  const AllSpeciesDistributeddddWidget({super.key});

  static String routeName = 'allSpeciesDistributedddd';
  static String routePath = '/allSpeciesDistributedddd';

  @override
  State<AllSpeciesDistributeddddWidget> createState() =>
      _AllSpeciesDistributeddddWidgetState();
}

class _AllSpeciesDistributeddddWidgetState
    extends State<AllSpeciesDistributeddddWidget> {
  late AllSpeciesDistributeddddModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AllSpeciesDistributeddddModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          title: Text(
            'Page Title',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: FlutterFlowTheme.of(context).headlineMediumFamily,
                  color: Colors.white,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                  useGoogleFonts:
                      !FlutterFlowTheme.of(context).headlineMediumIsCustom,
                ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 0.0, 10.0),
            child: StreamBuilder<List<TotalTreesPerSpeciesRecord>>(
              stream: queryTotalTreesPerSpeciesRecord(),
              builder: (context, snapshot) {
                // Customize what your widget looks like when it's loading.
                if (!snapshot.hasData) {
                  return Center(
                    child: SizedBox(
                      width: 50.0,
                      height: 50.0,
                      child: SpinKitWanderingCubes(
                        color: Color(0xFF00B90E),
                        size: 50.0,
                      ),
                    ),
                  );
                }
                List<TotalTreesPerSpeciesRecord>
                    columnTotalTreesPerSpeciesRecordList = snapshot.data!;

                return SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: List.generate(
                        columnTotalTreesPerSpeciesRecordList.length,
                        (columnIndex) {
                      final columnTotalTreesPerSpeciesRecord =
                          columnTotalTreesPerSpeciesRecordList[columnIndex];
                      return Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              await columnTotalTreesPerSpeciesRecord.reference
                                  .update(createTotalTreesPerSpeciesRecordData(
                                totalCarbonSequestred: valueOrDefault<double>(
                                  math.pow(
                                          (math.pow(0.3, 2) *
                                              columnTotalTreesPerSpeciesRecord
                                                  .treeDensity *
                                              1.6),
                                          0.976) *
                                      0.0673 *
                                      0.35 *
                                      0.47 *
                                      44 /
                                      12 *
                                      columnTotalTreesPerSpeciesRecord
                                          .totalTrees,
                                  0.0,
                                ),
                              ));
                            },
                            child: Text(
                              columnTotalTreesPerSpeciesRecord.treeName,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyMediumFamily,
                                    fontSize: 18.0,
                                    letterSpacing: 0.0,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .bodyMediumIsCustom,
                                  ),
                            ),
                          ),
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              await columnTotalTreesPerSpeciesRecord.reference
                                  .update(createTotalTreesPerSpeciesRecordData(
                                totalCarbonSequestred: valueOrDefault<double>(
                                  math.pow(
                                          (math.pow(0.3, 2) *
                                              columnTotalTreesPerSpeciesRecord
                                                  .treeDensity *
                                              1.0),
                                          0.976) *
                                      0.0673 *
                                      0.35 *
                                      0.47 *
                                      44 /
                                      12 *
                                      columnTotalTreesPerSpeciesRecord
                                          .totalTrees,
                                  0.0,
                                ),
                              ));
                            },
                            child: Text(
                              valueOrDefault<String>(
                                columnTotalTreesPerSpeciesRecord
                                    .totalCarbonSequestred
                                    .toString(),
                                '0',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyMediumFamily,
                                    fontSize: 18.0,
                                    letterSpacing: 0.0,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .bodyMediumIsCustom,
                                  ),
                            ),
                          ),
                        ],
                      );
                    }).divide(SizedBox(height: 10.0)),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
