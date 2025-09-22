import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'healthy_trees_model.dart';
export 'healthy_trees_model.dart';

class HealthyTreesWidget extends StatefulWidget {
  const HealthyTreesWidget({super.key});

  static String routeName = 'healthyTrees';
  static String routePath = '/healthyTrees';

  @override
  State<HealthyTreesWidget> createState() => _HealthyTreesWidgetState();
}

class _HealthyTreesWidgetState extends State<HealthyTreesWidget> {
  late HealthyTreesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HealthyTreesModel());

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
            'Top healthy Trees',
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
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                child: StreamBuilder<List<AllTreesDeliveredRecord>>(
                  stream: queryAllTreesDeliveredRecord(
                    queryBuilder: (allTreesDeliveredRecord) =>
                        allTreesDeliveredRecord.orderBy(
                            'NUMBER_OF_TREES_DELIVERED',
                            descending: true),
                  ),
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
                    List<AllTreesDeliveredRecord>
                        containerAllTreesDeliveredRecordList = snapshot.data!;

                    return Container(
                      height: 600.0,
                      decoration: BoxDecoration(),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            10.0, 0.0, 10.0, 0.0),
                        child: Builder(
                          builder: (context) {
                            final alltreesDel =
                                containerAllTreesDeliveredRecordList.toList();

                            return FlutterFlowDataTable<
                                AllTreesDeliveredRecord>(
                              controller: _model.paginatedDataTableController,
                              data: alltreesDel,
                              columnsBuilder: (onSortChanged) => [
                                DataColumn2(
                                  label: DefaultTextStyle.merge(
                                    softWrap: true,
                                    child: Text(
                                      'Institution',
                                      style: FlutterFlowTheme.of(context)
                                          .labelLarge
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .labelLargeFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .labelLargeIsCustom,
                                          ),
                                    ),
                                  ),
                                ),
                                DataColumn2(
                                  label: DefaultTextStyle.merge(
                                    softWrap: true,
                                    child: Text(
                                      'County',
                                      style: FlutterFlowTheme.of(context)
                                          .labelLarge
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .labelLargeFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .labelLargeIsCustom,
                                          ),
                                    ),
                                  ),
                                ),
                                DataColumn2(
                                  label: DefaultTextStyle.merge(
                                    softWrap: true,
                                    child: Text(
                                      'Healthy trees',
                                      style: FlutterFlowTheme.of(context)
                                          .labelLarge
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .labelLargeFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .labelLargeIsCustom,
                                          ),
                                    ),
                                  ),
                                ),
                              ],
                              dataRowBuilder: (alltreesDelItem,
                                      alltreesDelIndex,
                                      selected,
                                      onSelectChanged) =>
                                  DataRow(
                                color: MaterialStateProperty.all(
                                  alltreesDelIndex % 2 == 0
                                      ? FlutterFlowTheme.of(context)
                                          .secondaryBackground
                                      : FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                ),
                                cells: [
                                  Text(
                                    alltreesDelItem.institution,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          letterSpacing: 0.0,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .bodyMediumIsCustom,
                                        ),
                                  ),
                                  Text(
                                    alltreesDelItem.county,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          letterSpacing: 0.0,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .bodyMediumIsCustom,
                                        ),
                                  ),
                                  Text(
                                    valueOrDefault<String>(
                                      alltreesDelItem
                                          .totalAliveTreesList.firstOrNull
                                          ?.toString(),
                                      'to be updated on visit',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          letterSpacing: 0.0,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .bodyMediumIsCustom,
                                        ),
                                  ),
                                ].map((c) => DataCell(c)).toList(),
                              ),
                              paginated: true,
                              selectable: false,
                              hidePaginator: false,
                              showFirstLastButtons: false,
                              headingRowHeight: 56.0,
                              dataRowHeight: 48.0,
                              columnSpacing: 20.0,
                              headingRowColor:
                                  FlutterFlowTheme.of(context).primary,
                              borderRadius: BorderRadius.circular(8.0),
                              addHorizontalDivider: true,
                              addTopAndBottomDivider: false,
                              hideDefaultHorizontalDivider: true,
                              horizontalDividerColor:
                                  FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                              horizontalDividerThickness: 1.0,
                              addVerticalDivider: false,
                            );
                          },
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
