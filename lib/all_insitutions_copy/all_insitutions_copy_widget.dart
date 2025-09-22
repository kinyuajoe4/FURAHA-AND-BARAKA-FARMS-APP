import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';
import 'all_insitutions_copy_model.dart';
export 'all_insitutions_copy_model.dart';

class AllInsitutionsCopyWidget extends StatefulWidget {
  const AllInsitutionsCopyWidget({super.key});

  static String routeName = 'allInsitutionsCopy';
  static String routePath = '/allInsitutionsCopy';

  @override
  State<AllInsitutionsCopyWidget> createState() =>
      _AllInsitutionsCopyWidgetState();
}

class _AllInsitutionsCopyWidgetState extends State<AllInsitutionsCopyWidget> {
  late AllInsitutionsCopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AllInsitutionsCopyModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

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
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: FutureBuilder<int>(
            future: queryAllTreesDeliveredRecordCount(
              queryBuilder: (allTreesDeliveredRecord) =>
                  allTreesDeliveredRecord.where(
                'isDTBandKCB',
                isEqualTo: false,
                isNull: (false) == null,
              ),
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
              int textCount = snapshot.data!;

              return Text(
                valueOrDefault<String>(
                  textCount.toString(),
                  '0',
                ),
                style: FlutterFlowTheme.of(context).headlineSmall.override(
                      fontFamily:
                          FlutterFlowTheme.of(context).headlineSmallFamily,
                      letterSpacing: 0.0,
                      useGoogleFonts:
                          !FlutterFlowTheme.of(context).headlineSmallIsCustom,
                    ),
              );
            },
          ),
          actions: [],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 0.0),
                  child: TextFormField(
                    controller: _model.textController,
                    focusNode: _model.textFieldFocusNode,
                    onChanged: (_) => EasyDebounce.debounce(
                      '_model.textController',
                      Duration(milliseconds: 2000),
                      () async {
                        await queryAllTreesDeliveredRecordOnce()
                            .then(
                              (records) => _model.simpleSearchResults =
                                  TextSearch(
                                records
                                    .map(
                                      (record) => TextSearchItem.fromTerms(
                                          record, [
                                        record.county!,
                                        record.institution!
                                      ]),
                                    )
                                    .toList(),
                              )
                                      .search(_model.textController.text)
                                      .map((r) => r.object)
                                      .take(50)
                                      .toList(),
                            )
                            .onError((_, __) => _model.simpleSearchResults = [])
                            .whenComplete(() => safeSetState(() {}));
                      },
                    ),
                    obscureText: false,
                    decoration: InputDecoration(
                      isDense: false,
                      labelText: 'Search for institutions / county',
                      labelStyle: FlutterFlowTheme.of(context)
                          .labelMedium
                          .override(
                            fontFamily:
                                FlutterFlowTheme.of(context).labelMediumFamily,
                            letterSpacing: 0.0,
                            useGoogleFonts: !FlutterFlowTheme.of(context)
                                .labelMediumIsCustom,
                          ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).primary,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).error,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).error,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      filled: true,
                      fillColor: FlutterFlowTheme.of(context).primaryBackground,
                      prefixIcon: Icon(
                        Icons.search_outlined,
                        color: FlutterFlowTheme.of(context).secondaryText,
                      ),
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).bodyMediumFamily,
                          letterSpacing: 0.0,
                          useGoogleFonts:
                              !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                        ),
                    maxLines: null,
                    validator:
                        _model.textControllerValidator.asValidator(context),
                  ),
                ),
                if (_model.textController.text == null ||
                    _model.textController.text == '')
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 24.0),
                    child: StreamBuilder<List<AllTreesDeliveredRecord>>(
                      stream: queryAllTreesDeliveredRecord(
                        queryBuilder: (allTreesDeliveredRecord) =>
                            allTreesDeliveredRecord.where(Filter.or(
                          Filter(
                            'PlanterCompany',
                            isEqualTo: 'DTB BANK',
                          ),
                          Filter(
                            'NUMBER_OF_TREES_DELIVERED',
                            isEqualTo: 0.0,
                          ),
                        )),
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
                            columnAllTreesDeliveredRecordList = snapshot.data!;

                        return SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: List.generate(
                                columnAllTreesDeliveredRecordList.length,
                                (columnIndex) {
                              final columnAllTreesDeliveredRecord =
                                  columnAllTreesDeliveredRecordList[
                                      columnIndex];
                              return Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 16.0, 0.0),
                                child: Container(
                                  width: 1300.0,
                                  constraints: BoxConstraints(
                                    minWidth: 320.0,
                                  ),
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    borderRadius: BorderRadius.circular(8.0),
                                    border: Border.all(
                                      color: FlutterFlowTheme.of(context)
                                          .alternate,
                                      width: 2.0,
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          await columnAllTreesDeliveredRecord
                                              .reference
                                              .update(
                                                  createAllTreesDeliveredRecordData(
                                            numberOfTreesDelivered:
                                                valueOrDefault<double>(
                                                      columnAllTreesDeliveredRecord
                                                          .redCider
                                                          .toDouble(),
                                                      0.0,
                                                    ) +
                                                    valueOrDefault<double>(
                                                      columnAllTreesDeliveredRecord
                                                          .oleaAfricana
                                                          .toDouble(),
                                                      0.0,
                                                    ) +
                                                    valueOrDefault<double>(
                                                      columnAllTreesDeliveredRecord
                                                          .lemon
                                                          .toDouble(),
                                                      0.0,
                                                    ) +
                                                    valueOrDefault<double>(
                                                      columnAllTreesDeliveredRecord
                                                          .cypress
                                                          .toDouble(),
                                                      0.0,
                                                    ) +
                                                    valueOrDefault<double>(
                                                      columnAllTreesDeliveredRecord
                                                          .sennaSiamea
                                                          .toDouble(),
                                                      0.0,
                                                    ) +
                                                    valueOrDefault<double>(
                                                      columnAllTreesDeliveredRecord
                                                          .casuarina
                                                          .toDouble(),
                                                      0.0,
                                                    ) +
                                                    valueOrDefault<double>(
                                                      columnAllTreesDeliveredRecord
                                                          .markhamiaLutea
                                                          .toDouble(),
                                                      0.0,
                                                    ) +
                                                    valueOrDefault<double>(
                                                      columnAllTreesDeliveredRecord
                                                          .markhamiaLutea
                                                          .toDouble(),
                                                      0.0,
                                                    ) +
                                                    valueOrDefault<double>(
                                                      columnAllTreesDeliveredRecord
                                                          .crotonMegalocarpus
                                                          .toDouble(),
                                                      0.0,
                                                    ) +
                                                    valueOrDefault<double>(
                                                      columnAllTreesDeliveredRecord
                                                          .syzygium
                                                          .toDouble(),
                                                      0.0,
                                                    ) +
                                                    valueOrDefault<double>(
                                                      columnAllTreesDeliveredRecord
                                                          .whiteSapote
                                                          .toDouble(),
                                                      0.0,
                                                    ) +
                                                    valueOrDefault<double>(
                                                      columnAllTreesDeliveredRecord
                                                          .podo
                                                          .toDouble(),
                                                      0.0,
                                                    ) +
                                                    valueOrDefault<double>(
                                                      columnAllTreesDeliveredRecord
                                                          .prunusAfricana
                                                          .toDouble(),
                                                      0.0,
                                                    ) +
                                                    valueOrDefault<double>(
                                                      columnAllTreesDeliveredRecord
                                                          .mango
                                                          .toDouble(),
                                                      0.0,
                                                    ) +
                                                    valueOrDefault<double>(
                                                      columnAllTreesDeliveredRecord
                                                          .mexicanGreenash
                                                          .toDouble(),
                                                      0.0,
                                                    ) +
                                                    valueOrDefault<double>(
                                                      columnAllTreesDeliveredRecord
                                                          .blueGum
                                                          .toDouble(),
                                                      0.0,
                                                    ) +
                                                    valueOrDefault<double>(
                                                      columnAllTreesDeliveredRecord
                                                          .saligna
                                                          .toDouble(),
                                                      0.0,
                                                    ) +
                                                    valueOrDefault<double>(
                                                      columnAllTreesDeliveredRecord
                                                          .macadamiaMuranga20
                                                          .toDouble(),
                                                      0.0,
                                                    ) +
                                                    valueOrDefault<double>(
                                                      columnAllTreesDeliveredRecord
                                                          .tangerine
                                                          .toDouble(),
                                                      0.0,
                                                    ) +
                                                    valueOrDefault<double>(
                                                      columnAllTreesDeliveredRecord
                                                          .guava
                                                          .toDouble(),
                                                      0.0,
                                                    ) +
                                                    valueOrDefault<double>(
                                                      columnAllTreesDeliveredRecord
                                                          .pixieOranges
                                                          .toDouble(),
                                                      0.0,
                                                    ) +
                                                    valueOrDefault<double>(
                                                      columnAllTreesDeliveredRecord
                                                          .pixieOranges
                                                          .toDouble(),
                                                      0.0,
                                                    ) +
                                                    valueOrDefault<double>(
                                                      columnAllTreesDeliveredRecord
                                                          .berry
                                                          .toDouble(),
                                                      0.0,
                                                    ) +
                                                    valueOrDefault<double>(
                                                      columnAllTreesDeliveredRecord
                                                          .hassAvocado
                                                          .toDouble(),
                                                      0.0,
                                                    ) +
                                                    valueOrDefault<double>(
                                                      columnAllTreesDeliveredRecord
                                                          .bottleBrush
                                                          .toDouble(),
                                                      0.0,
                                                    ) +
                                                    valueOrDefault<double>(
                                                      columnAllTreesDeliveredRecord
                                                          .grevillea
                                                          .toDouble(),
                                                      0.0,
                                                    ) +
                                                    valueOrDefault<double>(
                                                      columnAllTreesDeliveredRecord
                                                          .giantBamboo
                                                          .toDouble(),
                                                      0.0,
                                                    ) +
                                                    valueOrDefault<double>(
                                                      columnAllTreesDeliveredRecord
                                                          .neem
                                                          .toDouble(),
                                                      0.0,
                                                    ) +
                                                    valueOrDefault<double>(
                                                      columnAllTreesDeliveredRecord
                                                          .moringa
                                                          .toDouble(),
                                                      0.0,
                                                    ) +
                                                    valueOrDefault<double>(
                                                      columnAllTreesDeliveredRecord
                                                          .ashok
                                                          .toDouble(),
                                                      0.0,
                                                    ) +
                                                    valueOrDefault<double>(
                                                      columnAllTreesDeliveredRecord
                                                          .acacia
                                                          .toDouble(),
                                                      0.0,
                                                    ) +
                                                    valueOrDefault<double>(
                                                      columnAllTreesDeliveredRecord
                                                          .mahogany
                                                          .toDouble(),
                                                      0.0,
                                                    ) +
                                                    valueOrDefault<double>(
                                                      columnAllTreesDeliveredRecord
                                                          .terminalia
                                                          .toDouble(),
                                                      0.0,
                                                    ) +
                                                    valueOrDefault<double>(
                                                      columnAllTreesDeliveredRecord
                                                          .eucalyptus
                                                          .toDouble(),
                                                      0.0,
                                                    ) +
                                                    valueOrDefault<double>(
                                                      columnAllTreesDeliveredRecord
                                                          .pawpaw
                                                          .toDouble(),
                                                      0.0,
                                                    ) +
                                                    valueOrDefault<double>(
                                                      columnAllTreesDeliveredRecord
                                                          .passion
                                                          .toDouble(),
                                                      0.0,
                                                    ) +
                                                    valueOrDefault<double>(
                                                      columnAllTreesDeliveredRecord
                                                          .loquat
                                                          .toDouble(),
                                                      0.0,
                                                    ) +
                                                    valueOrDefault<double>(
                                                      columnAllTreesDeliveredRecord
                                                          .pine
                                                          .toDouble(),
                                                      0.0,
                                                    ) +
                                                    valueOrDefault<double>(
                                                      columnAllTreesDeliveredRecord
                                                          .mlukina
                                                          .toDouble(),
                                                      0.0,
                                                    ) +
                                                    valueOrDefault<double>(
                                                      columnAllTreesDeliveredRecord
                                                          .mkilifi
                                                          .toDouble(),
                                                      0.0,
                                                    ) +
                                                    valueOrDefault<double>(
                                                      columnAllTreesDeliveredRecord
                                                          .msukuku
                                                          .toDouble(),
                                                      0.0,
                                                    ) +
                                                    valueOrDefault<double>(
                                                      columnAllTreesDeliveredRecord
                                                          .msonobari
                                                          .toDouble(),
                                                      0.0,
                                                    ) +
                                                    valueOrDefault<double>(
                                                      columnAllTreesDeliveredRecord
                                                          .tomoko
                                                          .toDouble(),
                                                      0.0,
                                                    ) +
                                                    valueOrDefault<double>(
                                                      columnAllTreesDeliveredRecord
                                                          .citrus
                                                          .toDouble(),
                                                      0.0,
                                                    ) +
                                                    valueOrDefault<double>(
                                                      columnAllTreesDeliveredRecord
                                                          .mbirimbi
                                                          .toDouble(),
                                                      0.0,
                                                    ) +
                                                    valueOrDefault<double>(
                                                      columnAllTreesDeliveredRecord
                                                          .glicidia
                                                          .toDouble(),
                                                      0.0,
                                                    ),
                                          ));
                                        },
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 12.0, 0.0, 0.0),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                  border: Border.all(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .alternate,
                                                    width: 2.0,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 12.0, 0.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  if (responsiveVisibility(
                                                    context: context,
                                                    phone: false,
                                                    tablet: false,
                                                    tabletLandscape: false,
                                                  ))
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  12.0),
                                                      child: SelectionArea(
                                                          child: AutoSizeText(
                                                        valueOrDefault<String>(
                                                          columnAllTreesDeliveredRecord
                                                              .institution,
                                                          'LENANA HIGH SCHOOL  MAIN INSITUTION',
                                                        ),
                                                        textAlign:
                                                            TextAlign.start,
                                                        minFontSize: 12.0,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .headlineSmall
                                                            .override(
                                                              fontFamily:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineSmallFamily,
                                                              fontSize: 17.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              useGoogleFonts:
                                                                  !FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineSmallIsCustom,
                                                            ),
                                                      )),
                                                    ),
                                                  if (responsiveVisibility(
                                                    context: context,
                                                    phone: false,
                                                    tablet: false,
                                                    tabletLandscape: false,
                                                  ))
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  50.0,
                                                                  0.0,
                                                                  0.0,
                                                                  12.0),
                                                      child: SelectionArea(
                                                          child: AutoSizeText(
                                                        valueOrDefault<String>(
                                                          columnAllTreesDeliveredRecord
                                                              .numberOfTreesDelivered
                                                              .toString(),
                                                          '0',
                                                        ),
                                                        textAlign:
                                                            TextAlign.start,
                                                        minFontSize: 12.0,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .headlineSmall
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineSmallFamily,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .error,
                                                                  fontSize:
                                                                      17.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      !FlutterFlowTheme.of(
                                                                              context)
                                                                          .headlineSmallIsCustom,
                                                                ),
                                                      )),
                                                    ),
                                                  Container(
                                                    width: 20.0,
                                                    height: 20.0,
                                                    decoration: BoxDecoration(
                                                      color: () {
                                                        if (columnAllTreesDeliveredRecord
                                                                .numberOfTreesDelivered !=
                                                            null) {
                                                          return FlutterFlowTheme
                                                                  .of(context)
                                                              .primary;
                                                        } else if (columnAllTreesDeliveredRecord
                                                                .numberOfTreesDelivered ==
                                                            null) {
                                                          return FlutterFlowTheme
                                                                  .of(context)
                                                              .iandMBlue;
                                                        } else {
                                                          return FlutterFlowTheme
                                                                  .of(context)
                                                              .error;
                                                        }
                                                      }(),
                                                      shape: BoxShape.circle,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ].divide(SizedBox(width: 5.0)),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            }).divide(SizedBox(height: 12.0)),
                          ),
                        );
                      },
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
