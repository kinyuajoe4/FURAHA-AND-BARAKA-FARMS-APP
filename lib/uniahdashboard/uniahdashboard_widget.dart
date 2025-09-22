import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/uniah_dashnav_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:math';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'dart:math' as math;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'uniahdashboard_model.dart';
export 'uniahdashboard_model.dart';

class UniahdashboardWidget extends StatefulWidget {
  const UniahdashboardWidget({super.key});

  static String routeName = 'UNIAHDASHBOARD';
  static String routePath = '/uniahdashboard';

  @override
  State<UniahdashboardWidget> createState() => _UniahdashboardWidgetState();
}

class _UniahdashboardWidgetState extends State<UniahdashboardWidget>
    with TickerProviderStateMixin {
  late UniahdashboardModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UniahdashboardModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      FFAppState().dtbDashboard = true;
      safeSetState(() {});
      _model.institutionsfilteredmain = await queryFieldsRecordOnce(
        queryBuilder: (fieldsRecord) => fieldsRecord.where(
          'PlanterCompany',
          isEqualTo: 'UNIAH Ventures Limited',
        ),
      );
      _model.institutions = _model.institutionsfilteredmain!
          .map((e) => e.fieldName)
          .toList()
          .toList()
          .cast<String>();
      safeSetState(() {});
    });

    animationsMap.addAll({
      'containerOnPageLoadAnimation1': AnimationInfo(
        loop: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 900.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'containerOnPageLoadAnimation2': AnimationInfo(
        loop: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 900.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'containerOnPageLoadAnimation3': AnimationInfo(
        loop: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 900.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'containerOnPageLoadAnimation4': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 90.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'containerOnPageLoadAnimation5': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 90.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'containerOnPageLoadAnimation6': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 90.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'containerOnPageLoadAnimation7': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 90.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'containerOnPageLoadAnimation8': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 90.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'containerOnPageLoadAnimation9': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 90.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();
    final chartPieChartColorsList = [Color(0xFFCB0A41), Color(0xFFCE8508)];
    return StreamBuilder<List<DistributionPerCountyRecord>>(
      stream: queryDistributionPerCountyRecord(
        queryBuilder: (distributionPerCountyRecord) =>
            distributionPerCountyRecord.orderBy('noOfInsitutions',
                descending: true),
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: SpinKitWanderingCubes(
                  color: Color(0xFF00B90E),
                  size: 50.0,
                ),
              ),
            ),
          );
        }
        List<DistributionPerCountyRecord>
            uniahdashboardDistributionPerCountyRecordList = snapshot.data!;

        return GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            drawer: Container(
              width: 200.0,
              child: Drawer(
                elevation: 16.0,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Container(
                        width: 180.0,
                        height: double.infinity,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 3.0,
                              color: Color(0x33000000),
                              offset: Offset(
                                0.0,
                                1.0,
                              ),
                            )
                          ],
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(0.0),
                            bottomRight: Radius.circular(12.0),
                            topLeft: Radius.circular(0.0),
                            topRight: Radius.circular(12.0),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 24.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      'assets/images/Screenshot_2025-07-27_at_23.53.25.png',
                                      width: 130.0,
                                      height: 40.0,
                                      fit: BoxFit.contain,
                                    ),
                                  ],
                                ),
                              ),
                              Text(
                                'Menu',
                                style: FlutterFlowTheme.of(context)
                                    .bodySmall
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodySmallFamily,
                                      letterSpacing: 0.0,
                                      useGoogleFonts:
                                          !FlutterFlowTheme.of(context)
                                              .bodySmallIsCustom,
                                    ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 8.0, 0.0, 0.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.pushNamed(
                                        UniahdashboardWidget.routeName);
                                  },
                                  child: Container(
                                    width: double.infinity,
                                    height: 48.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8.0, 4.0, 4.0, 4.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 12.0, 0.0),
                                            child: Icon(
                                              Icons.bar_chart_rounded,
                                              color: FFAppState()
                                                          .dtbDashboard ==
                                                      true
                                                  ? FlutterFlowTheme.of(context)
                                                      .error
                                                  : FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              size: 24.0,
                                            ),
                                          ),
                                          Text(
                                            'Dashboard',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily,
                                                  color: FFAppState()
                                                              .dtbDashboard ==
                                                          true
                                                      ? FlutterFlowTheme.of(
                                                              context)
                                                          .error
                                                      : FlutterFlowTheme.of(
                                                              context)
                                                          .primaryText,
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
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 8.0, 0.0, 0.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context
                                        .pushNamed(AllTreesDTBWidget.routeName);
                                  },
                                  child: Container(
                                    width: double.infinity,
                                    height: 48.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8.0, 4.0, 4.0, 4.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 12.0, 0.0),
                                            child: FaIcon(
                                              FontAwesomeIcons.tree,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              size: 24.0,
                                            ),
                                          ),
                                          Text(
                                            'All Trees',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
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
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 8.0, 0.0, 0.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.pushNamed(
                                        TreeStatusDTBWidget.routeName);
                                  },
                                  child: Container(
                                    width: double.infinity,
                                    height: 48.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8.0, 4.0, 4.0, 4.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 12.0, 0.0),
                                            child: FaIcon(
                                              FontAwesomeIcons.seedling,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              size: 24.0,
                                            ),
                                          ),
                                          Text(
                                            'Tree status',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
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
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 8.0, 0.0, 0.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.pushNamed(
                                        CarbonAbsorbedDTBWidget.routeName);
                                  },
                                  child: Container(
                                    width: double.infinity,
                                    height: 48.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8.0, 4.0, 4.0, 4.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 12.0, 0.0),
                                            child: Icon(
                                              Icons.stream,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              size: 24.0,
                                            ),
                                          ),
                                          Text(
                                            'Carbon Report',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
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
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            appBar: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
              automaticallyImplyLeading: true,
              leading: Visibility(
                visible: responsiveVisibility(
                  context: context,
                  tablet: false,
                  tabletLandscape: false,
                  desktop: false,
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      scaffoldKey.currentState!.openDrawer();
                    },
                    child: Icon(
                      Icons.more_vert,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 24.0,
                    ),
                  ),
                ),
              ),
              actions: [],
              centerTitle: true,
              elevation: 0.0,
            ),
            body: SafeArea(
              top: true,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 400.0,
                          child: Visibility(
                            visible: responsiveVisibility(
                              context: context,
                              phone: false,
                              tablet: false,
                              tabletLandscape: false,
                            ),
                            child: wrapWithModel(
                              model: _model.uniahDashnavModel,
                              updateCallback: () => safeSetState(() {}),
                              child: UniahDashnavWidget(),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child:
                                StreamBuilder<List<TotalTreesPerSpeciesRecord>>(
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
                                    mainCardTotalTreesPerSpeciesRecordList =
                                    snapshot.data!;

                                return Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 4.0,
                                        color: Color(0x33000000),
                                        offset: Offset(
                                          0.0,
                                          2.0,
                                        ),
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(16.0),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 20.0, 0.0, 0.0),
                                    child: SingleChildScrollView(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Wrap(
                                            spacing: 0.0,
                                            runSpacing: 0.0,
                                            alignment: WrapAlignment.start,
                                            crossAxisAlignment:
                                                WrapCrossAlignment.start,
                                            direction: Axis.horizontal,
                                            runAlignment: WrapAlignment.start,
                                            verticalDirection:
                                                VerticalDirection.down,
                                            clipBehavior: Clip.none,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 16.0, 0.0, 16.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'Trees Dashboard',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .headlineSmall
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineSmallFamily,
                                                            letterSpacing: 0.0,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineSmallIsCustom,
                                                          ),
                                                    ),
                                                    Text(
                                                      valueOrDefault<String>(
                                                        functions
                                                            .greetAccordingToTime(
                                                                getCurrentTimestamp),
                                                        'Good day.',
                                                      ),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .headlineSmall
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineSmallFamily,
                                                            fontSize: 15.0,
                                                            letterSpacing: 0.0,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineSmallIsCustom,
                                                          ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 16.0, 0.0, 16.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    if (responsiveVisibility(
                                                      context: context,
                                                      phone: false,
                                                    ))
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    20.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child:
                                                            FlutterFlowDropDown<
                                                                String>(
                                                          controller: _model
                                                                  .allcountiesValueController ??=
                                                              FormFieldController<
                                                                  String>(null),
                                                          options: ['KILIFI'],
                                                          onChanged:
                                                              (val) async {
                                                            safeSetState(() =>
                                                                _model.allcountiesValue =
                                                                    val);
                                                            _model.institutionsfiltered =
                                                                await queryFieldsRecordOnce(
                                                              queryBuilder:
                                                                  (fieldsRecord) =>
                                                                      fieldsRecord
                                                                          .where(
                                                                'COUNTY',
                                                                isEqualTo: _model
                                                                    .allcountiesValue,
                                                              ),
                                                            );
                                                            _model.count =
                                                                await queryFieldsRecordCount(
                                                              queryBuilder:
                                                                  (fieldsRecord) =>
                                                                      fieldsRecord
                                                                          .where(
                                                                'COUNTY',
                                                                isEqualTo: _model
                                                                    .allcountiesValue,
                                                              ),
                                                            );
                                                            _model.percounty =
                                                                await queryDistributionPerCountyRecordOnce(
                                                              queryBuilder:
                                                                  (distributionPerCountyRecord) =>
                                                                      distributionPerCountyRecord
                                                                          .where(
                                                                'county',
                                                                isEqualTo: _model
                                                                    .allcountiesValue,
                                                              ),
                                                              singleRecord:
                                                                  true,
                                                            ).then((s) => s
                                                                    .firstOrNull);
                                                            _model.institutions = _model
                                                                .institutionsfiltered!
                                                                .map((e) => e
                                                                    .institution)
                                                                .toList()
                                                                .cast<String>();
                                                            safeSetState(() {});

                                                            safeSetState(() {});
                                                          },
                                                          width: 200.0,
                                                          height: 40.0,
                                                          searchHintTextStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .labelMediumFamily,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    useGoogleFonts:
                                                                        !FlutterFlowTheme.of(context)
                                                                            .labelMediumIsCustom,
                                                                  ),
                                                          searchTextStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    useGoogleFonts:
                                                                        !FlutterFlowTheme.of(context)
                                                                            .bodyMediumIsCustom,
                                                                  ),
                                                          textStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily,
                                                                    fontSize:
                                                                        16.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    useGoogleFonts:
                                                                        !FlutterFlowTheme.of(context)
                                                                            .bodyMediumIsCustom,
                                                                  ),
                                                          hintText:
                                                              'All Counties',
                                                          searchHintText:
                                                              'Search...',
                                                          icon: Icon(
                                                            Icons
                                                                .keyboard_arrow_down_rounded,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryText,
                                                            size: 27.0,
                                                          ),
                                                          fillColor: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBackground,
                                                          elevation: 19.0,
                                                          borderColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .secondaryBackground,
                                                          borderWidth: 0.0,
                                                          borderRadius: 8.0,
                                                          margin:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      12.0,
                                                                      0.0,
                                                                      12.0,
                                                                      0.0),
                                                          hidesUnderline: true,
                                                          isOverButton: false,
                                                          isSearchable: true,
                                                          isMultiSelect: false,
                                                        ),
                                                      ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 16.0, 0.0, 16.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    if (responsiveVisibility(
                                                      context: context,
                                                      phone: false,
                                                    ))
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    20.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: StreamBuilder<
                                                            List<
                                                                AllTreesDeliveredRecord>>(
                                                          stream:
                                                              queryAllTreesDeliveredRecord(
                                                            limit: 45,
                                                          ),
                                                          builder: (context,
                                                              snapshot) {
                                                            // Customize what your widget looks like when it's loading.
                                                            if (!snapshot
                                                                .hasData) {
                                                              return Center(
                                                                child: SizedBox(
                                                                  width: 50.0,
                                                                  height: 50.0,
                                                                  child:
                                                                      SpinKitWanderingCubes(
                                                                    color: Color(
                                                                        0xFF00B90E),
                                                                    size: 50.0,
                                                                  ),
                                                                ),
                                                              );
                                                            }
                                                            List<AllTreesDeliveredRecord>
                                                                dropDownAllTreesDeliveredRecordList =
                                                                snapshot.data!;

                                                            return FlutterFlowDropDown<
                                                                String>(
                                                              controller: _model
                                                                      .dropDownValueController ??=
                                                                  FormFieldController<
                                                                          String>(
                                                                      null),
                                                              options: _model
                                                                  .institutions,
                                                              onChanged: (val) =>
                                                                  safeSetState(() =>
                                                                      _model.dropDownValue =
                                                                          val),
                                                              width: 200.0,
                                                              height: 40.0,
                                                              searchHintTextStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).labelMediumFamily,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            !FlutterFlowTheme.of(context).labelMediumIsCustom,
                                                                      ),
                                                              searchTextStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                      ),
                                                              textStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                        fontSize:
                                                                            16.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                      ),
                                                              hintText:
                                                                  'Insitutions',
                                                              searchHintText:
                                                                  'Search...',
                                                              icon: Icon(
                                                                Icons
                                                                    .keyboard_arrow_down_rounded,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                size: 27.0,
                                                              ),
                                                              fillColor: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryBackground,
                                                              elevation: 19.0,
                                                              borderColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                              borderWidth: 0.0,
                                                              borderRadius: 8.0,
                                                              margin:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          12.0,
                                                                          0.0,
                                                                          12.0,
                                                                          0.0),
                                                              hidesUnderline:
                                                                  true,
                                                              isOverButton:
                                                                  false,
                                                              isSearchable:
                                                                  true,
                                                              isMultiSelect:
                                                                  false,
                                                            );
                                                          },
                                                        ),
                                                      ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 16.0, 0.0, 16.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    FFButtonWidget(
                                                      onPressed: () async {
                                                        await downloadFile(
                                                          filename:
                                                              'UNIAH TREE PLANTING EVIDENCE REPORT',
                                                          url:
                                                              'https://apcttppnvvicidkfkgwo.supabase.co/storage/v1/object/public/uniahreportpdf//uniah%20planting%20evidence%20-magarini.pdf',
                                                        );
                                                        await Future.delayed(
                                                          Duration(
                                                            milliseconds: 20000,
                                                          ),
                                                        );
                                                        if (_model.allcountiesValue !=
                                                                null &&
                                                            _model.allcountiesValue !=
                                                                '') {
                                                          await actions
                                                              .generatePdfSelectedCounty(
                                                            'DTB - Diamod Trust Bank ',
                                                            'Trees Planted Automated Report',
                                                            'Trees Planted Automated Report',
                                                            '${_model.allcountiesValue} COUNTY',
                                                            valueOrDefault<
                                                                String>(
                                                              'An overview of all trees information in ${_model.allcountiesValue}COUNTY',
                                                              'An overview of all trees information',
                                                            ),
                                                            _model.percounty!
                                                                .totalTrees,
                                                            _model.percounty!
                                                                .noOfInsitutions,
                                                            34.0,
                                                            86.5,
                                                            75.0,
                                                            valueOrDefault<
                                                                double>(
                                                              math.pow(
                                                                      (math.pow(
                                                                              0.1,
                                                                              2) *
                                                                          0.5 *
                                                                          1.0),
                                                                      0.976) *
                                                                  0.0673 *
                                                                  0.35 *
                                                                  0.47 *
                                                                  44 /
                                                                  12 *
                                                                  valueOrDefault<
                                                                      double>(
                                                                    functions.sumAllLists(_model
                                                                        .institutionsfiltered
                                                                        ?.map((e) =>
                                                                            e.totalTreesPlanted)
                                                                        .toList()
                                                                        ?.toList()),
                                                                    0.0,
                                                                  ),
                                                              0.0,
                                                            ),
                                                            'There are  ${_model.percounty?.totalTrees?.toString()} trees across ${_model.percounty?.noOfInsitutions?.toString()}consisting of ${_model.percounty?.monitoredTrees?.toString()} monitored trees across ${_model.percounty?.monitoredInsitutions?.toString()} monitored institutions.',
                                                            'Tres Distribution per Field ',
                                                            'This is an overview of species distribution  ranging from the species with the highest number of trees',
                                                            _model
                                                                .institutionsfiltered!
                                                                .map((e) =>
                                                                    e.fieldName)
                                                                .toList(),
                                                            _model
                                                                .institutionsfiltered!
                                                                .map((e) => e
                                                                    .totalTreesPlanted)
                                                                .toList(),
                                                            _model
                                                                .institutionsfiltered!
                                                                .map((e) => e
                                                                    .totalTreesPlanted)
                                                                .toList(),
                                                            'Tree status',
                                                            'There are  ${_model.percounty?.totalTrees?.toString()} trees across ${_model.percounty?.noOfInsitutions?.toString()}consisting of ${_model.percounty?.monitoredTrees?.toString()} monitored trees across ${_model.percounty?.monitoredInsitutions?.toString()} monitored institutions.',
                                                            _model.percounty!
                                                                .totalTrees,
                                                            0.0,
                                                            _model.percounty!
                                                                .monitoredTrees,
                                                            3.0,
                                                            'Top Healthy Trees Distribution',
                                                            'The table above shows an overview of best performing institutions with the highest numbers of healthy trees',
                                                            _model
                                                                .institutionsfiltered!
                                                                .map((e) =>
                                                                    e.fieldName)
                                                                .toList(),
                                                            _model
                                                                .institutionsfiltered!
                                                                .map((e) => e
                                                                    .totalTreesPlanted)
                                                                .toList(),
                                                            _model
                                                                .institutionsfiltered!
                                                                .map((e) =>
                                                                    e.fieldName)
                                                                .toList(),
                                                            'Top  DeadTrees Distribution',
                                                            'The table above shows an overview of worst performing institutions with the highest numbers dead trees',
                                                            _model
                                                                .institutionsfiltered!
                                                                .map((e) =>
                                                                    e.fieldName)
                                                                .toList(),
                                                            _model
                                                                .institutionsfiltered!
                                                                .map((e) => e
                                                                    .totalTreesPlanted)
                                                                .toList(),
                                                            _model
                                                                .institutionsfiltered!
                                                                .map((e) =>
                                                                    e.fieldName)
                                                                .toList(),
                                                            'Carbon Report',
                                                            'A total of 4,64,070 trees have been planted, capturing 8,312 kg of CO2. This contributes to 7.5% of the net zero target and is equivalent to removing 2,000 cars from the road for a year.',
                                                            valueOrDefault<
                                                                double>(
                                                              (functions.sumAllLists(_model
                                                                      .institutionsfiltered
                                                                      ?.map((e) =>
                                                                          e.totalTreesPlanted)
                                                                      .toList()
                                                                      ?.toList())!) /
                                                                  1000,
                                                              0.0,
                                                            ),
                                                            valueOrDefault<
                                                                double>(
                                                              functions.sumAllLists(_model
                                                                  .institutionsfiltered
                                                                  ?.map((e) => e
                                                                      .totalTreesPlanted)
                                                                  .toList()
                                                                  ?.toList()),
                                                              0.0,
                                                            ),
                                                            5.4,
                                                            '100 Cars off the road for a year',
                                                            'Yearly  Carbon report',
                                                            'A total of ${_model.percounty?.totalTrees?.toString()} trees have been planted, capturing ${valueOrDefault<String>(
                                                              (math.pow(
                                                                          (math.pow(0.1, 2) *
                                                                              0.5 *
                                                                              1.0),
                                                                          0.976) *
                                                                      0.0673 *
                                                                      0.35 *
                                                                      0.47 *
                                                                      44 /
                                                                      12 *
                                                                      valueOrDefault<
                                                                          double>(
                                                                        functions.sumAllLists(_model
                                                                            .institutionsfiltered
                                                                            ?.map((e) =>
                                                                                e.totalTreesPlanted)
                                                                            .toList()
                                                                            ?.toList()),
                                                                        0.0,
                                                                      ))
                                                                  .toString(),
                                                              '0',
                                                            )} kg of CO2. This contributes to 1.95% of the net zero target and is equivalent to removin 105 cars from the road for a year.',
                                                          );
                                                          ScaffoldMessenger.of(
                                                                  context)
                                                              .showSnackBar(
                                                            SnackBar(
                                                              content: Text(
                                                                'success',
                                                                style:
                                                                    TextStyle(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                ),
                                                              ),
                                                              duration: Duration(
                                                                  milliseconds:
                                                                      4000),
                                                              backgroundColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondary,
                                                            ),
                                                          );
                                                        } else {
                                                          _model.treesperSpecies =
                                                              await queryTotalTreesPerSpeciesRecordOnce(
                                                            queryBuilder: (totalTreesPerSpeciesRecord) =>
                                                                totalTreesPerSpeciesRecord.orderBy(
                                                                    'totalTrees',
                                                                    descending:
                                                                        true),
                                                          );
                                                          _model.institutionsperCounty =
                                                              await queryDistributionPerCountyRecordOnce(
                                                            queryBuilder: (distributionPerCountyRecord) =>
                                                                distributionPerCountyRecord.orderBy(
                                                                    'noOfInsitutions',
                                                                    descending:
                                                                        true),
                                                          );
                                                          _model.healthyTrees =
                                                              await queryAllTreesDeliveredRecordOnce(
                                                            queryBuilder: (allTreesDeliveredRecord) =>
                                                                allTreesDeliveredRecord.orderBy(
                                                                    'NUMBER_OF_TREES_DELIVERED',
                                                                    descending:
                                                                        true),
                                                            limit: 10,
                                                          );
                                                          _model.uNhealthyTrees =
                                                              await queryAllTreesDeliveredRecordOnce(
                                                            queryBuilder: (allTreesDeliveredRecord) =>
                                                                allTreesDeliveredRecord.orderBy(
                                                                    'NUMBER_OF_TREES_DELIVERED',
                                                                    descending:
                                                                        true),
                                                            limit: 10,
                                                          );
                                                          ScaffoldMessenger.of(
                                                                  context)
                                                              .showSnackBar(
                                                            SnackBar(
                                                              content: Text(
                                                                'sucesss',
                                                                style:
                                                                    TextStyle(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                ),
                                                              ),
                                                              duration: Duration(
                                                                  milliseconds:
                                                                      4000),
                                                              backgroundColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondary,
                                                            ),
                                                          );
                                                        }

                                                        safeSetState(() {});
                                                      },
                                                      text: 'Download Report',
                                                      options: FFButtonOptions(
                                                        width: 150.0,
                                                        height: 40.0,
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    16.0,
                                                                    0.0,
                                                                    16.0,
                                                                    0.0),
                                                        iconPadding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmall
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmallFamily,
                                                                  color: Colors
                                                                      .white,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      !FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleSmallIsCustom,
                                                                ),
                                                        elevation: 0.0,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Expanded(
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .stretch,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      4.0,
                                                                      4.0,
                                                                      8.0,
                                                                      4.0),
                                                          child: Container(
                                                            height: 294.0,
                                                            constraints:
                                                                BoxConstraints(
                                                              maxWidth: MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .width *
                                                                  0.38,
                                                            ),
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          16.0),
                                                              border:
                                                                  Border.all(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                                width: 1.0,
                                                              ),
                                                            ),
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.0, -1.0),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .all(
                                                                          16.0),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    children: [
                                                                      Text(
                                                                        'Summary',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .headlineSmall
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).headlineSmallFamily,
                                                                              letterSpacing: 0.0,
                                                                              useGoogleFonts: !FlutterFlowTheme.of(context).headlineSmallIsCustom,
                                                                            ),
                                                                      ),
                                                                      Icon(
                                                                        Icons
                                                                            .arrow_forward,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                        size:
                                                                            24.0,
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            4.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      'An overview.',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodySmall
                                                                          .override(
                                                                            fontFamily:
                                                                                FlutterFlowTheme.of(context).bodySmallFamily,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            useGoogleFonts:
                                                                                !FlutterFlowTheme.of(context).bodySmallIsCustom,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                  Expanded(
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          4.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.end,
                                                                        children: [
                                                                          Expanded(
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.end,
                                                                              children: [
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
                                                                                  child: CircularPercentIndicator(
                                                                                    percent: 0.9,
                                                                                    radius: 50.0,
                                                                                    lineWidth: 12.0,
                                                                                    animation: true,
                                                                                    animateFromLastPercent: true,
                                                                                    progressColor: Color(0xFFCEA367),
                                                                                    center: Text(
                                                                                      '96 %',
                                                                                      style: FlutterFlowTheme.of(context).headlineMedium.override(
                                                                                            fontFamily: FlutterFlowTheme.of(context).headlineMediumFamily,
                                                                                            fontSize: 12.0,
                                                                                            letterSpacing: 0.0,
                                                                                            useGoogleFonts: !FlutterFlowTheme.of(context).headlineMediumIsCustom,
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                                Text(
                                                                                  'Tree Survival Rate',
                                                                                  style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                        fontFamily: FlutterFlowTheme.of(context).bodySmallFamily,
                                                                                        fontSize: 12.0,
                                                                                        letterSpacing: 0.0,
                                                                                        useGoogleFonts: !FlutterFlowTheme.of(context).bodySmallIsCustom,
                                                                                      ),
                                                                                ),
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                                                                                  child: Column(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                                                    children: [
                                                                                      Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                                                        children: [
                                                                                          SelectionArea(
                                                                                              child: Text(
                                                                                            'Monthly Change',
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                  color: FlutterFlowTheme.of(context).tertiary,
                                                                                                  fontSize: 12.0,
                                                                                                  letterSpacing: 0.0,
                                                                                                  fontWeight: FontWeight.normal,
                                                                                                  useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                                ),
                                                                                          )),
                                                                                        ],
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                                                                                        child: Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                          children: [
                                                                                            Expanded(
                                                                                              child: Stack(
                                                                                                children: [
                                                                                                  Row(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                                    children: [
                                                                                                      Padding(
                                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 4.0, 0.0),
                                                                                                        child: Container(
                                                                                                          width: 5.0,
                                                                                                          height: 16.0,
                                                                                                          decoration: BoxDecoration(
                                                                                                            color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                            boxShadow: [
                                                                                                              BoxShadow(
                                                                                                                blurRadius: 4.0,
                                                                                                                color: Color(0xBADFFBFF),
                                                                                                                offset: Offset(
                                                                                                                  0.0,
                                                                                                                  0.0,
                                                                                                                ),
                                                                                                              )
                                                                                                            ],
                                                                                                            borderRadius: BorderRadius.circular(2.0),
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                      Padding(
                                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 4.0, 0.0),
                                                                                                        child: Container(
                                                                                                          width: 5.0,
                                                                                                          height: 16.0,
                                                                                                          decoration: BoxDecoration(
                                                                                                            color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                            boxShadow: [
                                                                                                              BoxShadow(
                                                                                                                blurRadius: 4.0,
                                                                                                                color: Color(0xBADFFBFF),
                                                                                                                offset: Offset(
                                                                                                                  0.0,
                                                                                                                  0.0,
                                                                                                                ),
                                                                                                              )
                                                                                                            ],
                                                                                                            borderRadius: BorderRadius.circular(2.0),
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                      Padding(
                                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 4.0, 0.0),
                                                                                                        child: Container(
                                                                                                          width: 5.0,
                                                                                                          height: 16.0,
                                                                                                          decoration: BoxDecoration(
                                                                                                            color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                            boxShadow: [
                                                                                                              BoxShadow(
                                                                                                                blurRadius: 4.0,
                                                                                                                color: Color(0xBADFFBFF),
                                                                                                                offset: Offset(
                                                                                                                  0.0,
                                                                                                                  0.0,
                                                                                                                ),
                                                                                                              )
                                                                                                            ],
                                                                                                            borderRadius: BorderRadius.circular(2.0),
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                      Padding(
                                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 4.0, 0.0),
                                                                                                        child: Container(
                                                                                                          width: 5.0,
                                                                                                          height: 16.0,
                                                                                                          decoration: BoxDecoration(
                                                                                                            color: FlutterFlowTheme.of(context).primary,
                                                                                                            boxShadow: [
                                                                                                              BoxShadow(
                                                                                                                blurRadius: 4.0,
                                                                                                                color: Color(0xBADFFBFF),
                                                                                                                offset: Offset(
                                                                                                                  0.0,
                                                                                                                  0.0,
                                                                                                                ),
                                                                                                              )
                                                                                                            ],
                                                                                                            borderRadius: BorderRadius.circular(2.0),
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                      Padding(
                                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 4.0, 0.0),
                                                                                                        child: Container(
                                                                                                          width: 5.0,
                                                                                                          height: 16.0,
                                                                                                          decoration: BoxDecoration(
                                                                                                            color: FlutterFlowTheme.of(context).primary,
                                                                                                            boxShadow: [
                                                                                                              BoxShadow(
                                                                                                                blurRadius: 4.0,
                                                                                                                color: Color(0xBADFFBFF),
                                                                                                                offset: Offset(
                                                                                                                  0.0,
                                                                                                                  0.0,
                                                                                                                ),
                                                                                                              )
                                                                                                            ],
                                                                                                            borderRadius: BorderRadius.circular(2.0),
                                                                                                          ),
                                                                                                        ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation1']!),
                                                                                                      ),
                                                                                                      Padding(
                                                                                                        padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                                        child: SelectionArea(
                                                                                                            child: Text(
                                                                                                          '+ 0.985%',
                                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                                fontSize: 11.0,
                                                                                                                letterSpacing: 0.0,
                                                                                                                useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                                              ),
                                                                                                        )),
                                                                                                      ),
                                                                                                    ],
                                                                                                  ),
                                                                                                ],
                                                                                              ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                          Expanded(
                                                                            child:
                                                                                Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 0.0),
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.end,
                                                                                children: [
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
                                                                                    child: CircularPercentIndicator(
                                                                                      percent: 0.23,
                                                                                      radius: 50.0,
                                                                                      lineWidth: 12.0,
                                                                                      animation: true,
                                                                                      animateFromLastPercent: true,
                                                                                      progressColor: FlutterFlowTheme.of(context).alternate,
                                                                                      backgroundColor: FlutterFlowTheme.of(context).primary,
                                                                                      center: Text(
                                                                                        '95%',
                                                                                        style: FlutterFlowTheme.of(context).headlineMedium.override(
                                                                                              fontFamily: FlutterFlowTheme.of(context).headlineMediumFamily,
                                                                                              fontSize: 12.0,
                                                                                              letterSpacing: 0.0,
                                                                                              useGoogleFonts: !FlutterFlowTheme.of(context).headlineMediumIsCustom,
                                                                                            ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                  Text(
                                                                                    'Tree Canopy % coverage',
                                                                                    style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                          fontFamily: FlutterFlowTheme.of(context).bodySmallFamily,
                                                                                          fontSize: 12.0,
                                                                                          letterSpacing: 0.0,
                                                                                          useGoogleFonts: !FlutterFlowTheme.of(context).bodySmallIsCustom,
                                                                                        ),
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                                                                                    child: Column(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      crossAxisAlignment: CrossAxisAlignment.center,
                                                                                      children: [
                                                                                        Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          mainAxisAlignment: MainAxisAlignment.center,
                                                                                          children: [
                                                                                            SelectionArea(
                                                                                                child: Text(
                                                                                              'Monthly Change',
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                    color: FlutterFlowTheme.of(context).tertiary,
                                                                                                    fontSize: 12.0,
                                                                                                    letterSpacing: 0.0,
                                                                                                    fontWeight: FontWeight.normal,
                                                                                                    useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                                  ),
                                                                                            )),
                                                                                          ],
                                                                                        ),
                                                                                        Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                                                                                          child: Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                            children: [
                                                                                              Expanded(
                                                                                                child: Stack(
                                                                                                  children: [
                                                                                                    Row(
                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                                                                      children: [
                                                                                                        Padding(
                                                                                                          padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 4.0, 0.0),
                                                                                                          child: Container(
                                                                                                            width: 5.0,
                                                                                                            height: 16.0,
                                                                                                            decoration: BoxDecoration(
                                                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                              boxShadow: [
                                                                                                                BoxShadow(
                                                                                                                  blurRadius: 4.0,
                                                                                                                  color: Color(0xBADFFBFF),
                                                                                                                  offset: Offset(
                                                                                                                    0.0,
                                                                                                                    0.0,
                                                                                                                  ),
                                                                                                                )
                                                                                                              ],
                                                                                                              borderRadius: BorderRadius.circular(2.0),
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                        Padding(
                                                                                                          padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 4.0, 0.0),
                                                                                                          child: Container(
                                                                                                            width: 5.0,
                                                                                                            height: 16.0,
                                                                                                            decoration: BoxDecoration(
                                                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                              boxShadow: [
                                                                                                                BoxShadow(
                                                                                                                  blurRadius: 4.0,
                                                                                                                  color: Color(0xBADFFBFF),
                                                                                                                  offset: Offset(
                                                                                                                    0.0,
                                                                                                                    0.0,
                                                                                                                  ),
                                                                                                                )
                                                                                                              ],
                                                                                                              borderRadius: BorderRadius.circular(2.0),
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                        Padding(
                                                                                                          padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 4.0, 0.0),
                                                                                                          child: Container(
                                                                                                            width: 5.0,
                                                                                                            height: 16.0,
                                                                                                            decoration: BoxDecoration(
                                                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                              boxShadow: [
                                                                                                                BoxShadow(
                                                                                                                  blurRadius: 4.0,
                                                                                                                  color: Color(0xBADFFBFF),
                                                                                                                  offset: Offset(
                                                                                                                    0.0,
                                                                                                                    0.0,
                                                                                                                  ),
                                                                                                                )
                                                                                                              ],
                                                                                                              borderRadius: BorderRadius.circular(2.0),
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                        Padding(
                                                                                                          padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 4.0, 0.0),
                                                                                                          child: Container(
                                                                                                            width: 5.0,
                                                                                                            height: 16.0,
                                                                                                            decoration: BoxDecoration(
                                                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                              boxShadow: [
                                                                                                                BoxShadow(
                                                                                                                  blurRadius: 4.0,
                                                                                                                  color: Color(0xBADFFBFF),
                                                                                                                  offset: Offset(
                                                                                                                    0.0,
                                                                                                                    0.0,
                                                                                                                  ),
                                                                                                                )
                                                                                                              ],
                                                                                                              borderRadius: BorderRadius.circular(2.0),
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                        Padding(
                                                                                                          padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 4.0, 0.0),
                                                                                                          child: Container(
                                                                                                            width: 5.0,
                                                                                                            height: 16.0,
                                                                                                            decoration: BoxDecoration(
                                                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                                                              boxShadow: [
                                                                                                                BoxShadow(
                                                                                                                  blurRadius: 4.0,
                                                                                                                  color: Color(0xBADFFBFF),
                                                                                                                  offset: Offset(
                                                                                                                    0.0,
                                                                                                                    0.0,
                                                                                                                  ),
                                                                                                                )
                                                                                                              ],
                                                                                                              borderRadius: BorderRadius.circular(2.0),
                                                                                                            ),
                                                                                                          ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation2']!),
                                                                                                        ),
                                                                                                        Padding(
                                                                                                          padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                                          child: SelectionArea(
                                                                                                              child: Text(
                                                                                                            '+ 0.07%',
                                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                                  fontSize: 11.0,
                                                                                                                  letterSpacing: 0.0,
                                                                                                                  useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                                                ),
                                                                                                          )),
                                                                                                        ),
                                                                                                      ],
                                                                                                    ),
                                                                                                  ],
                                                                                                ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          Expanded(
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.end,
                                                                              children: [
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
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
                                                                                      List<TotalTreesPerSpeciesRecord> progressBarTotalTreesPerSpeciesRecordList = snapshot.data!;

                                                                                      return CircularPercentIndicator(
                                                                                        percent: 0.23,
                                                                                        radius: 50.0,
                                                                                        lineWidth: 12.0,
                                                                                        animation: true,
                                                                                        animateFromLastPercent: true,
                                                                                        progressColor: FlutterFlowTheme.of(context).alternate,
                                                                                        backgroundColor: Color(0xFFCEA367),
                                                                                        center: Text(
                                                                                          valueOrDefault<String>(
                                                                                            '${formatNumber(
                                                                                              valueOrDefault<double>(
                                                                                                    functions.sumAllLists(progressBarTotalTreesPerSpeciesRecordList.map((e) => e.totalCarbonSequestred).toList()),
                                                                                                    0.0,
                                                                                                  ) /
                                                                                                  1,
                                                                                              formatType: FormatType.compact,
                                                                                            )} Tons',
                                                                                            '1.69 Tons',
                                                                                          ),
                                                                                          style: FlutterFlowTheme.of(context).headlineMedium.override(
                                                                                                fontFamily: FlutterFlowTheme.of(context).headlineMediumFamily,
                                                                                                fontSize: 12.0,
                                                                                                letterSpacing: 0.0,
                                                                                                useGoogleFonts: !FlutterFlowTheme.of(context).headlineMediumIsCustom,
                                                                                              ),
                                                                                        ),
                                                                                      );
                                                                                    },
                                                                                  ),
                                                                                ),
                                                                                Text(
                                                                                  'Carbon Absorbed',
                                                                                  style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                        fontFamily: FlutterFlowTheme.of(context).bodySmallFamily,
                                                                                        fontSize: 12.0,
                                                                                        letterSpacing: 0.0,
                                                                                        useGoogleFonts: !FlutterFlowTheme.of(context).bodySmallIsCustom,
                                                                                      ),
                                                                                ),
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                                                                                  child: Column(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                                                        children: [
                                                                                          SelectionArea(
                                                                                              child: Text(
                                                                                            'Monthly Change',
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                  color: FlutterFlowTheme.of(context).secondary,
                                                                                                  fontSize: 12.0,
                                                                                                  letterSpacing: 0.0,
                                                                                                  fontWeight: FontWeight.normal,
                                                                                                  useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                                ),
                                                                                          )),
                                                                                        ],
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                                                                                        child: Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                          children: [
                                                                                            Expanded(
                                                                                              child: Stack(
                                                                                                children: [
                                                                                                  Row(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    children: [
                                                                                                      Padding(
                                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 4.0, 0.0),
                                                                                                        child: Container(
                                                                                                          width: 5.0,
                                                                                                          height: 16.0,
                                                                                                          decoration: BoxDecoration(
                                                                                                            borderRadius: BorderRadius.circular(2.0),
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                      Padding(
                                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 4.0, 0.0),
                                                                                                        child: Container(
                                                                                                          width: 5.0,
                                                                                                          height: 16.0,
                                                                                                          decoration: BoxDecoration(
                                                                                                            borderRadius: BorderRadius.circular(2.0),
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                      Padding(
                                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 4.0, 0.0),
                                                                                                        child: Container(
                                                                                                          width: 5.0,
                                                                                                          height: 16.0,
                                                                                                          decoration: BoxDecoration(
                                                                                                            borderRadius: BorderRadius.circular(2.0),
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                      Padding(
                                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 4.0, 0.0),
                                                                                                        child: Container(
                                                                                                          width: 5.0,
                                                                                                          height: 16.0,
                                                                                                          decoration: BoxDecoration(
                                                                                                            borderRadius: BorderRadius.circular(2.0),
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                      Padding(
                                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 4.0, 0.0),
                                                                                                        child: Container(
                                                                                                          width: 5.0,
                                                                                                          height: 16.0,
                                                                                                          decoration: BoxDecoration(
                                                                                                            borderRadius: BorderRadius.circular(2.0),
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    ],
                                                                                                  ),
                                                                                                  Row(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                                    children: [
                                                                                                      Padding(
                                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 4.0, 0.0),
                                                                                                        child: Container(
                                                                                                          width: 5.0,
                                                                                                          height: 16.0,
                                                                                                          decoration: BoxDecoration(
                                                                                                            color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                            boxShadow: [
                                                                                                              BoxShadow(
                                                                                                                blurRadius: 4.0,
                                                                                                                color: Color(0xBADFFBFF),
                                                                                                                offset: Offset(
                                                                                                                  0.0,
                                                                                                                  0.0,
                                                                                                                ),
                                                                                                              )
                                                                                                            ],
                                                                                                            borderRadius: BorderRadius.circular(2.0),
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                      Padding(
                                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 4.0, 0.0),
                                                                                                        child: Container(
                                                                                                          width: 5.0,
                                                                                                          height: 16.0,
                                                                                                          decoration: BoxDecoration(
                                                                                                            color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                            boxShadow: [
                                                                                                              BoxShadow(
                                                                                                                blurRadius: 4.0,
                                                                                                                color: Color(0xBADFFBFF),
                                                                                                                offset: Offset(
                                                                                                                  0.0,
                                                                                                                  0.0,
                                                                                                                ),
                                                                                                              )
                                                                                                            ],
                                                                                                            borderRadius: BorderRadius.circular(2.0),
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                      Padding(
                                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 4.0, 0.0),
                                                                                                        child: Container(
                                                                                                          width: 5.0,
                                                                                                          height: 16.0,
                                                                                                          decoration: BoxDecoration(
                                                                                                            color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                            boxShadow: [
                                                                                                              BoxShadow(
                                                                                                                blurRadius: 4.0,
                                                                                                                color: Color(0xBADFFBFF),
                                                                                                                offset: Offset(
                                                                                                                  0.0,
                                                                                                                  0.0,
                                                                                                                ),
                                                                                                              )
                                                                                                            ],
                                                                                                            borderRadius: BorderRadius.circular(2.0),
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                      Padding(
                                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 4.0, 0.0),
                                                                                                        child: Container(
                                                                                                          width: 5.0,
                                                                                                          height: 16.0,
                                                                                                          decoration: BoxDecoration(
                                                                                                            color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                            boxShadow: [
                                                                                                              BoxShadow(
                                                                                                                blurRadius: 4.0,
                                                                                                                color: Color(0xBADFFBFF),
                                                                                                                offset: Offset(
                                                                                                                  0.0,
                                                                                                                  0.0,
                                                                                                                ),
                                                                                                              )
                                                                                                            ],
                                                                                                            borderRadius: BorderRadius.circular(2.0),
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                      Padding(
                                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 4.0, 0.0),
                                                                                                        child: Container(
                                                                                                          width: 5.0,
                                                                                                          height: 16.0,
                                                                                                          decoration: BoxDecoration(
                                                                                                            color: FlutterFlowTheme.of(context).primary,
                                                                                                            boxShadow: [
                                                                                                              BoxShadow(
                                                                                                                blurRadius: 4.0,
                                                                                                                color: Color(0xBADFFBFF),
                                                                                                                offset: Offset(
                                                                                                                  0.0,
                                                                                                                  0.0,
                                                                                                                ),
                                                                                                              )
                                                                                                            ],
                                                                                                            borderRadius: BorderRadius.circular(2.0),
                                                                                                          ),
                                                                                                        ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation3']!),
                                                                                                      ),
                                                                                                      Padding(
                                                                                                        padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                                        child: SelectionArea(
                                                                                                            child: Text(
                                                                                                          '2.5%',
                                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                                fontSize: 11.0,
                                                                                                                letterSpacing: 0.0,
                                                                                                                useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                                              ),
                                                                                                        )),
                                                                                                      ),
                                                                                                    ],
                                                                                                  ),
                                                                                                ],
                                                                                              ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        if (responsiveVisibility(
                                                          context: context,
                                                          tablet: false,
                                                          tabletLandscape:
                                                              false,
                                                          desktop: false,
                                                        ))
                                                          Expanded(
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8.0,
                                                                          4.0,
                                                                          4.0,
                                                                          4.0),
                                                              child:
                                                                  SingleChildScrollView(
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .end,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Wrap(
                                                                      spacing:
                                                                          10.0,
                                                                      runSpacing:
                                                                          10.0,
                                                                      alignment:
                                                                          WrapAlignment
                                                                              .start,
                                                                      crossAxisAlignment:
                                                                          WrapCrossAlignment
                                                                              .start,
                                                                      direction:
                                                                          Axis.horizontal,
                                                                      runAlignment:
                                                                          WrapAlignment
                                                                              .start,
                                                                      verticalDirection:
                                                                          VerticalDirection
                                                                              .down,
                                                                      clipBehavior:
                                                                          Clip.none,
                                                                      children: [
                                                                        StreamBuilder<
                                                                            List<AllTreesDeliveredRecord>>(
                                                                          stream:
                                                                              queryAllTreesDeliveredRecord(
                                                                            queryBuilder: (allTreesDeliveredRecord) =>
                                                                                allTreesDeliveredRecord.where(
                                                                              'PlanterCompany',
                                                                              isEqualTo: 'UNIAH Ventures Limited',
                                                                            ),
                                                                          ),
                                                                          builder:
                                                                              (context, snapshot) {
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
                                                                                cardTotalUsersAllTreesDeliveredRecordList =
                                                                                snapshot.data!;

                                                                            return InkWell(
                                                                              splashColor: Colors.transparent,
                                                                              focusColor: Colors.transparent,
                                                                              hoverColor: Colors.transparent,
                                                                              highlightColor: Colors.transparent,
                                                                              onTap: () async {
                                                                                context.pushNamed(AllTreesDTBWidget.routeName);
                                                                              },
                                                                              child: Container(
                                                                                width: 170.0,
                                                                                height: 180.0,
                                                                                decoration: BoxDecoration(
                                                                                  color: Color(0xFFCEA367),
                                                                                  borderRadius: BorderRadius.circular(16.0),
                                                                                  border: Border.all(
                                                                                    width: 1.0,
                                                                                  ),
                                                                                ),
                                                                                alignment: AlignmentDirectional(0.0, -1.0),
                                                                                child: Padding(
                                                                                  padding: EdgeInsets.all(16.0),
                                                                                  child: SingleChildScrollView(
                                                                                    child: Column(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                                                      children: [
                                                                                        Text(
                                                                                          'Total Trees',
                                                                                          textAlign: TextAlign.start,
                                                                                          style: FlutterFlowTheme.of(context).headlineSmall.override(
                                                                                                fontFamily: FlutterFlowTheme.of(context).headlineSmallFamily,
                                                                                                letterSpacing: 0.0,
                                                                                                useGoogleFonts: !FlutterFlowTheme.of(context).headlineSmallIsCustom,
                                                                                              ),
                                                                                        ),
                                                                                        Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
                                                                                          child: Text(
                                                                                            'All trees',
                                                                                            textAlign: TextAlign.start,
                                                                                            style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                                  fontFamily: FlutterFlowTheme.of(context).bodySmallFamily,
                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                  letterSpacing: 0.0,
                                                                                                  useGoogleFonts: !FlutterFlowTheme.of(context).bodySmallIsCustom,
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                        Container(
                                                                                          width: MediaQuery.sizeOf(context).width * 0.4,
                                                                                          decoration: BoxDecoration(
                                                                                            color: Color(0xFFCEA367),
                                                                                            borderRadius: BorderRadius.circular(24.0),
                                                                                          ),
                                                                                          child: Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            children: [
                                                                                              FaIcon(
                                                                                                FontAwesomeIcons.tree,
                                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                size: 44.0,
                                                                                              ),
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(6.0, 0.0, 0.0, 0.0),
                                                                                                child: Text(
                                                                                                  valueOrDefault<String>(
                                                                                                    functions.sumAllLists(cardTotalUsersAllTreesDeliveredRecordList.map((e) => e.numberOfTreesDelivered).toList())?.toString(),
                                                                                                    '0',
                                                                                                  ),
                                                                                                  textAlign: TextAlign.center,
                                                                                                  style: FlutterFlowTheme.of(context).displaySmall.override(
                                                                                                        fontFamily: FlutterFlowTheme.of(context).displaySmallFamily,
                                                                                                        fontSize: 24.0,
                                                                                                        letterSpacing: 0.0,
                                                                                                        useGoogleFonts: !FlutterFlowTheme.of(context).displaySmallIsCustom,
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                        ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation4']!),
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            );
                                                                          },
                                                                        ),
                                                                        StreamBuilder<
                                                                            List<TotalTreesPerSpeciesRecord>>(
                                                                          stream:
                                                                              queryTotalTreesPerSpeciesRecord(),
                                                                          builder:
                                                                              (context, snapshot) {
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
                                                                                cardTotalUsersTotalTreesPerSpeciesRecordList =
                                                                                snapshot.data!;

                                                                            return InkWell(
                                                                              splashColor: Colors.transparent,
                                                                              focusColor: Colors.transparent,
                                                                              hoverColor: Colors.transparent,
                                                                              highlightColor: Colors.transparent,
                                                                              onTap: () async {
                                                                                context.pushNamed(AllInsitutionsWidget.routeName);
                                                                              },
                                                                              child: Container(
                                                                                width: 170.0,
                                                                                height: 180.0,
                                                                                decoration: BoxDecoration(
                                                                                  color: Color(0xFFCEA367),
                                                                                  borderRadius: BorderRadius.circular(16.0),
                                                                                  border: Border.all(
                                                                                    width: 1.0,
                                                                                  ),
                                                                                ),
                                                                                alignment: AlignmentDirectional(0.0, -1.0),
                                                                                child: Padding(
                                                                                  padding: EdgeInsets.all(16.0),
                                                                                  child: SingleChildScrollView(
                                                                                    child: Column(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                                                      children: [
                                                                                        Text(
                                                                                          'Insitutions',
                                                                                          textAlign: TextAlign.start,
                                                                                          style: FlutterFlowTheme.of(context).headlineSmall.override(
                                                                                                fontFamily: FlutterFlowTheme.of(context).headlineSmallFamily,
                                                                                                letterSpacing: 0.0,
                                                                                                useGoogleFonts: !FlutterFlowTheme.of(context).headlineSmallIsCustom,
                                                                                              ),
                                                                                        ),
                                                                                        Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
                                                                                          child: Text(
                                                                                            'An overview of  planting fields. ',
                                                                                            textAlign: TextAlign.start,
                                                                                            style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                                  fontFamily: FlutterFlowTheme.of(context).bodySmallFamily,
                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                  letterSpacing: 0.0,
                                                                                                  useGoogleFonts: !FlutterFlowTheme.of(context).bodySmallIsCustom,
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                        Container(
                                                                                          width: MediaQuery.sizeOf(context).width * 0.4,
                                                                                          decoration: BoxDecoration(
                                                                                            color: Color(0xFFCEA367),
                                                                                            borderRadius: BorderRadius.circular(24.0),
                                                                                          ),
                                                                                          child: Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            children: [
                                                                                              Icon(
                                                                                                Icons.landscape_sharp,
                                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                size: 44.0,
                                                                                              ),
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                                child: Text(
                                                                                                  '580',
                                                                                                  textAlign: TextAlign.center,
                                                                                                  style: FlutterFlowTheme.of(context).displaySmall.override(
                                                                                                        fontFamily: FlutterFlowTheme.of(context).displaySmallFamily,
                                                                                                        fontSize: 24.0,
                                                                                                        letterSpacing: 0.0,
                                                                                                        useGoogleFonts: !FlutterFlowTheme.of(context).displaySmallIsCustom,
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                        ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation5']!),
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            );
                                                                          },
                                                                        ),
                                                                        StreamBuilder<
                                                                            List<TotalTreesPerSpeciesRecord>>(
                                                                          stream:
                                                                              queryTotalTreesPerSpeciesRecord(),
                                                                          builder:
                                                                              (context, snapshot) {
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
                                                                                cardTotalUsersTotalTreesPerSpeciesRecordList =
                                                                                snapshot.data!;

                                                                            return InkWell(
                                                                              splashColor: Colors.transparent,
                                                                              focusColor: Colors.transparent,
                                                                              hoverColor: Colors.transparent,
                                                                              highlightColor: Colors.transparent,
                                                                              onTap: () async {
                                                                                context.pushNamed(CarbonSequestrationPageWidget.routeName);
                                                                              },
                                                                              child: Container(
                                                                                width: 170.0,
                                                                                height: 180.0,
                                                                                decoration: BoxDecoration(
                                                                                  color: Color(0xFFCEA367),
                                                                                  borderRadius: BorderRadius.circular(16.0),
                                                                                  border: Border.all(
                                                                                    width: 1.0,
                                                                                  ),
                                                                                ),
                                                                                alignment: AlignmentDirectional(0.0, -1.0),
                                                                                child: Padding(
                                                                                  padding: EdgeInsets.all(16.0),
                                                                                  child: SingleChildScrollView(
                                                                                    child: Column(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                                                      children: [
                                                                                        Text(
                                                                                          'Species planted',
                                                                                          textAlign: TextAlign.start,
                                                                                          style: FlutterFlowTheme.of(context).headlineSmall.override(
                                                                                                fontFamily: FlutterFlowTheme.of(context).headlineSmallFamily,
                                                                                                letterSpacing: 0.0,
                                                                                                useGoogleFonts: !FlutterFlowTheme.of(context).headlineSmallIsCustom,
                                                                                              ),
                                                                                        ),
                                                                                        Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
                                                                                          child: Text(
                                                                                            'An overview of  all tree species',
                                                                                            textAlign: TextAlign.start,
                                                                                            style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                                  fontFamily: FlutterFlowTheme.of(context).bodySmallFamily,
                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                  letterSpacing: 0.0,
                                                                                                  useGoogleFonts: !FlutterFlowTheme.of(context).bodySmallIsCustom,
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                        Container(
                                                                                          width: MediaQuery.sizeOf(context).width * 0.4,
                                                                                          decoration: BoxDecoration(
                                                                                            color: Color(0xFFCEA367),
                                                                                            borderRadius: BorderRadius.circular(24.0),
                                                                                          ),
                                                                                          child: Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            children: [
                                                                                              FaIcon(
                                                                                                FontAwesomeIcons.seedling,
                                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                size: 44.0,
                                                                                              ),
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                                                                                                child: Text(
                                                                                                  '2',
                                                                                                  textAlign: TextAlign.center,
                                                                                                  style: FlutterFlowTheme.of(context).displaySmall.override(
                                                                                                        fontFamily: FlutterFlowTheme.of(context).displaySmallFamily,
                                                                                                        fontSize: 24.0,
                                                                                                        letterSpacing: 0.0,
                                                                                                        useGoogleFonts: !FlutterFlowTheme.of(context).displaySmallIsCustom,
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                        ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation6']!),
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            );
                                                                          },
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Align(
                                                                      alignment:
                                                                          AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                      child:
                                                                          Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            10.0,
                                                                            0.0,
                                                                            5.0),
                                                                        child:
                                                                            Container(
                                                                          width:
                                                                              double.infinity,
                                                                          constraints:
                                                                              BoxConstraints(
                                                                            maxWidth:
                                                                                570.0,
                                                                          ),
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryBackground,
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                            border:
                                                                                Border.all(
                                                                              color: Color(0xFFE0E3E7),
                                                                            ),
                                                                          ),
                                                                          child:
                                                                              Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                10.0,
                                                                                10.0,
                                                                                10.0,
                                                                                10.0),
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    Icon(
                                                                                      Icons.library_add_check_rounded,
                                                                                      color: FlutterFlowTheme.of(context).primary,
                                                                                      size: 24.0,
                                                                                    ),
                                                                                    Expanded(
                                                                                      child: Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
                                                                                        child: Text(
                                                                                          'Tree plantintingPhases',
                                                                                          style: FlutterFlowTheme.of(context).headlineSmall.override(
                                                                                                fontFamily: FlutterFlowTheme.of(context).headlineSmallFamily,
                                                                                                fontSize: 16.0,
                                                                                                letterSpacing: 0.0,
                                                                                                useGoogleFonts: !FlutterFlowTheme.of(context).headlineSmallIsCustom,
                                                                                              ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                                                                                  child: ListView(
                                                                                    padding: EdgeInsets.zero,
                                                                                    shrinkWrap: true,
                                                                                    scrollDirection: Axis.vertical,
                                                                                    children: [
                                                                                      Container(
                                                                                        width: 100.0,
                                                                                        decoration: BoxDecoration(
                                                                                          color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                        ),
                                                                                        child: Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 8.0),
                                                                                          child: Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                                                            children: [
                                                                                              Expanded(
                                                                                                child: Column(
                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                  children: [
                                                                                                    Padding(
                                                                                                      padding: EdgeInsetsDirectional.fromSTEB(12.0, 8.0, 0.0, 0.0),
                                                                                                      child: Text(
                                                                                                        'Below is the distribution cycle of the tree planting phases',
                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                              fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                              letterSpacing: 0.0,
                                                                                                              fontWeight: FontWeight.w500,
                                                                                                              useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                                            ),
                                                                                                      ),
                                                                                                    ),
                                                                                                    Padding(
                                                                                                      padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 16.0, 0.0),
                                                                                                      child: Wrap(
                                                                                                        spacing: 10.0,
                                                                                                        runSpacing: 10.0,
                                                                                                        alignment: WrapAlignment.start,
                                                                                                        crossAxisAlignment: WrapCrossAlignment.start,
                                                                                                        direction: Axis.vertical,
                                                                                                        runAlignment: WrapAlignment.start,
                                                                                                        verticalDirection: VerticalDirection.down,
                                                                                                        clipBehavior: Clip.none,
                                                                                                        children: [
                                                                                                          Padding(
                                                                                                            padding: EdgeInsetsDirectional.fromSTEB(12.0, 8.0, 0.0, 0.0),
                                                                                                            child: Text(
                                                                                                              'Phase 1',
                                                                                                              style: FlutterFlowTheme.of(context).labelSmall.override(
                                                                                                                    fontFamily: FlutterFlowTheme.of(context).labelSmallFamily,
                                                                                                                    letterSpacing: 0.0,
                                                                                                                    useGoogleFonts: !FlutterFlowTheme.of(context).labelSmallIsCustom,
                                                                                                                  ),
                                                                                                            ),
                                                                                                          ),
                                                                                                          Padding(
                                                                                                            padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                                                                                                            child: Container(
                                                                                                              width: 130.0,
                                                                                                              height: 35.0,
                                                                                                              decoration: BoxDecoration(
                                                                                                                color: FlutterFlowTheme.of(context).accent1,
                                                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                                                                border: Border.all(
                                                                                                                  color: FlutterFlowTheme.of(context).primary,
                                                                                                                  width: 1.0,
                                                                                                                ),
                                                                                                              ),
                                                                                                              alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                              child: Padding(
                                                                                                                padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                                                                                                                child: Text(
                                                                                                                  '30 June – 4 July 2025 (5 days)',
                                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                                        letterSpacing: 0.0,
                                                                                                                        useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                                                      ),
                                                                                                                ),
                                                                                                              ),
                                                                                                            ),
                                                                                                          ),
                                                                                                          Column(
                                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                            children: [
                                                                                                              Padding(
                                                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                                                                                                                child: Container(
                                                                                                                  width: 130.0,
                                                                                                                  height: 35.0,
                                                                                                                  decoration: BoxDecoration(
                                                                                                                    color: Color(0xFFCEA367),
                                                                                                                    borderRadius: BorderRadius.circular(8.0),
                                                                                                                    border: Border.all(
                                                                                                                      color: FlutterFlowTheme.of(context).tertiary,
                                                                                                                      width: 1.0,
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                  alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                                  child: Padding(
                                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                                                                                                                    child: Text(
                                                                                                                      '\t53.25 acres Covered',
                                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                            fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                                            letterSpacing: 0.0,
                                                                                                                            useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                                                          ),
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                ),
                                                                                                              ),
                                                                                                            ],
                                                                                                          ),
                                                                                                          Column(
                                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                            children: [
                                                                                                              Padding(
                                                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                                                                                                                child: Container(
                                                                                                                  width: 130.0,
                                                                                                                  height: 28.0,
                                                                                                                  decoration: BoxDecoration(
                                                                                                                    color: FlutterFlowTheme.of(context).accent2,
                                                                                                                    borderRadius: BorderRadius.circular(8.0),
                                                                                                                    border: Border.all(
                                                                                                                      color: FlutterFlowTheme.of(context).secondary,
                                                                                                                      width: 1.0,
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                  alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                                  child: Padding(
                                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                                                                                                                    child: Text(
                                                                                                                      '2 Species',
                                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                            fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                                            letterSpacing: 0.0,
                                                                                                                            useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                                                          ),
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                ),
                                                                                                              ),
                                                                                                            ],
                                                                                                          ),
                                                                                                        ],
                                                                                                      ),
                                                                                                    ),
                                                                                                    Padding(
                                                                                                      padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 16.0, 0.0),
                                                                                                      child: Wrap(
                                                                                                        spacing: 10.0,
                                                                                                        runSpacing: 10.0,
                                                                                                        alignment: WrapAlignment.start,
                                                                                                        crossAxisAlignment: WrapCrossAlignment.start,
                                                                                                        direction: Axis.vertical,
                                                                                                        runAlignment: WrapAlignment.start,
                                                                                                        verticalDirection: VerticalDirection.down,
                                                                                                        clipBehavior: Clip.none,
                                                                                                        children: [
                                                                                                          Padding(
                                                                                                            padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                                                                                                            child: Container(
                                                                                                              width: 130.0,
                                                                                                              height: 35.0,
                                                                                                              decoration: BoxDecoration(
                                                                                                                color: FlutterFlowTheme.of(context).accent1,
                                                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                                                                border: Border.all(
                                                                                                                  color: FlutterFlowTheme.of(context).primary,
                                                                                                                  width: 1.0,
                                                                                                                ),
                                                                                                              ),
                                                                                                              alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                              child: Padding(
                                                                                                                padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 0.0),
                                                                                                                child: Text(
                                                                                                                  '1369 community participants',
                                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                                        letterSpacing: 0.0,
                                                                                                                        useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                                                      ),
                                                                                                                ),
                                                                                                              ),
                                                                                                            ),
                                                                                                          ),
                                                                                                          Column(
                                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                            children: [
                                                                                                              Padding(
                                                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                                                                                                                child: Container(
                                                                                                                  width: 130.0,
                                                                                                                  height: 35.0,
                                                                                                                  decoration: BoxDecoration(
                                                                                                                    color: Color(0xFFCEA367),
                                                                                                                    borderRadius: BorderRadius.circular(8.0),
                                                                                                                    border: Border.all(
                                                                                                                      color: FlutterFlowTheme.of(context).tertiary,
                                                                                                                      width: 1.0,
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                  alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                                  child: Padding(
                                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 0.0),
                                                                                                                    child: Text(
                                                                                                                      'Focused: mangrove types',
                                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                            fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                                            letterSpacing: 0.0,
                                                                                                                            useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                                                          ),
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                ),
                                                                                                              ),
                                                                                                            ],
                                                                                                          ),
                                                                                                          Column(
                                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                            children: [
                                                                                                              Padding(
                                                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                                                                                                                child: Container(
                                                                                                                  width: 130.0,
                                                                                                                  height: 35.0,
                                                                                                                  decoration: BoxDecoration(
                                                                                                                    color: FlutterFlowTheme.of(context).accent2,
                                                                                                                    borderRadius: BorderRadius.circular(8.0),
                                                                                                                    border: Border.all(
                                                                                                                      color: FlutterFlowTheme.of(context).secondary,
                                                                                                                      width: 1.0,
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                  alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                                  child: Padding(
                                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 0.0),
                                                                                                                    child: Text(
                                                                                                                      'Lat -2.9730, Long40.1225',
                                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                            fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                                            letterSpacing: 0.0,
                                                                                                                            useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                                                          ),
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                ),
                                                                                                              ),
                                                                                                            ],
                                                                                                          ),
                                                                                                        ],
                                                                                                      ),
                                                                                                    ),
                                                                                                    Padding(
                                                                                                      padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 16.0, 0.0),
                                                                                                      child: Wrap(
                                                                                                        spacing: 10.0,
                                                                                                        runSpacing: 10.0,
                                                                                                        alignment: WrapAlignment.start,
                                                                                                        crossAxisAlignment: WrapCrossAlignment.start,
                                                                                                        direction: Axis.vertical,
                                                                                                        runAlignment: WrapAlignment.start,
                                                                                                        verticalDirection: VerticalDirection.down,
                                                                                                        clipBehavior: Clip.none,
                                                                                                        children: [
                                                                                                          Padding(
                                                                                                            padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                                                                                                            child: Container(
                                                                                                              width: 130.0,
                                                                                                              height: 35.0,
                                                                                                              decoration: BoxDecoration(
                                                                                                                color: FlutterFlowTheme.of(context).accent1,
                                                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                                                                border: Border.all(
                                                                                                                  color: FlutterFlowTheme.of(context).primary,
                                                                                                                  width: 1.0,
                                                                                                                ),
                                                                                                              ),
                                                                                                              alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                              child: Padding(
                                                                                                                padding: EdgeInsetsDirectional.fromSTEB(1.0, 0.0, 0.0, 0.0),
                                                                                                                child: Text(
                                                                                                                  'Terrain\tEstuarine, intertidal,degraded patches, tidal zones',
                                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                                        letterSpacing: 0.0,
                                                                                                                        useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                                                      ),
                                                                                                                ),
                                                                                                              ),
                                                                                                            ),
                                                                                                          ),
                                                                                                          Column(
                                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                            children: [
                                                                                                              Padding(
                                                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                                                                                                                child: Container(
                                                                                                                  width: 130.0,
                                                                                                                  height: 35.0,
                                                                                                                  decoration: BoxDecoration(
                                                                                                                    color: Color(0xFFCEA367),
                                                                                                                    borderRadius: BorderRadius.circular(8.0),
                                                                                                                    border: Border.all(
                                                                                                                      color: FlutterFlowTheme.of(context).tertiary,
                                                                                                                      width: 1.0,
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                  alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                                  child: Padding(
                                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 0.0),
                                                                                                                    child: Text(
                                                                                                                      'Spacing: 1m x 1m',
                                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                            fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                                            letterSpacing: 0.0,
                                                                                                                            useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                                                          ),
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                ),
                                                                                                              ),
                                                                                                            ],
                                                                                                          ),
                                                                                                          Column(
                                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                            children: [
                                                                                                              Padding(
                                                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                                                                                                                child: Container(
                                                                                                                  width: 130.0,
                                                                                                                  height: 35.0,
                                                                                                                  decoration: BoxDecoration(
                                                                                                                    color: FlutterFlowTheme.of(context).accent2,
                                                                                                                    borderRadius: BorderRadius.circular(8.0),
                                                                                                                    border: Border.all(
                                                                                                                      color: FlutterFlowTheme.of(context).secondary,
                                                                                                                      width: 1.0,
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                  alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                                  child: Text(
                                                                                                                    'Wards\tSabaki, Gongoni,Marereni',
                                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                                          letterSpacing: 0.0,
                                                                                                                          useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                                                        ),
                                                                                                                  ),
                                                                                                                ),
                                                                                                              ),
                                                                                                            ],
                                                                                                          ),
                                                                                                        ],
                                                                                                      ),
                                                                                                    ),
                                                                                                  ],
                                                                                                ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Container(
                                                                                        width: 100.0,
                                                                                        decoration: BoxDecoration(
                                                                                          color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                        ),
                                                                                      ),
                                                                                      Container(
                                                                                        width: 100.0,
                                                                                        decoration: BoxDecoration(
                                                                                          color: FlutterFlowTheme.of(context).secondaryBackground,
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
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      20.0,
                                                                      0.0,
                                                                      0.0),
                                                          child:
                                                              SingleChildScrollView(
                                                            scrollDirection:
                                                                Axis.horizontal,
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          3.0,
                                                                          0.0,
                                                                          0.0,
                                                                          30.0),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            16.0),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.spaceBetween,
                                                                          children: [
                                                                            Text(
                                                                              'Top carbon sequesters',
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                    fontSize: 16.0,
                                                                                    letterSpacing: 0.0,
                                                                                    fontWeight: FontWeight.w500,
                                                                                    useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                  ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            16.0,
                                                                            16.0,
                                                                            16.0,
                                                                            16.0),
                                                                        child:
                                                                            Stack(
                                                                          alignment: AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                          children: [
                                                                            Container(
                                                                              width: 125.0,
                                                                              height: 125.0,
                                                                              decoration: BoxDecoration(),
                                                                              child: CircularPercentIndicator(
                                                                                percent: 0.3,
                                                                                radius: 55.0,
                                                                                lineWidth: 8.0,
                                                                                animation: true,
                                                                                animateFromLastPercent: true,
                                                                                progressColor: Color(0xFFCE8508),
                                                                                backgroundColor: FlutterFlowTheme.of(context).accent4,
                                                                              ),
                                                                            ),
                                                                            Container(
                                                                              width: 100.0,
                                                                              height: 100.0,
                                                                              decoration: BoxDecoration(),
                                                                              child: CircularPercentIndicator(
                                                                                percent: 0.6,
                                                                                radius: 43.0,
                                                                                lineWidth: 8.0,
                                                                                animation: true,
                                                                                animateFromLastPercent: true,
                                                                                progressColor: Color(0xFFCF3030),
                                                                                backgroundColor: FlutterFlowTheme.of(context).accent4,
                                                                                center: Text(
                                                                                  valueOrDefault<String>(
                                                                                    formatNumber(
                                                                                      valueOrDefault<double>(
                                                                                            functions.sumAllLists(uniahdashboardDistributionPerCountyRecordList.map((e) => e.totalTrees).toList()),
                                                                                            0.0,
                                                                                          ) +
                                                                                          0,
                                                                                      formatType: FormatType.compact,
                                                                                    ),
                                                                                    '537K',
                                                                                  ),
                                                                                  style: FlutterFlowTheme.of(context).headlineSmall.override(
                                                                                        fontFamily: FlutterFlowTheme.of(context).headlineSmallFamily,
                                                                                        fontSize: 20.0,
                                                                                        letterSpacing: 0.0,
                                                                                        useGoogleFonts: !FlutterFlowTheme.of(context).headlineSmallIsCustom,
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children: [
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                16.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                              children: [
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    Container(
                                                                                      width: 16.0,
                                                                                      height: 16.0,
                                                                                      decoration: BoxDecoration(
                                                                                        color: Color(0xFFFE111F),
                                                                                        shape: BoxShape.circle,
                                                                                      ),
                                                                                    ),
                                                                                    Text(
                                                                                      'CERIOPS TANGAL',
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                            letterSpacing: 0.0,
                                                                                            useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                          ),
                                                                                    ),
                                                                                    Text(
                                                                                      '55%',
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                            letterSpacing: 0.0,
                                                                                            useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                          ),
                                                                                    ),
                                                                                  ].divide(SizedBox(width: 8.0)),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                16.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                              children: [
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    Container(
                                                                                      width: 16.0,
                                                                                      height: 16.0,
                                                                                      decoration: BoxDecoration(
                                                                                        color: Color(0xFFCE8508),
                                                                                        shape: BoxShape.circle,
                                                                                      ),
                                                                                    ),
                                                                                    Text(
                                                                                      'Rhizophora mucronata',
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                            letterSpacing: 0.0,
                                                                                            useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                          ),
                                                                                    ),
                                                                                  ].divide(SizedBox(width: 8.0)),
                                                                                ),
                                                                                Text(
                                                                                  '45%',
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                        letterSpacing: 0.0,
                                                                                        useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                      ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          3.0,
                                                                          0.0,
                                                                          16.0,
                                                                          0.0),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            16.0),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.spaceBetween,
                                                                          children: [
                                                                            Text(
                                                                              'Trees height Distribution.',
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                    fontSize: 16.0,
                                                                                    letterSpacing: 0.0,
                                                                                    fontWeight: FontWeight.w500,
                                                                                    useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                  ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            16.0,
                                                                            16.0,
                                                                            16.0,
                                                                            16.0),
                                                                        child:
                                                                            Stack(
                                                                          alignment: AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                          children: [
                                                                            Container(
                                                                              width: 150.0,
                                                                              height: 150.0,
                                                                              decoration: BoxDecoration(),
                                                                              child: Container(
                                                                                height: 230.0,
                                                                                child: FlutterFlowPieChart(
                                                                                  data: FFPieChartData(
                                                                                    values: FFAppState().piValues,
                                                                                    colors: chartPieChartColorsList,
                                                                                    radius: [60.0],
                                                                                  ),
                                                                                  donutHoleRadius: 0.0,
                                                                                  donutHoleColor: Colors.transparent,
                                                                                  sectionLabelStyle: FlutterFlowTheme.of(context).headlineSmall.override(
                                                                                        fontFamily: FlutterFlowTheme.of(context).headlineSmallFamily,
                                                                                        letterSpacing: 0.0,
                                                                                        useGoogleFonts: !FlutterFlowTheme.of(context).headlineSmallIsCustom,
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            16.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.spaceBetween,
                                                                          children: [
                                                                            Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Container(
                                                                                  width: 16.0,
                                                                                  height: 16.0,
                                                                                  decoration: BoxDecoration(
                                                                                    color: Color(0xFF0D77D3),
                                                                                    shape: BoxShape.circle,
                                                                                  ),
                                                                                ),
                                                                                Text(
                                                                                  '40 -45 CM',
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                        letterSpacing: 0.0,
                                                                                        useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                      ),
                                                                                ),
                                                                              ].divide(SizedBox(width: 8.0)),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            16.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.spaceBetween,
                                                                          children: [
                                                                            Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Container(
                                                                                  width: 16.0,
                                                                                  height: 16.0,
                                                                                  decoration: BoxDecoration(
                                                                                    color: Color(0xFFF82734),
                                                                                    shape: BoxShape.circle,
                                                                                  ),
                                                                                ),
                                                                                Text(
                                                                                  '40 -0 45 CM',
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                        letterSpacing: 0.0,
                                                                                        useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                      ),
                                                                                ),
                                                                              ].divide(SizedBox(width: 8.0)),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                if (responsiveVisibility(
                                                                  context:
                                                                      context,
                                                                  phone: false,
                                                                ))
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            16.0,
                                                                            0.0,
                                                                            16.0),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              0.0,
                                                                              0.0,
                                                                              16.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceBetween,
                                                                            children: [
                                                                              Text(
                                                                                'Top Planted trees',
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                      fontSize: 15.0,
                                                                                      letterSpacing: 0.0,
                                                                                      fontWeight: FontWeight.w500,
                                                                                      useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                    ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              16.0,
                                                                              16.0,
                                                                              16.0,
                                                                              16.0),
                                                                          child:
                                                                              Stack(
                                                                            alignment:
                                                                                AlignmentDirectional(0.0, 0.0),
                                                                            children: [
                                                                              Container(
                                                                                width: 150.0,
                                                                                height: 150.0,
                                                                                decoration: BoxDecoration(),
                                                                                child: Column(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                  children: [
                                                                                    LinearPercentIndicator(
                                                                                      percent: 0.9,
                                                                                      width: 150.0,
                                                                                      lineHeight: 15.0,
                                                                                      animation: true,
                                                                                      animateFromLastPercent: true,
                                                                                      progressColor: FlutterFlowTheme.of(context).primary,
                                                                                      backgroundColor: FlutterFlowTheme.of(context).accent4,
                                                                                      barRadius: Radius.circular(15.0),
                                                                                      padding: EdgeInsets.zero,
                                                                                    ),
                                                                                    LinearPercentIndicator(
                                                                                      percent: 0.8,
                                                                                      width: 150.0,
                                                                                      lineHeight: 15.0,
                                                                                      animation: true,
                                                                                      animateFromLastPercent: true,
                                                                                      progressColor: FlutterFlowTheme.of(context).secondary,
                                                                                      backgroundColor: FlutterFlowTheme.of(context).accent4,
                                                                                      barRadius: Radius.circular(15.0),
                                                                                      padding: EdgeInsets.zero,
                                                                                    ),
                                                                                  ].divide(SizedBox(height: 10.0)),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              1.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceBetween,
                                                                            children: [
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Container(
                                                                                    width: 16.0,
                                                                                    height: 16.0,
                                                                                    decoration: BoxDecoration(
                                                                                      color: FlutterFlowTheme.of(context).primary,
                                                                                      shape: BoxShape.circle,
                                                                                    ),
                                                                                  ),
                                                                                  Text(
                                                                                    'CERIOPS TANGAL',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                          letterSpacing: 0.0,
                                                                                          useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                        ),
                                                                                  ),
                                                                                ].divide(SizedBox(width: 8.0)),
                                                                              ),
                                                                              Text(
                                                                                ' 65%',
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                      letterSpacing: 0.0,
                                                                                      useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                    ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              10.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceBetween,
                                                                            children: [
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Container(
                                                                                    width: 16.0,
                                                                                    height: 16.0,
                                                                                    decoration: BoxDecoration(
                                                                                      color: FlutterFlowTheme.of(context).secondary,
                                                                                      shape: BoxShape.circle,
                                                                                    ),
                                                                                  ),
                                                                                  Text(
                                                                                    'Rhizophora mucronata',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                          letterSpacing: 0.0,
                                                                                          useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                        ),
                                                                                  ),
                                                                                ].divide(SizedBox(width: 8.0)),
                                                                              ),
                                                                              Text(
                                                                                ' 35%',
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                      letterSpacing: 0.0,
                                                                                      useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                    ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                        if (responsiveVisibility(
                                                          context: context,
                                                          tablet: false,
                                                          tabletLandscape:
                                                              false,
                                                          desktop: false,
                                                        ))
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        20.0,
                                                                        0.0,
                                                                        14.0),
                                                            child: Container(
                                                              width: 553.0,
                                                              height: 375.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            16.0),
                                                              ),
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            5.0,
                                                                            0.0,
                                                                            5.0,
                                                                            0.0),
                                                                child: Stack(
                                                                  children: [
                                                                    StreamBuilder<
                                                                        List<
                                                                            DistributionPerCountyRecord>>(
                                                                      stream:
                                                                          queryDistributionPerCountyRecord(),
                                                                      builder:
                                                                          (context,
                                                                              snapshot) {
                                                                        // Customize what your widget looks like when it's loading.
                                                                        if (!snapshot
                                                                            .hasData) {
                                                                          return Center(
                                                                            child:
                                                                                SizedBox(
                                                                              width: 50.0,
                                                                              height: 50.0,
                                                                              child: SpinKitWanderingCubes(
                                                                                color: Color(0xFF00B90E),
                                                                                size: 50.0,
                                                                              ),
                                                                            ),
                                                                          );
                                                                        }
                                                                        List<DistributionPerCountyRecord>
                                                                            containerDistributionPerCountyRecordList =
                                                                            snapshot.data!;

                                                                        return Container(
                                                                          decoration:
                                                                              BoxDecoration(),
                                                                          child:
                                                                              Wrap(
                                                                            spacing:
                                                                                0.0,
                                                                            runSpacing:
                                                                                0.0,
                                                                            alignment:
                                                                                WrapAlignment.start,
                                                                            crossAxisAlignment:
                                                                                WrapCrossAlignment.start,
                                                                            direction:
                                                                                Axis.horizontal,
                                                                            runAlignment:
                                                                                WrapAlignment.start,
                                                                            verticalDirection:
                                                                                VerticalDirection.down,
                                                                            clipBehavior:
                                                                                Clip.none,
                                                                            children: [
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(3.0, 0.0, 0.0, 0.0),
                                                                                child: SingleChildScrollView(
                                                                                  child: Column(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                    children: [
                                                                                      Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        crossAxisAlignment: CrossAxisAlignment.center,
                                                                                        children: [
                                                                                          Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(3.0, 0.0, 0.0, 0.0),
                                                                                            child: SingleChildScrollView(
                                                                                              child: Column(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                children: [
                                                                                                  Row(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    children: [
                                                                                                      Text(
                                                                                                        'Distribution per county.',
                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                              fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                              letterSpacing: 0.0,
                                                                                                              fontWeight: FontWeight.w600,
                                                                                                              useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                                            ),
                                                                                                      ),
                                                                                                    ],
                                                                                                  ),
                                                                                                  Padding(
                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
                                                                                                    child: Stack(
                                                                                                      alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                      children: [
                                                                                                        Container(
                                                                                                          width: 320.0,
                                                                                                          height: 320.0,
                                                                                                          decoration: BoxDecoration(),
                                                                                                          child: CircularPercentIndicator(
                                                                                                            percent: 1.0,
                                                                                                            radius: 100.0,
                                                                                                            lineWidth: 12.0,
                                                                                                            animation: true,
                                                                                                            animateFromLastPercent: true,
                                                                                                            progressColor: FlutterFlowTheme.of(context).tertiary,
                                                                                                            backgroundColor: FlutterFlowTheme.of(context).accent4,
                                                                                                            center: Text(
                                                                                                              '1 County',
                                                                                                              style: FlutterFlowTheme.of(context).headlineSmall.override(
                                                                                                                    fontFamily: FlutterFlowTheme.of(context).headlineSmallFamily,
                                                                                                                    letterSpacing: 0.0,
                                                                                                                    useGoogleFonts: !FlutterFlowTheme.of(context).headlineSmallIsCustom,
                                                                                                                  ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                        Container(
                                                                                                          width: 320.0,
                                                                                                          height: 320.0,
                                                                                                          decoration: BoxDecoration(),
                                                                                                        ),
                                                                                                      ],
                                                                                                    ),
                                                                                                  ),
                                                                                                ],
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                                                                                        child: SingleChildScrollView(
                                                                                          child: Column(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            mainAxisAlignment: MainAxisAlignment.start,
                                                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                                                            children: [
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                                                                                                child: Row(
                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                                                                  children: [
                                                                                                    Row(
                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                      children: [
                                                                                                        Container(
                                                                                                          width: 16.0,
                                                                                                          height: 16.0,
                                                                                                          decoration: BoxDecoration(
                                                                                                            color: FlutterFlowTheme.of(context).tertiary,
                                                                                                            shape: BoxShape.circle,
                                                                                                          ),
                                                                                                        ),
                                                                                                        Text(
                                                                                                          'KILIFI 100%',
                                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                                letterSpacing: 0.0,
                                                                                                                useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                                              ),
                                                                                                        ),
                                                                                                      ].divide(SizedBox(width: 8.0)),
                                                                                                    ),
                                                                                                    Text(
                                                                                                      '9%',
                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                            fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                            letterSpacing: 0.0,
                                                                                                            useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                                          ),
                                                                                                    ),
                                                                                                  ],
                                                                                                ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        );
                                                                      },
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                      ],
                                                    ),
                                                  ),
                                                  if (responsiveVisibility(
                                                    context: context,
                                                    phone: false,
                                                    tablet: false,
                                                  ))
                                                    Expanded(
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    8.0,
                                                                    4.0,
                                                                    4.0,
                                                                    4.0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .end,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Wrap(
                                                              spacing: 10.0,
                                                              runSpacing: 10.0,
                                                              alignment:
                                                                  WrapAlignment
                                                                      .start,
                                                              crossAxisAlignment:
                                                                  WrapCrossAlignment
                                                                      .start,
                                                              direction: Axis
                                                                  .horizontal,
                                                              runAlignment:
                                                                  WrapAlignment
                                                                      .start,
                                                              verticalDirection:
                                                                  VerticalDirection
                                                                      .down,
                                                              clipBehavior:
                                                                  Clip.none,
                                                              children: [
                                                                StreamBuilder<
                                                                    List<
                                                                        AllTreesDeliveredRecord>>(
                                                                  stream:
                                                                      queryAllTreesDeliveredRecord(
                                                                    queryBuilder:
                                                                        (allTreesDeliveredRecord) =>
                                                                            allTreesDeliveredRecord.where(
                                                                      'PlanterCompany',
                                                                      isEqualTo:
                                                                          'UNIAH Ventures Limited',
                                                                    ),
                                                                  ),
                                                                  builder: (context,
                                                                      snapshot) {
                                                                    // Customize what your widget looks like when it's loading.
                                                                    if (!snapshot
                                                                        .hasData) {
                                                                      return Center(
                                                                        child:
                                                                            SizedBox(
                                                                          width:
                                                                              50.0,
                                                                          height:
                                                                              50.0,
                                                                          child:
                                                                              SpinKitWanderingCubes(
                                                                            color:
                                                                                Color(0xFF00B90E),
                                                                            size:
                                                                                50.0,
                                                                          ),
                                                                        ),
                                                                      );
                                                                    }
                                                                    List<AllTreesDeliveredRecord>
                                                                        containerAllTreesDeliveredRecordList =
                                                                        snapshot
                                                                            .data!;

                                                                    return Container(
                                                                      decoration:
                                                                          BoxDecoration(),
                                                                      child: StreamBuilder<
                                                                          List<
                                                                              FieldsRecord>>(
                                                                        stream:
                                                                            queryFieldsRecord(
                                                                          queryBuilder: (fieldsRecord) =>
                                                                              fieldsRecord.where(
                                                                            'PlanterCompany',
                                                                            isEqualTo:
                                                                                'UNIAH Ventures Limited',
                                                                          ),
                                                                        ),
                                                                        builder:
                                                                            (context,
                                                                                snapshot) {
                                                                          // Customize what your widget looks like when it's loading.
                                                                          if (!snapshot
                                                                              .hasData) {
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
                                                                          List<FieldsRecord>
                                                                              cardTotalUsersFieldsRecordList =
                                                                              snapshot.data!;

                                                                          return InkWell(
                                                                            splashColor:
                                                                                Colors.transparent,
                                                                            focusColor:
                                                                                Colors.transparent,
                                                                            hoverColor:
                                                                                Colors.transparent,
                                                                            highlightColor:
                                                                                Colors.transparent,
                                                                            onTap:
                                                                                () async {
                                                                              context.pushNamed(
                                                                                AllInsitutionsWidget.routeName,
                                                                                queryParameters: {
                                                                                  'searchname': serializeParam(
                                                                                    '',
                                                                                    ParamType.String,
                                                                                  ),
                                                                                  'fieldsdocPassed': serializeParam(
                                                                                    cardTotalUsersFieldsRecordList,
                                                                                    ParamType.Document,
                                                                                    isList: true,
                                                                                  ),
                                                                                }.withoutNulls,
                                                                                extra: <String, dynamic>{
                                                                                  'fieldsdocPassed': cardTotalUsersFieldsRecordList,
                                                                                },
                                                                              );
                                                                            },
                                                                            child:
                                                                                Container(
                                                                              width: 160.0,
                                                                              height: 180.0,
                                                                              decoration: BoxDecoration(
                                                                                color: Color(0xFFCEA367),
                                                                                borderRadius: BorderRadius.circular(16.0),
                                                                                border: Border.all(
                                                                                  width: 1.0,
                                                                                ),
                                                                              ),
                                                                              alignment: AlignmentDirectional(0.0, -1.0),
                                                                              child: Padding(
                                                                                padding: EdgeInsets.all(16.0),
                                                                                child: SingleChildScrollView(
                                                                                  child: Column(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                    children: [
                                                                                      Text(
                                                                                        'Total Trees',
                                                                                        textAlign: TextAlign.start,
                                                                                        style: FlutterFlowTheme.of(context).headlineSmall.override(
                                                                                              fontFamily: FlutterFlowTheme.of(context).headlineSmallFamily,
                                                                                              letterSpacing: 0.0,
                                                                                              useGoogleFonts: !FlutterFlowTheme.of(context).headlineSmallIsCustom,
                                                                                            ),
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
                                                                                        child: Text(
                                                                                          'All trees',
                                                                                          textAlign: TextAlign.start,
                                                                                          style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                                fontFamily: FlutterFlowTheme.of(context).bodySmallFamily,
                                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                letterSpacing: 0.0,
                                                                                                useGoogleFonts: !FlutterFlowTheme.of(context).bodySmallIsCustom,
                                                                                              ),
                                                                                        ),
                                                                                      ),
                                                                                      Container(
                                                                                        width: MediaQuery.sizeOf(context).width * 0.4,
                                                                                        decoration: BoxDecoration(
                                                                                          color: Color(0xFFCEA367),
                                                                                          borderRadius: BorderRadius.circular(24.0),
                                                                                        ),
                                                                                        child: Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            FaIcon(
                                                                                              FontAwesomeIcons.tree,
                                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                              size: 34.0,
                                                                                            ),
                                                                                            Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(6.0, 0.0, 0.0, 0.0),
                                                                                              child: Text(
                                                                                                valueOrDefault<String>(
                                                                                                  functions.sumAllLists(containerAllTreesDeliveredRecordList.map((e) => e.numberOfTreesDelivered).toList()).toString(),
                                                                                                  '0',
                                                                                                ),
                                                                                                textAlign: TextAlign.center,
                                                                                                style: FlutterFlowTheme.of(context).displaySmall.override(
                                                                                                      fontFamily: FlutterFlowTheme.of(context).displaySmallFamily,
                                                                                                      fontSize: 24.0,
                                                                                                      letterSpacing: 0.0,
                                                                                                      useGoogleFonts: !FlutterFlowTheme.of(context).displaySmallIsCustom,
                                                                                                    ),
                                                                                              ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation7']!),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          );
                                                                        },
                                                                      ),
                                                                    );
                                                                  },
                                                                ),
                                                                StreamBuilder<
                                                                    List<
                                                                        FieldsRecord>>(
                                                                  stream:
                                                                      queryFieldsRecord(
                                                                    queryBuilder:
                                                                        (fieldsRecord) =>
                                                                            fieldsRecord.where(
                                                                      'PlanterCompany',
                                                                      isEqualTo:
                                                                          'UNIAH Ventures Limited',
                                                                    ),
                                                                  ),
                                                                  builder: (context,
                                                                      snapshot) {
                                                                    // Customize what your widget looks like when it's loading.
                                                                    if (!snapshot
                                                                        .hasData) {
                                                                      return Center(
                                                                        child:
                                                                            SizedBox(
                                                                          width:
                                                                              50.0,
                                                                          height:
                                                                              50.0,
                                                                          child:
                                                                              SpinKitWanderingCubes(
                                                                            color:
                                                                                Color(0xFF00B90E),
                                                                            size:
                                                                                50.0,
                                                                          ),
                                                                        ),
                                                                      );
                                                                    }
                                                                    List<FieldsRecord>
                                                                        cardTotalUsersFieldsRecordList =
                                                                        snapshot
                                                                            .data!;

                                                                    return InkWell(
                                                                      splashColor:
                                                                          Colors
                                                                              .transparent,
                                                                      focusColor:
                                                                          Colors
                                                                              .transparent,
                                                                      hoverColor:
                                                                          Colors
                                                                              .transparent,
                                                                      highlightColor:
                                                                          Colors
                                                                              .transparent,
                                                                      onTap:
                                                                          () async {
                                                                        context
                                                                            .pushNamed(
                                                                          AllInsitutionsWidget
                                                                              .routeName,
                                                                          queryParameters:
                                                                              {
                                                                            'searchname':
                                                                                serializeParam(
                                                                              '',
                                                                              ParamType.String,
                                                                            ),
                                                                            'fieldsdocPassed':
                                                                                serializeParam(
                                                                              cardTotalUsersFieldsRecordList,
                                                                              ParamType.Document,
                                                                              isList: true,
                                                                            ),
                                                                          }.withoutNulls,
                                                                          extra: <String,
                                                                              dynamic>{
                                                                            'fieldsdocPassed':
                                                                                cardTotalUsersFieldsRecordList,
                                                                          },
                                                                        );
                                                                      },
                                                                      child:
                                                                          Container(
                                                                        width:
                                                                            150.0,
                                                                        height:
                                                                            180.0,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              Color(0xFFCEA367),
                                                                          borderRadius:
                                                                              BorderRadius.circular(16.0),
                                                                          border:
                                                                              Border.all(
                                                                            width:
                                                                                1.0,
                                                                          ),
                                                                        ),
                                                                        alignment: AlignmentDirectional(
                                                                            0.0,
                                                                            -1.0),
                                                                        child:
                                                                            Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              16.0,
                                                                              16.0,
                                                                              16.0,
                                                                              0.0),
                                                                          child:
                                                                              SingleChildScrollView(
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Text(
                                                                                  'Insitutions',
                                                                                  textAlign: TextAlign.start,
                                                                                  style: FlutterFlowTheme.of(context).headlineSmall.override(
                                                                                        fontFamily: FlutterFlowTheme.of(context).headlineSmallFamily,
                                                                                        letterSpacing: 0.0,
                                                                                        useGoogleFonts: !FlutterFlowTheme.of(context).headlineSmallIsCustom,
                                                                                      ),
                                                                                ),
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
                                                                                  child: Text(
                                                                                    'An overview of  planting fields. ',
                                                                                    textAlign: TextAlign.start,
                                                                                    style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                          fontFamily: FlutterFlowTheme.of(context).bodySmallFamily,
                                                                                          color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                          letterSpacing: 0.0,
                                                                                          useGoogleFonts: !FlutterFlowTheme.of(context).bodySmallIsCustom,
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                                Container(
                                                                                  width: MediaQuery.sizeOf(context).width * 0.4,
                                                                                  decoration: BoxDecoration(
                                                                                    color: Color(0xFFCEA367),
                                                                                    borderRadius: BorderRadius.circular(24.0),
                                                                                  ),
                                                                                  child: Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      Icon(
                                                                                        Icons.landscape_sharp,
                                                                                        color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                        size: 44.0,
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                        child: Text(
                                                                                          valueOrDefault<String>(
                                                                                            cardTotalUsersFieldsRecordList.length.toString(),
                                                                                            '0',
                                                                                          ),
                                                                                          textAlign: TextAlign.center,
                                                                                          style: FlutterFlowTheme.of(context).displaySmall.override(
                                                                                                fontFamily: FlutterFlowTheme.of(context).displaySmallFamily,
                                                                                                fontSize: 24.0,
                                                                                                letterSpacing: 0.0,
                                                                                                useGoogleFonts: !FlutterFlowTheme.of(context).displaySmallIsCustom,
                                                                                              ),
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation8']!),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    );
                                                                  },
                                                                ),
                                                                StreamBuilder<
                                                                    List<
                                                                        TotalTreesPerSpeciesRecord>>(
                                                                  stream:
                                                                      queryTotalTreesPerSpeciesRecord(),
                                                                  builder: (context,
                                                                      snapshot) {
                                                                    // Customize what your widget looks like when it's loading.
                                                                    if (!snapshot
                                                                        .hasData) {
                                                                      return Center(
                                                                        child:
                                                                            SizedBox(
                                                                          width:
                                                                              50.0,
                                                                          height:
                                                                              50.0,
                                                                          child:
                                                                              SpinKitWanderingCubes(
                                                                            color:
                                                                                Color(0xFF00B90E),
                                                                            size:
                                                                                50.0,
                                                                          ),
                                                                        ),
                                                                      );
                                                                    }
                                                                    List<TotalTreesPerSpeciesRecord>
                                                                        cardTotalUsersTotalTreesPerSpeciesRecordList =
                                                                        snapshot
                                                                            .data!;

                                                                    return InkWell(
                                                                      splashColor:
                                                                          Colors
                                                                              .transparent,
                                                                      focusColor:
                                                                          Colors
                                                                              .transparent,
                                                                      hoverColor:
                                                                          Colors
                                                                              .transparent,
                                                                      highlightColor:
                                                                          Colors
                                                                              .transparent,
                                                                      onTap:
                                                                          () async {
                                                                        context.pushNamed(
                                                                            CarbonSequestrationPageWidget.routeName);
                                                                      },
                                                                      child:
                                                                          Container(
                                                                        width:
                                                                            140.0,
                                                                        height:
                                                                            180.0,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              Color(0xFFCEA367),
                                                                          borderRadius:
                                                                              BorderRadius.circular(16.0),
                                                                          border:
                                                                              Border.all(
                                                                            width:
                                                                                1.0,
                                                                          ),
                                                                        ),
                                                                        alignment: AlignmentDirectional(
                                                                            0.0,
                                                                            -1.0),
                                                                        child:
                                                                            Padding(
                                                                          padding:
                                                                              EdgeInsets.all(16.0),
                                                                          child:
                                                                              SingleChildScrollView(
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Text(
                                                                                  'Species planted',
                                                                                  textAlign: TextAlign.start,
                                                                                  style: FlutterFlowTheme.of(context).headlineSmall.override(
                                                                                        fontFamily: FlutterFlowTheme.of(context).headlineSmallFamily,
                                                                                        letterSpacing: 0.0,
                                                                                        useGoogleFonts: !FlutterFlowTheme.of(context).headlineSmallIsCustom,
                                                                                      ),
                                                                                ),
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
                                                                                  child: Text(
                                                                                    'An overview of  all tree species',
                                                                                    textAlign: TextAlign.start,
                                                                                    style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                          fontFamily: FlutterFlowTheme.of(context).bodySmallFamily,
                                                                                          color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                          letterSpacing: 0.0,
                                                                                          useGoogleFonts: !FlutterFlowTheme.of(context).bodySmallIsCustom,
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                                Container(
                                                                                  width: MediaQuery.sizeOf(context).width * 0.4,
                                                                                  decoration: BoxDecoration(
                                                                                    color: Color(0xFFCEA367),
                                                                                    borderRadius: BorderRadius.circular(24.0),
                                                                                  ),
                                                                                  child: Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      FaIcon(
                                                                                        FontAwesomeIcons.seedling,
                                                                                        color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                        size: 34.0,
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                                                                                        child: Text(
                                                                                          '2',
                                                                                          textAlign: TextAlign.center,
                                                                                          style: FlutterFlowTheme.of(context).displaySmall.override(
                                                                                                fontFamily: FlutterFlowTheme.of(context).displaySmallFamily,
                                                                                                fontSize: 24.0,
                                                                                                letterSpacing: 0.0,
                                                                                                useGoogleFonts: !FlutterFlowTheme.of(context).displaySmallIsCustom,
                                                                                              ),
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation9']!),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    );
                                                                  },
                                                                ),
                                                              ],
                                                            ),
                                                            Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      0.0, 0.0),
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            10.0,
                                                                            0.0,
                                                                            5.0),
                                                                child:
                                                                    Container(
                                                                  width: double
                                                                      .infinity,
                                                                  constraints:
                                                                      BoxConstraints(
                                                                    maxWidth:
                                                                        570.0,
                                                                  ),
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: Color(
                                                                          0xFFE0E3E7),
                                                                    ),
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            10.0,
                                                                            10.0,
                                                                            10.0,
                                                                            10.0),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            Icon(
                                                                              Icons.library_add_check_rounded,
                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                              size: 24.0,
                                                                            ),
                                                                            Expanded(
                                                                              child: Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
                                                                                child: Text(
                                                                                  'Tree plantintingPhases',
                                                                                  style: FlutterFlowTheme.of(context).headlineSmall.override(
                                                                                        fontFamily: FlutterFlowTheme.of(context).headlineSmallFamily,
                                                                                        fontSize: 16.0,
                                                                                        letterSpacing: 0.0,
                                                                                        useGoogleFonts: !FlutterFlowTheme.of(context).headlineSmallIsCustom,
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              8.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              ListView(
                                                                            padding:
                                                                                EdgeInsets.zero,
                                                                            shrinkWrap:
                                                                                true,
                                                                            scrollDirection:
                                                                                Axis.vertical,
                                                                            children: [
                                                                              Container(
                                                                                width: 100.0,
                                                                                decoration: BoxDecoration(
                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                ),
                                                                                child: Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 8.0),
                                                                                  child: Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                    children: [
                                                                                      Expanded(
                                                                                        child: Column(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          mainAxisAlignment: MainAxisAlignment.center,
                                                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                                                          children: [
                                                                                            Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(12.0, 8.0, 0.0, 0.0),
                                                                                              child: Text(
                                                                                                'Below is the distribution cycle of the tree planting phases',
                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                      letterSpacing: 0.0,
                                                                                                      fontWeight: FontWeight.w500,
                                                                                                      useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                                    ),
                                                                                              ),
                                                                                            ),
                                                                                            Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 16.0, 0.0),
                                                                                              child: Wrap(
                                                                                                spacing: 10.0,
                                                                                                runSpacing: 10.0,
                                                                                                alignment: WrapAlignment.start,
                                                                                                crossAxisAlignment: WrapCrossAlignment.start,
                                                                                                direction: Axis.horizontal,
                                                                                                runAlignment: WrapAlignment.start,
                                                                                                verticalDirection: VerticalDirection.down,
                                                                                                clipBehavior: Clip.none,
                                                                                                children: [
                                                                                                  Padding(
                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(12.0, 8.0, 0.0, 0.0),
                                                                                                    child: Text(
                                                                                                      'Phase 1',
                                                                                                      style: FlutterFlowTheme.of(context).labelSmall.override(
                                                                                                            fontFamily: FlutterFlowTheme.of(context).labelSmallFamily,
                                                                                                            letterSpacing: 0.0,
                                                                                                            useGoogleFonts: !FlutterFlowTheme.of(context).labelSmallIsCustom,
                                                                                                          ),
                                                                                                    ),
                                                                                                  ),
                                                                                                  Padding(
                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                                                                                                    child: Container(
                                                                                                      width: 130.0,
                                                                                                      height: 35.0,
                                                                                                      decoration: BoxDecoration(
                                                                                                        color: FlutterFlowTheme.of(context).accent1,
                                                                                                        borderRadius: BorderRadius.circular(8.0),
                                                                                                        border: Border.all(
                                                                                                          color: FlutterFlowTheme.of(context).primary,
                                                                                                          width: 1.0,
                                                                                                        ),
                                                                                                      ),
                                                                                                      alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                      child: Padding(
                                                                                                        padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                                                                                                        child: Text(
                                                                                                          '30 June – 4 July 2025 (5 days)',
                                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                                letterSpacing: 0.0,
                                                                                                                useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                                              ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                  Column(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                    children: [
                                                                                                      Padding(
                                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                                                                                                        child: Container(
                                                                                                          width: 120.0,
                                                                                                          height: 35.0,
                                                                                                          decoration: BoxDecoration(
                                                                                                            color: Color(0xFFCEA367),
                                                                                                            borderRadius: BorderRadius.circular(8.0),
                                                                                                            border: Border.all(
                                                                                                              color: FlutterFlowTheme.of(context).tertiary,
                                                                                                              width: 1.0,
                                                                                                            ),
                                                                                                          ),
                                                                                                          alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                          child: Padding(
                                                                                                            padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                                                                                                            child: Text(
                                                                                                              '\t53.25 acres Covered',
                                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                    fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                                    letterSpacing: 0.0,
                                                                                                                    useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                                                  ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    ],
                                                                                                  ),
                                                                                                  Column(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                    children: [
                                                                                                      Padding(
                                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                                                                                                        child: Container(
                                                                                                          width: 100.0,
                                                                                                          height: 28.0,
                                                                                                          decoration: BoxDecoration(
                                                                                                            color: FlutterFlowTheme.of(context).accent2,
                                                                                                            borderRadius: BorderRadius.circular(8.0),
                                                                                                            border: Border.all(
                                                                                                              color: FlutterFlowTheme.of(context).secondary,
                                                                                                              width: 1.0,
                                                                                                            ),
                                                                                                          ),
                                                                                                          alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                          child: Padding(
                                                                                                            padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                                                                                                            child: Text(
                                                                                                              '2 Species',
                                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                    fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                                    letterSpacing: 0.0,
                                                                                                                    useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                                                  ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    ],
                                                                                                  ),
                                                                                                ],
                                                                                              ),
                                                                                            ),
                                                                                            Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 16.0, 0.0),
                                                                                              child: Wrap(
                                                                                                spacing: 10.0,
                                                                                                runSpacing: 10.0,
                                                                                                alignment: WrapAlignment.start,
                                                                                                crossAxisAlignment: WrapCrossAlignment.start,
                                                                                                direction: Axis.horizontal,
                                                                                                runAlignment: WrapAlignment.start,
                                                                                                verticalDirection: VerticalDirection.down,
                                                                                                clipBehavior: Clip.none,
                                                                                                children: [
                                                                                                  Opacity(
                                                                                                    opacity: 0.0,
                                                                                                    child: Padding(
                                                                                                      padding: EdgeInsetsDirectional.fromSTEB(12.0, 8.0, 0.0, 0.0),
                                                                                                      child: Text(
                                                                                                        'Phase 2',
                                                                                                        style: FlutterFlowTheme.of(context).labelSmall.override(
                                                                                                              fontFamily: FlutterFlowTheme.of(context).labelSmallFamily,
                                                                                                              letterSpacing: 0.0,
                                                                                                              useGoogleFonts: !FlutterFlowTheme.of(context).labelSmallIsCustom,
                                                                                                            ),
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                  Padding(
                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                                                                                                    child: Container(
                                                                                                      width: 130.0,
                                                                                                      height: 35.0,
                                                                                                      decoration: BoxDecoration(
                                                                                                        color: FlutterFlowTheme.of(context).accent1,
                                                                                                        borderRadius: BorderRadius.circular(8.0),
                                                                                                        border: Border.all(
                                                                                                          color: FlutterFlowTheme.of(context).primary,
                                                                                                          width: 1.0,
                                                                                                        ),
                                                                                                      ),
                                                                                                      alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                      child: Padding(
                                                                                                        padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 0.0),
                                                                                                        child: Text(
                                                                                                          '1369 community participants',
                                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                                letterSpacing: 0.0,
                                                                                                                useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                                              ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                  Column(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                    children: [
                                                                                                      Padding(
                                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                                                                                                        child: Container(
                                                                                                          width: 120.0,
                                                                                                          height: 35.0,
                                                                                                          decoration: BoxDecoration(
                                                                                                            color: Color(0xFFCEA367),
                                                                                                            borderRadius: BorderRadius.circular(8.0),
                                                                                                            border: Border.all(
                                                                                                              color: FlutterFlowTheme.of(context).tertiary,
                                                                                                              width: 1.0,
                                                                                                            ),
                                                                                                          ),
                                                                                                          alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                          child: Padding(
                                                                                                            padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 0.0),
                                                                                                            child: Text(
                                                                                                              'Focused: mangrove types',
                                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                    fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                                    letterSpacing: 0.0,
                                                                                                                    useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                                                  ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    ],
                                                                                                  ),
                                                                                                  Column(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                    children: [
                                                                                                      Padding(
                                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                                                                                                        child: Container(
                                                                                                          width: 100.0,
                                                                                                          height: 35.0,
                                                                                                          decoration: BoxDecoration(
                                                                                                            color: FlutterFlowTheme.of(context).accent2,
                                                                                                            borderRadius: BorderRadius.circular(8.0),
                                                                                                            border: Border.all(
                                                                                                              color: FlutterFlowTheme.of(context).secondary,
                                                                                                              width: 1.0,
                                                                                                            ),
                                                                                                          ),
                                                                                                          alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                          child: Padding(
                                                                                                            padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 0.0),
                                                                                                            child: Text(
                                                                                                              'Ceriops tagal\t156,238',
                                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                    fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                                    letterSpacing: 0.0,
                                                                                                                    useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                                                  ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    ],
                                                                                                  ),
                                                                                                ],
                                                                                              ),
                                                                                            ),
                                                                                            Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 16.0, 0.0),
                                                                                              child: Wrap(
                                                                                                spacing: 10.0,
                                                                                                runSpacing: 10.0,
                                                                                                alignment: WrapAlignment.start,
                                                                                                crossAxisAlignment: WrapCrossAlignment.start,
                                                                                                direction: Axis.horizontal,
                                                                                                runAlignment: WrapAlignment.start,
                                                                                                verticalDirection: VerticalDirection.down,
                                                                                                clipBehavior: Clip.none,
                                                                                                children: [
                                                                                                  Opacity(
                                                                                                    opacity: 0.0,
                                                                                                    child: Padding(
                                                                                                      padding: EdgeInsetsDirectional.fromSTEB(12.0, 8.0, 0.0, 0.0),
                                                                                                      child: Text(
                                                                                                        'Phase 3',
                                                                                                        style: FlutterFlowTheme.of(context).labelSmall.override(
                                                                                                              fontFamily: FlutterFlowTheme.of(context).labelSmallFamily,
                                                                                                              letterSpacing: 0.0,
                                                                                                              useGoogleFonts: !FlutterFlowTheme.of(context).labelSmallIsCustom,
                                                                                                            ),
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                  Padding(
                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                                                                                                    child: Container(
                                                                                                      width: 130.0,
                                                                                                      height: 45.0,
                                                                                                      decoration: BoxDecoration(
                                                                                                        color: FlutterFlowTheme.of(context).accent1,
                                                                                                        borderRadius: BorderRadius.circular(8.0),
                                                                                                        border: Border.all(
                                                                                                          color: FlutterFlowTheme.of(context).primary,
                                                                                                          width: 1.0,
                                                                                                        ),
                                                                                                      ),
                                                                                                      alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                      child: Padding(
                                                                                                        padding: EdgeInsetsDirectional.fromSTEB(1.0, 0.0, 0.0, 0.0),
                                                                                                        child: Text(
                                                                                                          'Lat -2.9730, Long40.1225',
                                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                                letterSpacing: 0.0,
                                                                                                                useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                                              ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                  Column(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                    children: [
                                                                                                      Padding(
                                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                                                                                                        child: Container(
                                                                                                          width: 120.0,
                                                                                                          height: 45.0,
                                                                                                          decoration: BoxDecoration(
                                                                                                            color: Color(0xFFCEA367),
                                                                                                            borderRadius: BorderRadius.circular(8.0),
                                                                                                            border: Border.all(
                                                                                                              color: FlutterFlowTheme.of(context).tertiary,
                                                                                                              width: 1.0,
                                                                                                            ),
                                                                                                          ),
                                                                                                          alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                          child: Padding(
                                                                                                            padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 0.0),
                                                                                                            child: Text(
                                                                                                              'Spacing: 1m x 1m',
                                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                    fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                                    letterSpacing: 0.0,
                                                                                                                    useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                                                  ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    ],
                                                                                                  ),
                                                                                                  Column(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                    children: [
                                                                                                      Padding(
                                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                                                                                                        child: Container(
                                                                                                          width: 100.0,
                                                                                                          height: 45.0,
                                                                                                          decoration: BoxDecoration(
                                                                                                            color: FlutterFlowTheme.of(context).accent2,
                                                                                                            borderRadius: BorderRadius.circular(8.0),
                                                                                                            border: Border.all(
                                                                                                              color: FlutterFlowTheme.of(context).secondary,
                                                                                                              width: 1.0,
                                                                                                            ),
                                                                                                          ),
                                                                                                          alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                          child: Text(
                                                                                                            'Rhizophora 56,762',
                                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                                  letterSpacing: 0.0,
                                                                                                                  useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                                                ),
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    ],
                                                                                                  ),
                                                                                                ],
                                                                                              ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Container(
                                                                                width: 100.0,
                                                                                decoration: BoxDecoration(
                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                ),
                                                                              ),
                                                                              Container(
                                                                                width: 100.0,
                                                                                decoration: BoxDecoration(
                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
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
                                                            ),
                                                            if (responsiveVisibility(
                                                              context: context,
                                                              phone: false,
                                                            ))
                                                              Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        20.0,
                                                                        0.0,
                                                                        14.0),
                                                                child:
                                                                    Container(
                                                                  width: 553.0,
                                                                  height: 375.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            16.0),
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            5.0,
                                                                            0.0,
                                                                            5.0,
                                                                            0.0),
                                                                    child:
                                                                        Stack(
                                                                      children: [
                                                                        StreamBuilder<
                                                                            List<DistributionPerCountyRecord>>(
                                                                          stream:
                                                                              queryDistributionPerCountyRecord(),
                                                                          builder:
                                                                              (context, snapshot) {
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
                                                                            List<DistributionPerCountyRecord>
                                                                                containerDistributionPerCountyRecordList =
                                                                                snapshot.data!;

                                                                            return Container(
                                                                              decoration: BoxDecoration(),
                                                                              child: Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                                                children: [
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(3.0, 0.0, 0.0, 0.0),
                                                                                    child: SingleChildScrollView(
                                                                                      child: Column(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                                                        children: [
                                                                                          Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            children: [
                                                                                              Text(
                                                                                                'Distribution per county.',
                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                      letterSpacing: 0.0,
                                                                                                      fontWeight: FontWeight.w600,
                                                                                                      useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                                    ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                          Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
                                                                                            child: Stack(
                                                                                              alignment: AlignmentDirectional(0.0, 0.0),
                                                                                              children: [
                                                                                                Container(
                                                                                                  width: 320.0,
                                                                                                  height: 320.0,
                                                                                                  decoration: BoxDecoration(),
                                                                                                  child: CircularPercentIndicator(
                                                                                                    percent: 1.0,
                                                                                                    radius: 100.0,
                                                                                                    lineWidth: 12.0,
                                                                                                    animation: true,
                                                                                                    animateFromLastPercent: true,
                                                                                                    progressColor: FlutterFlowTheme.of(context).tertiary,
                                                                                                    backgroundColor: FlutterFlowTheme.of(context).accent4,
                                                                                                    center: Text(
                                                                                                      '1 County',
                                                                                                      style: FlutterFlowTheme.of(context).headlineSmall.override(
                                                                                                            fontFamily: FlutterFlowTheme.of(context).headlineSmallFamily,
                                                                                                            letterSpacing: 0.0,
                                                                                                            useGoogleFonts: !FlutterFlowTheme.of(context).headlineSmallIsCustom,
                                                                                                          ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                                Container(
                                                                                                  width: 320.0,
                                                                                                  height: 320.0,
                                                                                                  decoration: BoxDecoration(),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                                                                                    child: SingleChildScrollView(
                                                                                      child: Column(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                                                        children: [
                                                                                          Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                                                                                            child: Row(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                              children: [
                                                                                                Row(
                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                  children: [
                                                                                                    Container(
                                                                                                      width: 16.0,
                                                                                                      height: 16.0,
                                                                                                      decoration: BoxDecoration(
                                                                                                        color: FlutterFlowTheme.of(context).tertiary,
                                                                                                        shape: BoxShape.circle,
                                                                                                      ),
                                                                                                    ),
                                                                                                    Text(
                                                                                                      'KILIFI 100%',
                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                            fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                            letterSpacing: 0.0,
                                                                                                            useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                                          ),
                                                                                                    ),
                                                                                                  ].divide(SizedBox(width: 8.0)),
                                                                                                ),
                                                                                                Text(
                                                                                                  '9%',
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                        letterSpacing: 0.0,
                                                                                                        useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                                      ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            );
                                                                          },
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          SingleChildScrollView(
                                            scrollDirection: Axis.horizontal,
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          4.0, 0.0, 4.0, 14.0),
                                                  child: Container(
                                                    constraints: BoxConstraints(
                                                      maxWidth: 635.0,
                                                    ),
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      boxShadow: [
                                                        BoxShadow(
                                                          blurRadius: 4.0,
                                                          color:
                                                              Color(0x33000000),
                                                          offset: Offset(
                                                            0.0,
                                                            2.0,
                                                          ),
                                                        )
                                                      ],
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              16.0),
                                                      border: Border.all(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        width: 1.0,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ].divide(SizedBox(width: 10.0)),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
