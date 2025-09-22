import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'm_a_i_n_b_u_tmini_k_p_a_model.dart';
export 'm_a_i_n_b_u_tmini_k_p_a_model.dart';

class MAINBUTminiKPAWidget extends StatefulWidget {
  const MAINBUTminiKPAWidget({super.key});

  @override
  State<MAINBUTminiKPAWidget> createState() => _MAINBUTminiKPAWidgetState();
}

class _MAINBUTminiKPAWidgetState extends State<MAINBUTminiKPAWidget> {
  late MAINBUTminiKPAModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MAINBUTminiKPAModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.nav1 = true;
      _model.nav2 = false;
      _model.nav3 = false;
      _model.nav4 = false;
      _model.nav5 = false;
      _model.nav6 = false;
      _model.nav7 = false;
      _model.nav8 = false;
      _model.nav9 = false;
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 260.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
        boxShadow: [
          BoxShadow(
            blurRadius: 16.0,
            color: Color(0x1B080B1F),
            offset: Offset(
              0.0,
              6.0,
            ),
          )
        ],
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                FFAppState().mainNav1 = true;
                FFAppState().mainNav2 = false;
                FFAppState().mainNav3 = false;
                FFAppState().mainNav4 = false;
                FFAppState().mainNav5 = false;
                FFAppState().mainNav6 = false;
                FFAppState().mainNav7 = false;
                FFAppState().mainNav8 = false;
                FFAppState().mainNav9 = false;
                FFAppState().carbonReportMain = false;
                FFAppState().update(() {});
                _model.nav1 = true;
                _model.nav2 = false;
                _model.nav3 = false;
                _model.nav4 = false;
                _model.nav5 = false;
                _model.nav6 = false;
                _model.nav7 = false;
                _model.nav8 = false;
                _model.nav9 = false;
                safeSetState(() {});
              },
              child: Container(
                width: double.infinity,
                height: 54.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Icon(
                      Icons.data_exploration,
                      color: FlutterFlowTheme.of(context).secondaryText,
                      size: 24.0,
                    ),
                    Text(
                      'Main',
                      style: FlutterFlowTheme.of(context).labelLarge.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).labelLargeFamily,
                            color: _model.nav1 == true
                                ? FlutterFlowTheme.of(context).kpaColor
                                : FlutterFlowTheme.of(context).secondaryText,
                            letterSpacing: 0.0,
                            useGoogleFonts: !FlutterFlowTheme.of(context)
                                .labelLargeIsCustom,
                          ),
                    ),
                  ]
                      .divide(SizedBox(width: 16.0))
                      .addToStart(SizedBox(width: 16.0))
                      .addToEnd(SizedBox(width: 16.0)),
                ),
              ),
            ),
            MouseRegion(
              opaque: false,
              cursor: MouseCursor.defer ?? MouseCursor.defer,
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  FFAppState().mainNav1 = false;
                  FFAppState().mainNav2 = true;
                  FFAppState().mainNav3 = false;
                  FFAppState().mainNav4 = false;
                  FFAppState().mainNav5 = false;
                  FFAppState().mainNav6 = false;
                  FFAppState().mainNav7 = false;
                  FFAppState().mainNav8 = false;
                  FFAppState().mainNav9 = false;
                  FFAppState().carbonReportMain = false;
                  FFAppState().update(() {});
                  _model.nav1 = false;
                  _model.nav2 = true;
                  _model.nav3 = false;
                  _model.nav4 = false;
                  _model.nav5 = false;
                  _model.nav6 = false;
                  _model.nav7 = false;
                  _model.nav8 = false;
                  _model.nav9 = false;
                  safeSetState(() {});
                },
                child: Container(
                  width: double.infinity,
                  height: 54.0,
                  decoration: BoxDecoration(
                    color: valueOrDefault<Color>(
                      _model.mouseRegionHovered1!
                          ? FlutterFlowTheme.of(context).secondaryBackground
                          : FlutterFlowTheme.of(context).primaryBackground,
                      FlutterFlowTheme.of(context).primaryBackground,
                    ),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Icon(
                        Icons.equalizer,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                      Text(
                        'GHG Overview',
                        style: FlutterFlowTheme.of(context).labelLarge.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).labelLargeFamily,
                              color: _model.nav2 == true
                                  ? FlutterFlowTheme.of(context).kpaColor
                                  : FlutterFlowTheme.of(context).secondaryText,
                              letterSpacing: 0.0,
                              useGoogleFonts: !FlutterFlowTheme.of(context)
                                  .labelLargeIsCustom,
                            ),
                      ),
                    ]
                        .divide(SizedBox(width: 16.0))
                        .addToStart(SizedBox(width: 16.0))
                        .addToEnd(SizedBox(width: 16.0)),
                  ),
                ),
              ),
              onEnter: ((event) async {
                safeSetState(() => _model.mouseRegionHovered1 = true);
              }),
              onExit: ((event) async {
                safeSetState(() => _model.mouseRegionHovered1 = false);
              }),
            ),
            MouseRegion(
              opaque: false,
              cursor: MouseCursor.defer ?? MouseCursor.defer,
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  FFAppState().mainNav1 = false;
                  FFAppState().mainNav2 = false;
                  FFAppState().mainNav3 = true;
                  FFAppState().mainNav4 = false;
                  FFAppState().mainNav5 = false;
                  FFAppState().mainNav6 = false;
                  FFAppState().mainNav7 = false;
                  FFAppState().mainNav8 = false;
                  FFAppState().mainNav9 = false;
                  FFAppState().carbonReportMain = false;
                  FFAppState().update(() {});
                  _model.nav1 = false;
                  _model.nav2 = false;
                  _model.nav3 = true;
                  _model.nav4 = false;
                  _model.nav5 = false;
                  _model.nav6 = false;
                  _model.nav7 = false;
                  _model.nav8 = false;
                  _model.nav9 = false;
                  _model.updatePage(() {});
                },
                child: Container(
                  width: double.infinity,
                  height: 54.0,
                  decoration: BoxDecoration(
                    color: valueOrDefault<Color>(
                      _model.mouseRegionHovered2!
                          ? FlutterFlowTheme.of(context).secondaryBackground
                          : FlutterFlowTheme.of(context).primaryBackground,
                      FlutterFlowTheme.of(context).primaryBackground,
                    ),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Icon(
                        Icons.settings_suggest,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                      Text(
                        'Reforestation Initiatives',
                        style: FlutterFlowTheme.of(context).labelLarge.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).labelLargeFamily,
                              color: _model.nav3 == true
                                  ? FlutterFlowTheme.of(context).kpaColor
                                  : FlutterFlowTheme.of(context).secondaryText,
                              letterSpacing: 0.0,
                              useGoogleFonts: !FlutterFlowTheme.of(context)
                                  .labelLargeIsCustom,
                            ),
                      ),
                    ]
                        .divide(SizedBox(width: 16.0))
                        .addToStart(SizedBox(width: 16.0))
                        .addToEnd(SizedBox(width: 16.0)),
                  ),
                ),
              ),
              onEnter: ((event) async {
                safeSetState(() => _model.mouseRegionHovered2 = true);
              }),
              onExit: ((event) async {
                safeSetState(() => _model.mouseRegionHovered2 = false);
              }),
            ),
            MouseRegion(
              opaque: false,
              cursor: MouseCursor.defer ?? MouseCursor.defer,
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  FFAppState().mainNav1 = false;
                  FFAppState().mainNav2 = false;
                  FFAppState().mainNav3 = false;
                  FFAppState().mainNav4 = true;
                  FFAppState().mainNav5 = false;
                  FFAppState().mainNav6 = false;
                  FFAppState().mainNav7 = false;
                  FFAppState().mainNav8 = false;
                  FFAppState().mainNav9 = false;
                  FFAppState().carbonReportMain = false;
                  FFAppState().update(() {});
                  _model.nav1 = false;
                  _model.nav2 = false;
                  _model.nav3 = false;
                  _model.nav4 = true;
                  _model.nav5 = false;
                  _model.nav6 = false;
                  _model.nav7 = false;
                  _model.nav8 = false;
                  _model.nav9 = false;
                  safeSetState(() {});
                },
                child: Container(
                  width: double.infinity,
                  height: 54.0,
                  decoration: BoxDecoration(
                    color: valueOrDefault<Color>(
                      _model.mouseRegionHovered3!
                          ? FlutterFlowTheme.of(context).secondaryBackground
                          : FlutterFlowTheme.of(context).primaryBackground,
                      FlutterFlowTheme.of(context).primaryBackground,
                    ),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Icon(
                        Icons.solar_power,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 24.0,
                      ),
                      Text(
                        'Renewable Energy',
                        style: FlutterFlowTheme.of(context).labelLarge.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).labelLargeFamily,
                              color: _model.nav4 == true
                                  ? FlutterFlowTheme.of(context).kpaColor
                                  : FlutterFlowTheme.of(context).secondaryText,
                              letterSpacing: 0.0,
                              useGoogleFonts: !FlutterFlowTheme.of(context)
                                  .labelLargeIsCustom,
                            ),
                      ),
                    ]
                        .divide(SizedBox(width: 16.0))
                        .addToStart(SizedBox(width: 16.0))
                        .addToEnd(SizedBox(width: 16.0)),
                  ),
                ),
              ),
              onEnter: ((event) async {
                safeSetState(() => _model.mouseRegionHovered3 = true);
              }),
              onExit: ((event) async {
                safeSetState(() => _model.mouseRegionHovered3 = false);
              }),
            ),
            MouseRegion(
              opaque: false,
              cursor: MouseCursor.defer ?? MouseCursor.defer,
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  FFAppState().mainNav1 = false;
                  FFAppState().mainNav2 = false;
                  FFAppState().mainNav3 = false;
                  FFAppState().mainNav4 = false;
                  FFAppState().mainNav5 = true;
                  FFAppState().mainNav6 = false;
                  FFAppState().mainNav7 = false;
                  FFAppState().mainNav8 = false;
                  FFAppState().mainNav9 = false;
                  FFAppState().carbonReportMain = false;
                  FFAppState().update(() {});
                  _model.nav1 = false;
                  _model.nav2 = false;
                  _model.nav3 = false;
                  _model.nav4 = false;
                  _model.nav5 = true;
                  _model.nav6 = false;
                  _model.nav7 = false;
                  _model.nav8 = false;
                  _model.nav9 = false;
                  safeSetState(() {});
                },
                child: Container(
                  width: double.infinity,
                  height: 54.0,
                  decoration: BoxDecoration(
                    color: valueOrDefault<Color>(
                      _model.mouseRegionHovered4!
                          ? FlutterFlowTheme.of(context).secondaryBackground
                          : FlutterFlowTheme.of(context).primaryBackground,
                      FlutterFlowTheme.of(context).primaryBackground,
                    ),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Icon(
                        Icons.power_outlined,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 24.0,
                      ),
                      Text(
                        'Hybrid Equipments &\nShore Power',
                        style: FlutterFlowTheme.of(context).labelLarge.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).labelLargeFamily,
                              color: _model.nav5 == true
                                  ? FlutterFlowTheme.of(context).kpaColor
                                  : FlutterFlowTheme.of(context).secondaryText,
                              letterSpacing: 0.0,
                              useGoogleFonts: !FlutterFlowTheme.of(context)
                                  .labelLargeIsCustom,
                            ),
                      ),
                    ]
                        .divide(SizedBox(width: 16.0))
                        .addToStart(SizedBox(width: 16.0))
                        .addToEnd(SizedBox(width: 16.0)),
                  ),
                ),
              ),
              onEnter: ((event) async {
                safeSetState(() => _model.mouseRegionHovered4 = true);
              }),
              onExit: ((event) async {
                safeSetState(() => _model.mouseRegionHovered4 = false);
              }),
            ),
            MouseRegion(
              opaque: false,
              cursor: MouseCursor.defer ?? MouseCursor.defer,
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  FFAppState().mainNav1 = false;
                  FFAppState().mainNav2 = false;
                  FFAppState().mainNav3 = false;
                  FFAppState().mainNav4 = false;
                  FFAppState().mainNav5 = false;
                  FFAppState().mainNav6 = true;
                  FFAppState().mainNav7 = false;
                  FFAppState().mainNav8 = false;
                  FFAppState().mainNav9 = false;
                  FFAppState().carbonReportMain = false;
                  FFAppState().update(() {});
                  _model.nav1 = false;
                  _model.nav2 = false;
                  _model.nav3 = false;
                  _model.nav4 = false;
                  _model.nav5 = false;
                  _model.nav6 = true;
                  _model.nav7 = false;
                  _model.nav8 = false;
                  _model.nav9 = false;
                  safeSetState(() {});
                },
                child: Container(
                  width: double.infinity,
                  height: 54.0,
                  decoration: BoxDecoration(
                    color: valueOrDefault<Color>(
                      _model.mouseRegionHovered5!
                          ? FlutterFlowTheme.of(context).secondaryBackground
                          : FlutterFlowTheme.of(context).primaryBackground,
                      FlutterFlowTheme.of(context).primaryBackground,
                    ),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Icon(
                        Icons.deblur_outlined,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 24.0,
                      ),
                      Text(
                        'Air Pollution',
                        style: FlutterFlowTheme.of(context).labelLarge.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).labelLargeFamily,
                              color: _model.nav6 == true
                                  ? FlutterFlowTheme.of(context).kpaColor
                                  : FlutterFlowTheme.of(context).secondaryText,
                              letterSpacing: 0.0,
                              useGoogleFonts: !FlutterFlowTheme.of(context)
                                  .labelLargeIsCustom,
                            ),
                      ),
                    ]
                        .divide(SizedBox(width: 16.0))
                        .addToStart(SizedBox(width: 16.0))
                        .addToEnd(SizedBox(width: 16.0)),
                  ),
                ),
              ),
              onEnter: ((event) async {
                safeSetState(() => _model.mouseRegionHovered5 = true);
              }),
              onExit: ((event) async {
                safeSetState(() => _model.mouseRegionHovered5 = false);
              }),
            ),
            MouseRegion(
              opaque: false,
              cursor: MouseCursor.defer ?? MouseCursor.defer,
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  FFAppState().mainNav1 = false;
                  FFAppState().mainNav2 = false;
                  FFAppState().mainNav3 = false;
                  FFAppState().mainNav4 = false;
                  FFAppState().mainNav5 = false;
                  FFAppState().mainNav6 = false;
                  FFAppState().mainNav7 = true;
                  FFAppState().mainNav8 = false;
                  FFAppState().mainNav9 = false;
                  FFAppState().carbonReportMain = false;
                  FFAppState().update(() {});
                  _model.nav1 = false;
                  _model.nav2 = false;
                  _model.nav3 = false;
                  _model.nav4 = false;
                  _model.nav5 = false;
                  _model.nav6 = false;
                  _model.nav7 = true;
                  _model.nav8 = false;
                  _model.nav9 = false;
                  safeSetState(() {});
                },
                child: Container(
                  width: double.infinity,
                  height: 54.0,
                  decoration: BoxDecoration(
                    color: valueOrDefault<Color>(
                      _model.mouseRegionHovered6!
                          ? FlutterFlowTheme.of(context).secondaryBackground
                          : FlutterFlowTheme.of(context).primaryBackground,
                      FlutterFlowTheme.of(context).primaryBackground,
                    ),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Icon(
                        Icons.delete_outline,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 24.0,
                      ),
                      Text(
                        'Waste Management',
                        style: FlutterFlowTheme.of(context).labelLarge.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).labelLargeFamily,
                              color: _model.nav7 == true
                                  ? FlutterFlowTheme.of(context).kpaColor
                                  : FlutterFlowTheme.of(context).secondaryText,
                              letterSpacing: 0.0,
                              useGoogleFonts: !FlutterFlowTheme.of(context)
                                  .labelLargeIsCustom,
                            ),
                      ),
                    ]
                        .divide(SizedBox(width: 16.0))
                        .addToStart(SizedBox(width: 16.0))
                        .addToEnd(SizedBox(width: 16.0)),
                  ),
                ),
              ),
              onEnter: ((event) async {
                safeSetState(() => _model.mouseRegionHovered6 = true);
              }),
              onExit: ((event) async {
                safeSetState(() => _model.mouseRegionHovered6 = false);
              }),
            ),
            MouseRegion(
              opaque: false,
              cursor: MouseCursor.defer ?? MouseCursor.defer,
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  FFAppState().mainNav1 = false;
                  FFAppState().mainNav2 = false;
                  FFAppState().mainNav3 = false;
                  FFAppState().mainNav4 = false;
                  FFAppState().mainNav5 = false;
                  FFAppState().mainNav6 = false;
                  FFAppState().mainNav7 = false;
                  FFAppState().mainNav8 = true;
                  FFAppState().mainNav9 = false;
                  FFAppState().carbonReportMain = false;
                  FFAppState().update(() {});
                  _model.nav1 = false;
                  _model.nav2 = false;
                  _model.nav3 = false;
                  _model.nav4 = false;
                  _model.nav5 = false;
                  _model.nav6 = false;
                  _model.nav7 = false;
                  _model.nav8 = true;
                  _model.nav9 = false;
                  safeSetState(() {});
                },
                child: Container(
                  width: double.infinity,
                  height: 54.0,
                  decoration: BoxDecoration(
                    color: valueOrDefault<Color>(
                      _model.mouseRegionHovered7!
                          ? FlutterFlowTheme.of(context).secondaryBackground
                          : FlutterFlowTheme.of(context).primaryBackground,
                      FlutterFlowTheme.of(context).primaryBackground,
                    ),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Icon(
                        Icons.people_outline,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 24.0,
                      ),
                      Text(
                        'Impact Measure',
                        style: FlutterFlowTheme.of(context).labelLarge.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).labelLargeFamily,
                              color: _model.nav8 == true
                                  ? FlutterFlowTheme.of(context).kpaColor
                                  : FlutterFlowTheme.of(context).secondaryText,
                              letterSpacing: 0.0,
                              useGoogleFonts: !FlutterFlowTheme.of(context)
                                  .labelLargeIsCustom,
                            ),
                      ),
                    ]
                        .divide(SizedBox(width: 16.0))
                        .addToStart(SizedBox(width: 16.0))
                        .addToEnd(SizedBox(width: 16.0)),
                  ),
                ),
              ),
              onEnter: ((event) async {
                safeSetState(() => _model.mouseRegionHovered7 = true);
              }),
              onExit: ((event) async {
                safeSetState(() => _model.mouseRegionHovered7 = false);
              }),
            ),
            if (responsiveVisibility(
              context: context,
              phone: false,
              tablet: false,
              tabletLandscape: false,
              desktop: false,
            ))
              MouseRegion(
                opaque: false,
                cursor: MouseCursor.defer ?? MouseCursor.defer,
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    FFAppState().mainNav1 = false;
                    FFAppState().mainNav2 = false;
                    FFAppState().mainNav3 = false;
                    FFAppState().mainNav4 = false;
                    FFAppState().mainNav5 = false;
                    FFAppState().mainNav6 = false;
                    FFAppState().mainNav7 = false;
                    FFAppState().mainNav8 = false;
                    FFAppState().mainNav9 = true;
                    FFAppState().carbonReportMain = false;
                    FFAppState().update(() {});
                    _model.nav1 = false;
                    _model.nav2 = false;
                    _model.nav3 = false;
                    _model.nav4 = false;
                    _model.nav5 = false;
                    _model.nav6 = false;
                    _model.nav7 = false;
                    _model.nav8 = false;
                    _model.nav9 = true;
                    safeSetState(() {});
                  },
                  child: Container(
                    width: double.infinity,
                    height: 54.0,
                    decoration: BoxDecoration(
                      color: valueOrDefault<Color>(
                        _model.mouseRegionHovered8!
                            ? FlutterFlowTheme.of(context).secondaryBackground
                            : FlutterFlowTheme.of(context).primaryBackground,
                        FlutterFlowTheme.of(context).primaryBackground,
                      ),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Icon(
                          Icons.power_settings_new_sharp,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 24.0,
                        ),
                        Text(
                          'Project8',
                          style: FlutterFlowTheme.of(context)
                              .labelLarge
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .labelLargeFamily,
                                color: _model.nav9 == true
                                    ? FlutterFlowTheme.of(context).kpaColor
                                    : FlutterFlowTheme.of(context)
                                        .secondaryText,
                                letterSpacing: 0.0,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .labelLargeIsCustom,
                              ),
                        ),
                      ]
                          .divide(SizedBox(width: 16.0))
                          .addToStart(SizedBox(width: 16.0))
                          .addToEnd(SizedBox(width: 16.0)),
                    ),
                  ),
                ),
                onEnter: ((event) async {
                  safeSetState(() => _model.mouseRegionHovered8 = true);
                }),
                onExit: ((event) async {
                  safeSetState(() => _model.mouseRegionHovered8 = false);
                }),
              ),
          ],
        ),
      ),
    );
  }
}
