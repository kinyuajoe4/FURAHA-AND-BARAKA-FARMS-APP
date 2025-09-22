import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'visitation_history_model.dart';
export 'visitation_history_model.dart';

class VisitationHistoryWidget extends StatefulWidget {
  const VisitationHistoryWidget({
    super.key,
    this.speciesDoc,
  });

  final TotalTreesInAFieldRecord? speciesDoc;

  static String routeName = 'VisitationHistory';
  static String routePath = '/visitationHistory';

  @override
  State<VisitationHistoryWidget> createState() =>
      _VisitationHistoryWidgetState();
}

class _VisitationHistoryWidgetState extends State<VisitationHistoryWidget> {
  late VisitationHistoryModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VisitationHistoryModel());

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
          leading: InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              context.safePop();
            },
            child: Icon(
              Icons.arrow_back,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 24.0,
            ),
          ),
          title: Text(
            'Visitation History',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: FlutterFlowTheme.of(context).headlineMediumFamily,
                  letterSpacing: 0.0,
                  useGoogleFonts:
                      !FlutterFlowTheme.of(context).headlineMediumIsCustom,
                ),
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
                SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (responsiveVisibility(
                        context: context,
                        phone: false,
                        tablet: false,
                      ))
                        Container(
                          width: double.infinity,
                          height: 24.0,
                          decoration: BoxDecoration(),
                        ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                        child: Text(
                          'Below is a summary of all visitations done for this species in this institution.',
                          style: FlutterFlowTheme.of(context)
                              .labelMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .labelMediumFamily,
                                letterSpacing: 0.0,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .labelMediumIsCustom,
                              ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                        child: Container(
                          height: 40.0,
                          decoration: BoxDecoration(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          alignment: AlignmentDirectional(-1.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 8.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                if (responsiveVisibility(
                                  context: context,
                                  phone: false,
                                ))
                                  Flexible(
                                    child: Container(
                                      width: 70.0,
                                      decoration: BoxDecoration(),
                                      child: Visibility(
                                        visible: responsiveVisibility(
                                          context: context,
                                          phone: false,
                                        ),
                                        child: Text(
                                          'TREE IMAGE',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily,
                                                letterSpacing: 0.0,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMediumIsCustom,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ),
                                Flexible(
                                  child: Container(
                                    width: 300.0,
                                    decoration: BoxDecoration(),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'TREE STATUS',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily,
                                                letterSpacing: 0.0,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMediumIsCustom,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        8.0, 4.0, 8.0, 4.0),
                                    child: Text(
                                      'TOTAL ALIVE',
                                      style: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodySmallFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .bodySmallIsCustom,
                                          ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        8.0, 4.0, 8.0, 4.0),
                                    child: Text(
                                      'TOTAL DEAD',
                                      style: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodySmallFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .bodySmallIsCustom,
                                          ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  child: Text(
                                    'VISIT DATE',
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
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            8.0, 12.0, 8.0, 12.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Builder(
                              builder: (context) {
                                final speciesImage = widget!
                                        .speciesDoc?.imagesDuringVisitation
                                        ?.toList() ??
                                    [];

                                return Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: List.generate(speciesImage.length,
                                      (speciesImageIndex) {
                                    final speciesImageItem =
                                        speciesImage[speciesImageIndex];
                                    return Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(
                                          height: 36.0,
                                          decoration: BoxDecoration(),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                width: 30.0,
                                                height: 30.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .accent1,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                  border: Border.all(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    width: 2.0,
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsets.all(2.0),
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                    child: Image.network(
                                                      valueOrDefault<String>(
                                                        speciesImageItem,
                                                        'https://media.istockphoto.com/id/157374501/photo/plant-a-tree.jpg?s=612x612&w=0&k=20&c=rjcCmxuBeqQLgC_PCwowHYpv4y3n5e5tQfXqkfDodCI=',
                                                      ),
                                                      width: 120.0,
                                                      height: 120.0,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    );
                                  }).divide(SizedBox(height: 10.0)),
                                );
                              },
                            ),
                            Flexible(
                              child: Builder(
                                builder: (context) {
                                  final speciesstatus = widget!
                                          .speciesDoc?.statusOfTrees
                                          ?.toList() ??
                                      [];

                                  return Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children:
                                        List.generate(speciesstatus.length,
                                            (speciesstatusIndex) {
                                      final speciesstatusItem =
                                          speciesstatus[speciesstatusIndex];
                                      return AlignedTooltip(
                                        content: Padding(
                                          padding: EdgeInsets.all(4.0),
                                          child: Text(
                                            speciesstatusItem,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyLarge
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyLargeFamily,
                                                  letterSpacing: 0.0,
                                                  useGoogleFonts:
                                                      !FlutterFlowTheme.of(
                                                              context)
                                                          .bodyLargeIsCustom,
                                                ),
                                          ),
                                        ),
                                        offset: 4.0,
                                        preferredDirection: AxisDirection.down,
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                        elevation: 4.0,
                                        tailBaseWidth: 24.0,
                                        tailLength: 12.0,
                                        waitDuration:
                                            Duration(milliseconds: 100),
                                        showDuration:
                                            Duration(milliseconds: 1500),
                                        triggerMode: TooltipTriggerMode.tap,
                                        child: Container(
                                          width: 300.0,
                                          height: 36.0,
                                          decoration: BoxDecoration(),
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                speciesstatusItem
                                                    .maybeHandleOverflow(
                                                  maxChars: 25,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMediumIsCustom,
                                                        ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    }).divide(SizedBox(height: 10.0)),
                                  );
                                },
                              ),
                            ),
                            Builder(
                              builder: (context) {
                                final speciesalive =
                                    widget!.speciesDoc?.totalAlive?.toList() ??
                                        [];

                                return Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: List.generate(speciesalive.length,
                                      (speciesaliveIndex) {
                                    final speciesaliveItem =
                                        speciesalive[speciesaliveIndex];
                                    return AlignedTooltip(
                                      content: Padding(
                                        padding: EdgeInsets.all(4.0),
                                        child: Text(
                                          speciesaliveItem.toString(),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyLarge
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLargeFamily,
                                                letterSpacing: 0.0,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .bodyLargeIsCustom,
                                              ),
                                        ),
                                      ),
                                      offset: 4.0,
                                      preferredDirection: AxisDirection.down,
                                      borderRadius: BorderRadius.circular(8.0),
                                      backgroundColor:
                                          FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                      elevation: 4.0,
                                      tailBaseWidth: 24.0,
                                      tailLength: 12.0,
                                      waitDuration: Duration(milliseconds: 100),
                                      showDuration:
                                          Duration(milliseconds: 1500),
                                      triggerMode: TooltipTriggerMode.tap,
                                      child: Container(
                                        height: 36.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .accent2,
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          border: Border.all(
                                            color: FlutterFlowTheme.of(context)
                                                .secondary,
                                          ),
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        8.0, 4.0, 8.0, 4.0),
                                                child: Text(
                                                  speciesaliveItem.toString(),
                                                  style:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodySmall
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmallFamily,
                                                            letterSpacing: 0.0,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmallIsCustom,
                                                          ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  }).divide(SizedBox(height: 10.0)),
                                );
                              },
                            ),
                            Builder(
                              builder: (context) {
                                final speciesdead =
                                    widget!.speciesDoc?.totalDead?.toList() ??
                                        [];

                                return Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: List.generate(speciesdead.length,
                                      (speciesdeadIndex) {
                                    final speciesdeadItem =
                                        speciesdead[speciesdeadIndex];
                                    return AlignedTooltip(
                                      content: Padding(
                                        padding: EdgeInsets.all(4.0),
                                        child: Text(
                                          speciesdeadItem.toString(),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyLarge
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLargeFamily,
                                                letterSpacing: 0.0,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .bodyLargeIsCustom,
                                              ),
                                        ),
                                      ),
                                      offset: 4.0,
                                      preferredDirection: AxisDirection.down,
                                      borderRadius: BorderRadius.circular(8.0),
                                      backgroundColor:
                                          FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                      elevation: 4.0,
                                      tailBaseWidth: 24.0,
                                      tailLength: 12.0,
                                      waitDuration: Duration(milliseconds: 100),
                                      showDuration:
                                          Duration(milliseconds: 1500),
                                      triggerMode: TooltipTriggerMode.tap,
                                      child: Container(
                                        height: 36.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          border: Border.all(
                                            color: FlutterFlowTheme.of(context)
                                                .secondary,
                                          ),
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        8.0, 4.0, 8.0, 4.0),
                                                child: Text(
                                                  speciesdeadItem.toString(),
                                                  style:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodySmall
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmallFamily,
                                                            letterSpacing: 0.0,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmallIsCustom,
                                                          ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  }).divide(SizedBox(height: 10.0)),
                                );
                              },
                            ),
                            Flexible(
                              child: Builder(
                                builder: (context) {
                                  final visitdate = widget!
                                          .speciesDoc?.dateOfVisit
                                          ?.toList() ??
                                      [];

                                  return Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: List.generate(visitdate.length,
                                        (visitdateIndex) {
                                      final visitdateItem =
                                          visitdate[visitdateIndex];
                                      return AlignedTooltip(
                                        content: Padding(
                                          padding: EdgeInsets.all(4.0),
                                          child: Text(
                                            dateTimeFormat(
                                                "yMMMd", visitdateItem),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyLarge
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyLargeFamily,
                                                  letterSpacing: 0.0,
                                                  useGoogleFonts:
                                                      !FlutterFlowTheme.of(
                                                              context)
                                                          .bodyLargeIsCustom,
                                                ),
                                          ),
                                        ),
                                        offset: 4.0,
                                        preferredDirection: AxisDirection.down,
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                        elevation: 4.0,
                                        tailBaseWidth: 24.0,
                                        tailLength: 12.0,
                                        waitDuration:
                                            Duration(milliseconds: 100),
                                        showDuration:
                                            Duration(milliseconds: 1500),
                                        triggerMode: TooltipTriggerMode.tap,
                                        child: Container(
                                          height: 36.0,
                                          decoration: BoxDecoration(),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                dateTimeFormat(
                                                    "yQQQ", visitdateItem),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMediumIsCustom,
                                                        ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    }).divide(SizedBox(height: 10.0)),
                                  );
                                },
                              ),
                            ),
                          ].divide(SizedBox(width: 5.0)),
                        ),
                      ),
                    ],
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
