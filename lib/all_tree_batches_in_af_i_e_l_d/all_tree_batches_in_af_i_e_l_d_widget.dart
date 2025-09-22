import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'all_tree_batches_in_af_i_e_l_d_model.dart';
export 'all_tree_batches_in_af_i_e_l_d_model.dart';

class AllTreeBatchesInAfIELDWidget extends StatefulWidget {
  const AllTreeBatchesInAfIELDWidget({
    super.key,
    this.fieldDoc,
    this.fieldref,
    this.mainFieldDoc,
    this.institutiontTEST,
  });

  /// clicked insitution/field document
  final AllTreesDeliveredRecord? fieldDoc;

  /// ref of clicked field insituion or field
  final DocumentReference? fieldref;

  /// passing fieldname to help fetch all trees in that field
  final FieldsRecord? mainFieldDoc;

  final String? institutiontTEST;

  static String routeName = 'AllTreeBatchesInAfIELD';
  static String routePath = '/allTreeBatchesInAfIELD';

  @override
  State<AllTreeBatchesInAfIELDWidget> createState() =>
      _AllTreeBatchesInAfIELDWidgetState();
}

class _AllTreeBatchesInAfIELDWidgetState
    extends State<AllTreeBatchesInAfIELDWidget> {
  late AllTreeBatchesInAfIELDModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AllTreeBatchesInAfIELDModel());

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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(90.0),
          child: AppBar(
            backgroundColor: Color(0xFF0C460A),
            automaticallyImplyLeading: true,
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
              valueOrDefault<String>(
                widget!.mainFieldDoc?.fieldName,
                'default institution/field name',
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                    fontSize: 15.0,
                    letterSpacing: 0.0,
                    useGoogleFonts:
                        !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                  ),
            ),
            actions: [],
            centerTitle: true,
            toolbarHeight: 90.0,
            elevation: 4.0,
          ),
        ),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 0.0, 0.0),
                            child: Text(
                              'Tree Batches',
                              style: FlutterFlowTheme.of(context)
                                  .headlineMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .headlineMediumFamily,
                                    letterSpacing: 0.0,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .headlineMediumIsCustom,
                                  ),
                            ),
                          ),
                        ],
                      ),
                      StreamBuilder<List<TreesVisitationHistoryRecord>>(
                        stream: queryTreesVisitationHistoryRecord(
                          queryBuilder: (treesVisitationHistoryRecord) =>
                              treesVisitationHistoryRecord.where(
                            'fieldName',
                            isEqualTo:
                                widget!.mainFieldDoc?.fieldName != null &&
                                        widget!.mainFieldDoc?.fieldName != ''
                                    ? widget!.mainFieldDoc?.fieldName
                                    : widget!.mainFieldDoc?.institution,
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
                          List<TreesVisitationHistoryRecord>
                              containerTreesVisitationHistoryRecordList =
                              snapshot.data!;

                          return Container(
                            width: 80.0,
                            height: 60.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                            ),
                            child: Visibility(
                              visible: containerTreesVisitationHistoryRecordList
                                  .isNotEmpty,
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed(
                                    MainVisitPageWidget.routeName,
                                    queryParameters: {
                                      'fieldDoc': serializeParam(
                                        widget!.mainFieldDoc,
                                        ParamType.Document,
                                      ),
                                    }.withoutNulls,
                                    extra: <String, dynamic>{
                                      'fieldDoc': widget!.mainFieldDoc,
                                    },
                                  );
                                },
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      'Visit History',
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
                                    Icon(
                                      Icons.remove_red_eye,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 24.0,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 10.0, 10.0, 0.0),
                        child: Stack(
                          alignment: AlignmentDirectional(0.0, -1.0),
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 17.0, 0.0),
                              child: AlignedTooltip(
                                content: Padding(
                                  padding: EdgeInsets.all(4.0),
                                  child: Text(
                                    'Add Trees',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyLargeFamily,
                                          letterSpacing: 0.0,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .bodyLargeIsCustom,
                                        ),
                                  ),
                                ),
                                offset: 4.0,
                                preferredDirection: AxisDirection.up,
                                borderRadius: BorderRadius.circular(8.0),
                                backgroundColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                elevation: 4.0,
                                tailBaseWidth: 24.0,
                                tailLength: 12.0,
                                waitDuration: Duration(milliseconds: 100),
                                showDuration: Duration(milliseconds: 1500),
                                triggerMode: TooltipTriggerMode.tap,
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.pushNamed(
                                      AddTreesWidget.routeName,
                                      queryParameters: {
                                        'fieldRef': serializeParam(
                                          widget!.mainFieldDoc?.reference,
                                          ParamType.DocumentReference,
                                        ),
                                        'fielddoc': serializeParam(
                                          widget!.mainFieldDoc,
                                          ParamType.Document,
                                        ),
                                      }.withoutNulls,
                                      extra: <String, dynamic>{
                                        'fielddoc': widget!.mainFieldDoc,
                                      },
                                    );
                                  },
                                  child: Icon(
                                    Icons.add_circle,
                                    color: Color(0xFF0EA304),
                                    size: 39.0,
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 40.0, 20.0, 0.0),
                                child: Text(
                                  'Add NewTrees',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyMediumFamily,
                                        letterSpacing: 0.0,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .bodyMediumIsCustom,
                                      ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(14.0, 0.0, 14.0, 0.0),
                    child: TextFormField(
                      controller: _model.textController,
                      focusNode: _model.textFieldFocusNode,
                      autofocus: true,
                      obscureText: false,
                      decoration: InputDecoration(
                        hintText: 'search tree species/Category',
                        hintStyle: FlutterFlowTheme.of(context)
                            .bodySmall
                            .override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodySmallFamily,
                              letterSpacing: 0.0,
                              useGoogleFonts: !FlutterFlowTheme.of(context)
                                  .bodySmallIsCustom,
                            ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).primaryText,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        prefixIcon: Icon(
                          Icons.search,
                        ),
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).bodyMediumFamily,
                            letterSpacing: 0.0,
                            useGoogleFonts: !FlutterFlowTheme.of(context)
                                .bodyMediumIsCustom,
                          ),
                      validator:
                          _model.textControllerValidator.asValidator(context),
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      StreamBuilder<List<AllTreesDeliveredRecord>>(
                        stream: queryAllTreesDeliveredRecord(
                          queryBuilder: (allTreesDeliveredRecord) =>
                              allTreesDeliveredRecord.where(
                            'INSTITUTION',
                            isEqualTo: widget!.mainFieldDoc?.institution,
                          ),
                          singleRecord: true,
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
                              containerAllTreesDeliveredRecordList =
                              snapshot.data!;
                          // Return an empty Container when the item does not exist.
                          if (snapshot.data!.isEmpty) {
                            return Container();
                          }
                          final containerAllTreesDeliveredRecord =
                              containerAllTreesDeliveredRecordList.isNotEmpty
                                  ? containerAllTreesDeliveredRecordList.first
                                  : null;

                          return Container(
                            height: 80.0,
                            decoration: BoxDecoration(),
                            child: StreamBuilder<FieldsRecord>(
                              stream: FieldsRecord.getDocument(
                                  widget!.mainFieldDoc!.reference),
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

                                final containerFieldsRecord = snapshot.data!;

                                return Container(
                                  height: 80.0,
                                  decoration: BoxDecoration(),
                                  child: Visibility(
                                    visible:
                                        containerFieldsRecord.isUpdated != true,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  24.0, 4.0, 0.0, 0.0),
                                          child: Text(
                                            'Tap to refresh the updated list of trees in ${valueOrDefault<String>(
                                              widget!.mainFieldDoc?.institution,
                                              'default institution/field name',
                                            )}',
                                            textAlign: TextAlign.start,
                                            style: FlutterFlowTheme.of(context)
                                                .labelMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMediumFamily,
                                                  letterSpacing: 0.0,
                                                  useGoogleFonts:
                                                      !FlutterFlowTheme.of(
                                                              context)
                                                          .labelMediumIsCustom,
                                                ),
                                          ),
                                        ),
                                        if (containerFieldsRecord.isUpdated !=
                                            true)
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    20.0, 0.0, 0.0, 0.0),
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                await widget!
                                                    .mainFieldDoc!.reference
                                                    .update(
                                                        createFieldsRecordData(
                                                  isUpdated: true,
                                                ));

                                                await TotalTreesInAFieldRecord
                                                        .createDoc(widget!
                                                            .mainFieldDoc!
                                                            .reference)
                                                    .set(
                                                        createTotalTreesInAFieldRecordData(
                                                  species: 'RED CIDER',
                                                  conditionOfTrees:
                                                      'ALL HEALTHY',
                                                  totalTrees:
                                                      containerAllTreesDeliveredRecord
                                                          ?.redCider
                                                          ?.toDouble(),
                                                ));

                                                await TotalTreesInAFieldRecord
                                                        .createDoc(widget!
                                                            .mainFieldDoc!
                                                            .reference)
                                                    .set(
                                                        createTotalTreesInAFieldRecordData(
                                                  species: 'OLEA AFRICANA',
                                                  conditionOfTrees:
                                                      'ALL HEALTHY',
                                                  totalTrees:
                                                      containerAllTreesDeliveredRecord
                                                          ?.oleaAfricana
                                                          ?.toDouble(),
                                                ));

                                                await TotalTreesInAFieldRecord
                                                        .createDoc(widget!
                                                            .mainFieldDoc!
                                                            .reference)
                                                    .set(
                                                        createTotalTreesInAFieldRecordData(
                                                  species: 'LEMON',
                                                  conditionOfTrees:
                                                      'ALL HEALTHY',
                                                  totalTrees:
                                                      containerAllTreesDeliveredRecord
                                                          ?.lemon
                                                          ?.toDouble(),
                                                ));

                                                await TotalTreesInAFieldRecord
                                                        .createDoc(widget!
                                                            .mainFieldDoc!
                                                            .reference)
                                                    .set(
                                                        createTotalTreesInAFieldRecordData(
                                                  species: 'CYPRESS',
                                                  conditionOfTrees:
                                                      'ALL HEALTHY',
                                                  totalTrees:
                                                      containerAllTreesDeliveredRecord
                                                          ?.cypress
                                                          ?.toDouble(),
                                                ));

                                                await TotalTreesInAFieldRecord
                                                        .createDoc(widget!
                                                            .mainFieldDoc!
                                                            .reference)
                                                    .set(
                                                        createTotalTreesInAFieldRecordData(
                                                  species: 'SENNA SIAMEA',
                                                  conditionOfTrees:
                                                      'ALL HEALTHY',
                                                  totalTrees:
                                                      containerAllTreesDeliveredRecord
                                                          ?.sennaSiamea
                                                          ?.toDouble(),
                                                ));

                                                await TotalTreesInAFieldRecord
                                                        .createDoc(widget!
                                                            .mainFieldDoc!
                                                            .reference)
                                                    .set(
                                                        createTotalTreesInAFieldRecordData(
                                                  species: 'CASURINA',
                                                  conditionOfTrees:
                                                      'ALL HEALTHY',
                                                  totalTrees:
                                                      containerAllTreesDeliveredRecord
                                                          ?.casuarina
                                                          ?.toDouble(),
                                                ));

                                                await TotalTreesInAFieldRecord
                                                        .createDoc(widget!
                                                            .mainFieldDoc!
                                                            .reference)
                                                    .set(
                                                        createTotalTreesInAFieldRecordData(
                                                  species: 'MARKHAMIA LUTEA',
                                                  conditionOfTrees:
                                                      'ALL HEALTHY',
                                                  totalTrees:
                                                      containerAllTreesDeliveredRecord
                                                          ?.markhamiaLutea
                                                          ?.toDouble(),
                                                ));

                                                await TotalTreesInAFieldRecord
                                                        .createDoc(widget!
                                                            .mainFieldDoc!
                                                            .reference)
                                                    .set(
                                                        createTotalTreesInAFieldRecordData(
                                                  species:
                                                      'CROTON MEGALOCARPUS',
                                                  conditionOfTrees:
                                                      'ALL HEALTHY',
                                                  totalTrees:
                                                      containerAllTreesDeliveredRecord
                                                          ?.crotonMegalocarpus
                                                          ?.toDouble(),
                                                ));

                                                await TotalTreesInAFieldRecord
                                                        .createDoc(widget!
                                                            .mainFieldDoc!
                                                            .reference)
                                                    .set(
                                                        createTotalTreesInAFieldRecordData(
                                                  species: 'SYZYGIUM',
                                                  conditionOfTrees:
                                                      'ALL HEALTHY',
                                                  totalTrees:
                                                      containerAllTreesDeliveredRecord
                                                          ?.syzygium
                                                          ?.toDouble(),
                                                ));

                                                await TotalTreesInAFieldRecord
                                                        .createDoc(widget!
                                                            .mainFieldDoc!
                                                            .reference)
                                                    .set(
                                                        createTotalTreesInAFieldRecordData(
                                                  species: 'WHITE SAPOTE',
                                                  conditionOfTrees:
                                                      'ALL HEALTHY',
                                                  totalTrees:
                                                      containerAllTreesDeliveredRecord
                                                          ?.whiteSapote
                                                          ?.toDouble(),
                                                ));

                                                await TotalTreesInAFieldRecord
                                                        .createDoc(widget!
                                                            .mainFieldDoc!
                                                            .reference)
                                                    .set(
                                                        createTotalTreesInAFieldRecordData(
                                                  species: 'PODO',
                                                  conditionOfTrees:
                                                      'ALL HEALTHY',
                                                  totalTrees:
                                                      containerAllTreesDeliveredRecord
                                                          ?.podo
                                                          ?.toDouble(),
                                                ));

                                                await TotalTreesInAFieldRecord
                                                        .createDoc(widget!
                                                            .mainFieldDoc!
                                                            .reference)
                                                    .set(
                                                        createTotalTreesInAFieldRecordData(
                                                  species: 'PRUNUS AFRICANA',
                                                  conditionOfTrees:
                                                      'ALL HEALTHY',
                                                  totalTrees:
                                                      containerAllTreesDeliveredRecord
                                                          ?.prunusAfricana
                                                          ?.toDouble(),
                                                ));

                                                await TotalTreesInAFieldRecord
                                                        .createDoc(widget!
                                                            .mainFieldDoc!
                                                            .reference)
                                                    .set(
                                                        createTotalTreesInAFieldRecordData(
                                                  species: 'MEXICAN GREENASH',
                                                  conditionOfTrees:
                                                      'ALL HEALTHY',
                                                  totalTrees:
                                                      containerAllTreesDeliveredRecord
                                                          ?.mango
                                                          ?.toDouble(),
                                                ));

                                                await TotalTreesInAFieldRecord
                                                        .createDoc(widget!
                                                            .mainFieldDoc!
                                                            .reference)
                                                    .set(
                                                        createTotalTreesInAFieldRecordData(
                                                  species: 'MANGO',
                                                  conditionOfTrees:
                                                      'ALL HEALTHY',
                                                  totalTrees:
                                                      containerAllTreesDeliveredRecord
                                                          ?.mexicanGreenash
                                                          ?.toDouble(),
                                                ));

                                                await TotalTreesInAFieldRecord
                                                        .createDoc(widget!
                                                            .mainFieldDoc!
                                                            .reference)
                                                    .set(
                                                        createTotalTreesInAFieldRecordData(
                                                  species: 'BLUE GUM',
                                                  conditionOfTrees:
                                                      'ALL HEALTHY',
                                                  totalTrees:
                                                      containerAllTreesDeliveredRecord
                                                          ?.blueGum
                                                          ?.toDouble(),
                                                ));

                                                await TotalTreesInAFieldRecord
                                                        .createDoc(widget!
                                                            .mainFieldDoc!
                                                            .reference)
                                                    .set(
                                                        createTotalTreesInAFieldRecordData(
                                                  species: 'SALIGNA',
                                                  conditionOfTrees:
                                                      'ALL HEALTHY',
                                                  totalTrees:
                                                      containerAllTreesDeliveredRecord
                                                          ?.saligna
                                                          ?.toDouble(),
                                                ));

                                                await TotalTreesInAFieldRecord
                                                        .createDoc(widget!
                                                            .mainFieldDoc!
                                                            .reference)
                                                    .set(
                                                        createTotalTreesInAFieldRecordData(
                                                  species:
                                                      'MACADAMIA-MURANG\'A 20',
                                                  conditionOfTrees:
                                                      'ALL HEALTHY',
                                                  totalTrees:
                                                      containerAllTreesDeliveredRecord
                                                          ?.macadamiaMuranga20
                                                          ?.toDouble(),
                                                ));

                                                await TotalTreesInAFieldRecord
                                                        .createDoc(widget!
                                                            .mainFieldDoc!
                                                            .reference)
                                                    .set(
                                                        createTotalTreesInAFieldRecordData(
                                                  species: 'TANGERINE',
                                                  conditionOfTrees:
                                                      'ALL HEALTHY',
                                                  totalTrees:
                                                      containerAllTreesDeliveredRecord
                                                          ?.tangerine
                                                          ?.toDouble(),
                                                ));

                                                await TotalTreesInAFieldRecord
                                                        .createDoc(widget!
                                                            .mainFieldDoc!
                                                            .reference)
                                                    .set(
                                                        createTotalTreesInAFieldRecordData(
                                                  species: 'GUAVA',
                                                  conditionOfTrees:
                                                      'ALL HEALTHY',
                                                  totalTrees:
                                                      containerAllTreesDeliveredRecord
                                                          ?.guava
                                                          ?.toDouble(),
                                                ));

                                                await TotalTreesInAFieldRecord
                                                        .createDoc(widget!
                                                            .mainFieldDoc!
                                                            .reference)
                                                    .set(
                                                        createTotalTreesInAFieldRecordData(
                                                  species: 'PIXIE ORANGES',
                                                  conditionOfTrees:
                                                      'ALL HEALTHY',
                                                  totalTrees:
                                                      containerAllTreesDeliveredRecord
                                                          ?.pixieOranges
                                                          ?.toDouble(),
                                                ));

                                                await TotalTreesInAFieldRecord
                                                        .createDoc(widget!
                                                            .mainFieldDoc!
                                                            .reference)
                                                    .set(
                                                        createTotalTreesInAFieldRecordData(
                                                  species: 'BERRY',
                                                  conditionOfTrees:
                                                      'ALL HEALTHY',
                                                  totalTrees:
                                                      containerAllTreesDeliveredRecord
                                                          ?.berry
                                                          ?.toDouble(),
                                                ));

                                                await TotalTreesInAFieldRecord
                                                        .createDoc(widget!
                                                            .mainFieldDoc!
                                                            .reference)
                                                    .set(
                                                        createTotalTreesInAFieldRecordData(
                                                  species: 'HASS AVOCADO',
                                                  conditionOfTrees:
                                                      'ALL HEALTHY',
                                                  totalTrees:
                                                      containerAllTreesDeliveredRecord
                                                          ?.hassAvocado
                                                          ?.toDouble(),
                                                ));

                                                await TotalTreesInAFieldRecord
                                                        .createDoc(widget!
                                                            .mainFieldDoc!
                                                            .reference)
                                                    .set(
                                                        createTotalTreesInAFieldRecordData(
                                                  species: 'BOTTLE BRUSH',
                                                  conditionOfTrees:
                                                      'ALL HEALTHY',
                                                  totalTrees:
                                                      containerAllTreesDeliveredRecord
                                                          ?.bottleBrush
                                                          ?.toDouble(),
                                                ));

                                                await TotalTreesInAFieldRecord
                                                        .createDoc(widget!
                                                            .mainFieldDoc!
                                                            .reference)
                                                    .set(
                                                        createTotalTreesInAFieldRecordData(
                                                  species: 'GREVILLEA',
                                                  conditionOfTrees:
                                                      'ALL HEALTHY',
                                                  totalTrees:
                                                      containerAllTreesDeliveredRecord
                                                          ?.grevillea
                                                          ?.toDouble(),
                                                ));

                                                await TotalTreesInAFieldRecord
                                                        .createDoc(widget!
                                                            .mainFieldDoc!
                                                            .reference)
                                                    .set(
                                                        createTotalTreesInAFieldRecordData(
                                                  species: 'GIANT BAMBOO',
                                                  conditionOfTrees:
                                                      'ALL HEALTHY',
                                                  totalTrees:
                                                      containerAllTreesDeliveredRecord
                                                          ?.giantBamboo
                                                          ?.toDouble(),
                                                ));

                                                await TotalTreesInAFieldRecord
                                                        .createDoc(widget!
                                                            .mainFieldDoc!
                                                            .reference)
                                                    .set(
                                                        createTotalTreesInAFieldRecordData(
                                                  species: 'NEEM',
                                                  conditionOfTrees:
                                                      'ALL HEALTHY',
                                                  totalTrees:
                                                      containerAllTreesDeliveredRecord
                                                          ?.neem
                                                          ?.toDouble(),
                                                ));

                                                await TotalTreesInAFieldRecord
                                                        .createDoc(widget!
                                                            .mainFieldDoc!
                                                            .reference)
                                                    .set(
                                                        createTotalTreesInAFieldRecordData(
                                                  species: 'MORINGA',
                                                  conditionOfTrees:
                                                      'ALL HEALTHY',
                                                  totalTrees:
                                                      containerAllTreesDeliveredRecord
                                                          ?.moringa
                                                          ?.toDouble(),
                                                ));

                                                await TotalTreesInAFieldRecord
                                                        .createDoc(widget!
                                                            .mainFieldDoc!
                                                            .reference)
                                                    .set(
                                                        createTotalTreesInAFieldRecordData(
                                                  species: 'ASHOK',
                                                  conditionOfTrees:
                                                      'ALL HEALTHY',
                                                  totalTrees:
                                                      containerAllTreesDeliveredRecord
                                                          ?.ashok
                                                          ?.toDouble(),
                                                ));

                                                await TotalTreesInAFieldRecord
                                                        .createDoc(widget!
                                                            .mainFieldDoc!
                                                            .reference)
                                                    .set(
                                                        createTotalTreesInAFieldRecordData(
                                                  species: 'ACACIA',
                                                  conditionOfTrees:
                                                      'ALL HEALTHY',
                                                  totalTrees:
                                                      containerAllTreesDeliveredRecord
                                                          ?.acacia
                                                          ?.toDouble(),
                                                ));

                                                await TotalTreesInAFieldRecord
                                                        .createDoc(widget!
                                                            .mainFieldDoc!
                                                            .reference)
                                                    .set(
                                                        createTotalTreesInAFieldRecordData(
                                                  species: 'MAHOGANY',
                                                  conditionOfTrees:
                                                      'ALL HEALTHY',
                                                  totalTrees:
                                                      containerAllTreesDeliveredRecord
                                                          ?.mahogany
                                                          ?.toDouble(),
                                                ));

                                                await TotalTreesInAFieldRecord
                                                        .createDoc(widget!
                                                            .mainFieldDoc!
                                                            .reference)
                                                    .set(
                                                        createTotalTreesInAFieldRecordData(
                                                  species: 'TERMINALIA',
                                                  conditionOfTrees:
                                                      'ALL HEALTHY',
                                                  totalTrees:
                                                      containerAllTreesDeliveredRecord
                                                          ?.terminalia
                                                          ?.toDouble(),
                                                ));

                                                await TotalTreesInAFieldRecord
                                                        .createDoc(widget!
                                                            .mainFieldDoc!
                                                            .reference)
                                                    .set(
                                                        createTotalTreesInAFieldRecordData(
                                                  species: 'EUCALYPTUS',
                                                  conditionOfTrees:
                                                      'ALL HEALTHY',
                                                  totalTrees:
                                                      containerAllTreesDeliveredRecord
                                                          ?.eucalyptus
                                                          ?.toDouble(),
                                                ));

                                                await TotalTreesInAFieldRecord
                                                        .createDoc(widget!
                                                            .mainFieldDoc!
                                                            .reference)
                                                    .set(
                                                        createTotalTreesInAFieldRecordData(
                                                  species: 'PAWPAW',
                                                  conditionOfTrees:
                                                      'ALL HEALTHY',
                                                  totalTrees:
                                                      containerAllTreesDeliveredRecord
                                                          ?.pawpaw
                                                          ?.toDouble(),
                                                ));

                                                await TotalTreesInAFieldRecord
                                                        .createDoc(widget!
                                                            .mainFieldDoc!
                                                            .reference)
                                                    .set(
                                                        createTotalTreesInAFieldRecordData(
                                                  species: 'PASSION',
                                                  conditionOfTrees:
                                                      'ALL HEALTHY',
                                                  totalTrees:
                                                      containerAllTreesDeliveredRecord
                                                          ?.passion
                                                          ?.toDouble(),
                                                ));

                                                await TotalTreesInAFieldRecord
                                                        .createDoc(widget!
                                                            .mainFieldDoc!
                                                            .reference)
                                                    .set(
                                                        createTotalTreesInAFieldRecordData(
                                                  species: 'LOQUAT',
                                                  conditionOfTrees:
                                                      'ALL HEALTHY',
                                                  totalTrees:
                                                      containerAllTreesDeliveredRecord
                                                          ?.loquat
                                                          ?.toDouble(),
                                                ));

                                                await TotalTreesInAFieldRecord
                                                        .createDoc(widget!
                                                            .mainFieldDoc!
                                                            .reference)
                                                    .set(
                                                        createTotalTreesInAFieldRecordData(
                                                  species: 'PINE',
                                                  conditionOfTrees:
                                                      'ALL HEALTHY',
                                                  totalTrees:
                                                      containerAllTreesDeliveredRecord
                                                          ?.pine
                                                          ?.toDouble(),
                                                ));

                                                await TotalTreesInAFieldRecord
                                                        .createDoc(widget!
                                                            .mainFieldDoc!
                                                            .reference)
                                                    .set(
                                                        createTotalTreesInAFieldRecordData(
                                                  species: 'MLUKINA',
                                                  conditionOfTrees:
                                                      'ALL HEALTHY',
                                                  totalTrees:
                                                      containerAllTreesDeliveredRecord
                                                          ?.mlukina
                                                          ?.toDouble(),
                                                ));

                                                await TotalTreesInAFieldRecord
                                                        .createDoc(widget!
                                                            .mainFieldDoc!
                                                            .reference)
                                                    .set(
                                                        createTotalTreesInAFieldRecordData(
                                                  species: 'MKILIFI',
                                                  conditionOfTrees:
                                                      'ALL HEALTHY',
                                                  totalTrees:
                                                      containerAllTreesDeliveredRecord
                                                          ?.mkilifi
                                                          ?.toDouble(),
                                                ));

                                                await TotalTreesInAFieldRecord
                                                        .createDoc(widget!
                                                            .mainFieldDoc!
                                                            .reference)
                                                    .set(
                                                        createTotalTreesInAFieldRecordData(
                                                  species: 'MSUKUKU',
                                                  conditionOfTrees:
                                                      'ALL HEALTHY',
                                                  totalTrees:
                                                      containerAllTreesDeliveredRecord
                                                          ?.msukuku
                                                          ?.toDouble(),
                                                ));

                                                await TotalTreesInAFieldRecord
                                                        .createDoc(widget!
                                                            .mainFieldDoc!
                                                            .reference)
                                                    .set(
                                                        createTotalTreesInAFieldRecordData(
                                                  species: 'MSONOBARI',
                                                  conditionOfTrees:
                                                      'ALL HEALTHY',
                                                  totalTrees:
                                                      containerAllTreesDeliveredRecord
                                                          ?.msonobari
                                                          ?.toDouble(),
                                                ));

                                                await TotalTreesInAFieldRecord
                                                        .createDoc(widget!
                                                            .mainFieldDoc!
                                                            .reference)
                                                    .set(
                                                        createTotalTreesInAFieldRecordData(
                                                  species: 'TOMOKO',
                                                  conditionOfTrees:
                                                      'ALL HEALTHY',
                                                  totalTrees:
                                                      containerAllTreesDeliveredRecord
                                                          ?.tomoko
                                                          ?.toDouble(),
                                                ));

                                                await TotalTreesInAFieldRecord
                                                        .createDoc(widget!
                                                            .mainFieldDoc!
                                                            .reference)
                                                    .set(
                                                        createTotalTreesInAFieldRecordData(
                                                  species: 'CITRUS',
                                                  conditionOfTrees:
                                                      'ALL HEALTHY',
                                                  totalTrees:
                                                      containerAllTreesDeliveredRecord
                                                          ?.citrus
                                                          ?.toDouble(),
                                                ));

                                                await TotalTreesInAFieldRecord
                                                        .createDoc(widget!
                                                            .mainFieldDoc!
                                                            .reference)
                                                    .set(
                                                        createTotalTreesInAFieldRecordData(
                                                  species: 'MBIRIMBI',
                                                  conditionOfTrees:
                                                      'ALL HEALTHY',
                                                  totalTrees:
                                                      containerAllTreesDeliveredRecord
                                                          ?.mbirimbi
                                                          ?.toDouble(),
                                                ));

                                                await TotalTreesInAFieldRecord
                                                        .createDoc(widget!
                                                            .mainFieldDoc!
                                                            .reference)
                                                    .set(
                                                        createTotalTreesInAFieldRecordData(
                                                  species: 'GLICIDIA',
                                                  conditionOfTrees:
                                                      'ALL HEALTHY',
                                                  totalTrees:
                                                      containerAllTreesDeliveredRecord
                                                          ?.glicidia
                                                          ?.toDouble(),
                                                ));
                                                ScaffoldMessenger.of(context)
                                                    .showSnackBar(
                                                  SnackBar(
                                                    content: Text(
                                                      'Succesfully Updated',
                                                      style: TextStyle(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                      ),
                                                    ),
                                                    duration: Duration(
                                                        milliseconds: 4000),
                                                    backgroundColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .secondary,
                                                  ),
                                                );
                                              },
                                              child: Icon(
                                                Icons.refresh_rounded,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                size: 35.0,
                                              ),
                                            ),
                                          ),
                                      ].divide(SizedBox(height: 2.0)),
                                    ),
                                  ),
                                );
                              },
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 4.0, 0.0, 0.0),
                    child: Text(
                      'During VisitationTap  on the species you want to update in ${valueOrDefault<String>(
                        widget!.mainFieldDoc?.institution,
                        'default institution/field name',
                      )}',
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).labelMedium.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).labelMediumFamily,
                            letterSpacing: 0.0,
                            useGoogleFonts: !FlutterFlowTheme.of(context)
                                .labelMediumIsCustom,
                          ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 44.0),
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 4.0,
                            color: Color(0x1F000000),
                            offset: Offset(
                              0.0,
                              2.0,
                            ),
                          )
                        ],
                        borderRadius: BorderRadius.circular(8.0),
                        border: Border.all(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          width: 1.0,
                        ),
                      ),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 150.0,
                                          height: 50.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                'SPECIES',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          fontSize: 16.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMediumIsCustom,
                                                        ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 150.0,
                                          height: 50.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                'TOTAL NUMBER PLANTED',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          fontSize: 16.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMediumIsCustom,
                                                        ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 150.0,
                                          height: 50.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                'TOTAL ALIVE',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          fontSize: 16.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMediumIsCustom,
                                                        ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 150.0,
                                          height: 50.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                'CONDITION',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          fontSize: 16.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMediumIsCustom,
                                                        ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 150.0,
                                          height: 50.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                'Visitation History',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          fontSize: 16.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMediumIsCustom,
                                                        ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ].divide(SizedBox(width: 1.0)),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 20.0),
                                  child: StreamBuilder<
                                      List<TotalTreesInAFieldRecord>>(
                                    stream: _model.speciesinaField(
                                      requestFn: () =>
                                          queryTotalTreesInAFieldRecord(
                                        parent: widget!.mainFieldDoc?.reference,
                                        queryBuilder:
                                            (totalTreesInAFieldRecord) =>
                                                totalTreesInAFieldRecord.where(
                                          'totalTrees',
                                          isGreaterThan: 0 + 0,
                                        ),
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
                                      List<TotalTreesInAFieldRecord>
                                          columnTotalTreesInAFieldRecordList =
                                          snapshot.data!;

                                      return Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: List.generate(
                                            columnTotalTreesInAFieldRecordList
                                                .length, (columnIndex) {
                                          final columnTotalTreesInAFieldRecord =
                                              columnTotalTreesInAFieldRecordList[
                                                  columnIndex];
                                          return Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 3.0, 0.0, 3.0),
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                context.pushNamed(
                                                  VisitataionPageWidget
                                                      .routeName,
                                                  queryParameters: {
                                                    'speciesInaFieldDoc':
                                                        serializeParam(
                                                      columnTotalTreesInAFieldRecord,
                                                      ParamType.Document,
                                                    ),
                                                    'fieldDoc': serializeParam(
                                                      widget!.mainFieldDoc,
                                                      ParamType.Document,
                                                    ),
                                                  }.withoutNulls,
                                                  extra: <String, dynamic>{
                                                    'speciesInaFieldDoc':
                                                        columnTotalTreesInAFieldRecord,
                                                    'fieldDoc':
                                                        widget!.mainFieldDoc,
                                                  },
                                                );
                                              },
                                              onLongPress: () async {
                                                var confirmDialogResponse =
                                                    await showDialog<bool>(
                                                          context: context,
                                                          builder:
                                                              (alertDialogContext) {
                                                            return AlertDialog(
                                                              title: Text(
                                                                  'DELETION ALERT'),
                                                              content: Text(
                                                                  'ARE YOU SURE YOU WANT TO DELETE THIS BATCH'),
                                                              actions: [
                                                                TextButton(
                                                                  onPressed: () =>
                                                                      Navigator.pop(
                                                                          alertDialogContext,
                                                                          false),
                                                                  child: Text(
                                                                      'Cancel'),
                                                                ),
                                                                TextButton(
                                                                  onPressed: () =>
                                                                      Navigator.pop(
                                                                          alertDialogContext,
                                                                          true),
                                                                  child: Text(
                                                                      'Confirm'),
                                                                ),
                                                              ],
                                                            );
                                                          },
                                                        ) ??
                                                        false;
                                                if (confirmDialogResponse) {
                                                  await columnTotalTreesInAFieldRecord
                                                      .reference
                                                      .delete();
                                                }
                                              },
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        2.0),
                                                            child: Container(
                                                              width: 150.0,
                                                              height: 40.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                boxShadow: [
                                                                  BoxShadow(
                                                                    blurRadius:
                                                                        0.0,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .lineColor,
                                                                    offset:
                                                                        Offset(
                                                                      0.0,
                                                                      1.0,
                                                                    ),
                                                                  )
                                                                ],
                                                              ),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  AlignedTooltip(
                                                                    content:
                                                                        Padding(
                                                                      padding:
                                                                          EdgeInsets.all(
                                                                              4.0),
                                                                      child:
                                                                          Text(
                                                                        columnTotalTreesInAFieldRecord
                                                                            .species,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyLarge
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).bodyLargeFamily,
                                                                              letterSpacing: 0.0,
                                                                              useGoogleFonts: !FlutterFlowTheme.of(context).bodyLargeIsCustom,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                    offset: 4.0,
                                                                    preferredDirection:
                                                                        AxisDirection
                                                                            .down,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                    backgroundColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                    elevation:
                                                                        4.0,
                                                                    tailBaseWidth:
                                                                        24.0,
                                                                    tailLength:
                                                                        12.0,
                                                                    waitDuration:
                                                                        Duration(
                                                                            milliseconds:
                                                                                100),
                                                                    showDuration:
                                                                        Duration(
                                                                            milliseconds:
                                                                                1500),
                                                                    triggerMode:
                                                                        TooltipTriggerMode
                                                                            .tap,
                                                                    child:
                                                                        AutoSizeText(
                                                                      valueOrDefault<
                                                                          String>(
                                                                        columnTotalTreesInAFieldRecord
                                                                            .species,
                                                                        'not set',
                                                                      ).maybeHandleOverflow(
                                                                        maxChars:
                                                                            32,
                                                                        replacement:
                                                                            '…',
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyLarge
                                                                          .override(
                                                                            fontFamily:
                                                                                FlutterFlowTheme.of(context).bodyLargeFamily,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            useGoogleFonts:
                                                                                !FlutterFlowTheme.of(context).bodyLargeIsCustom,
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
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        2.0),
                                                            child: Container(
                                                              width: 150.0,
                                                              height: 40.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                boxShadow: [
                                                                  BoxShadow(
                                                                    blurRadius:
                                                                        0.0,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .lineColor,
                                                                    offset:
                                                                        Offset(
                                                                      0.0,
                                                                      1.0,
                                                                    ),
                                                                  )
                                                                ],
                                                              ),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  AlignedTooltip(
                                                                    content:
                                                                        Padding(
                                                                      padding:
                                                                          EdgeInsets.all(
                                                                              4.0),
                                                                      child:
                                                                          Text(
                                                                        columnTotalTreesInAFieldRecord
                                                                            .totalTrees
                                                                            .toString(),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyLarge
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).bodyLargeFamily,
                                                                              letterSpacing: 0.0,
                                                                              useGoogleFonts: !FlutterFlowTheme.of(context).bodyLargeIsCustom,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                    offset: 4.0,
                                                                    preferredDirection:
                                                                        AxisDirection
                                                                            .down,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                    backgroundColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                    elevation:
                                                                        4.0,
                                                                    tailBaseWidth:
                                                                        24.0,
                                                                    tailLength:
                                                                        12.0,
                                                                    waitDuration:
                                                                        Duration(
                                                                            milliseconds:
                                                                                100),
                                                                    showDuration:
                                                                        Duration(
                                                                            milliseconds:
                                                                                1500),
                                                                    triggerMode:
                                                                        TooltipTriggerMode
                                                                            .tap,
                                                                    child:
                                                                        AutoSizeText(
                                                                      valueOrDefault<
                                                                          String>(
                                                                        columnTotalTreesInAFieldRecord
                                                                            .totalTrees
                                                                            .toString(),
                                                                        'not set',
                                                                      ).maybeHandleOverflow(
                                                                        maxChars:
                                                                            12,
                                                                        replacement:
                                                                            '…',
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyLarge
                                                                          .override(
                                                                            fontFamily:
                                                                                FlutterFlowTheme.of(context).bodyLargeFamily,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            useGoogleFonts:
                                                                                !FlutterFlowTheme.of(context).bodyLargeIsCustom,
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
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        2.0),
                                                            child: Container(
                                                              width: 150.0,
                                                              height: 40.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                boxShadow: [
                                                                  BoxShadow(
                                                                    blurRadius:
                                                                        0.0,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .lineColor,
                                                                    offset:
                                                                        Offset(
                                                                      0.0,
                                                                      1.0,
                                                                    ),
                                                                  )
                                                                ],
                                                              ),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  AutoSizeText(
                                                                    columnTotalTreesInAFieldRecord
                                                                        .totalTrees
                                                                        .toString()
                                                                        .maybeHandleOverflow(
                                                                          maxChars:
                                                                              32,
                                                                          replacement:
                                                                              '…',
                                                                        ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyLarge
                                                                        .override(
                                                                          fontFamily:
                                                                              FlutterFlowTheme.of(context).bodyLargeFamily,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          useGoogleFonts:
                                                                              !FlutterFlowTheme.of(context).bodyLargeIsCustom,
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
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        2.0),
                                                            child: Container(
                                                              width: 150.0,
                                                              height: 40.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                boxShadow: [
                                                                  BoxShadow(
                                                                    blurRadius:
                                                                        0.0,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .lineColor,
                                                                    offset:
                                                                        Offset(
                                                                      0.0,
                                                                      1.0,
                                                                    ),
                                                                  )
                                                                ],
                                                              ),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  AutoSizeText(
                                                                    columnTotalTreesInAFieldRecord
                                                                        .conditionOfTrees
                                                                        .maybeHandleOverflow(
                                                                      maxChars:
                                                                          32,
                                                                      replacement:
                                                                          '…',
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyLarge
                                                                        .override(
                                                                          fontFamily:
                                                                              FlutterFlowTheme.of(context).bodyLargeFamily,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          useGoogleFonts:
                                                                              !FlutterFlowTheme.of(context).bodyLargeIsCustom,
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
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        2.0),
                                                            child: InkWell(
                                                              splashColor: Colors
                                                                  .transparent,
                                                              focusColor: Colors
                                                                  .transparent,
                                                              hoverColor: Colors
                                                                  .transparent,
                                                              highlightColor:
                                                                  Colors
                                                                      .transparent,
                                                              onTap: () async {
                                                                context
                                                                    .pushNamed(
                                                                  MainVisitPageWidget
                                                                      .routeName,
                                                                  queryParameters:
                                                                      {
                                                                    'fieldDoc':
                                                                        serializeParam(
                                                                      widget!
                                                                          .mainFieldDoc,
                                                                      ParamType
                                                                          .Document,
                                                                    ),
                                                                  }.withoutNulls,
                                                                  extra: <String,
                                                                      dynamic>{
                                                                    'fieldDoc':
                                                                        widget!
                                                                            .mainFieldDoc,
                                                                  },
                                                                );
                                                              },
                                                              child: Container(
                                                                width: 150.0,
                                                                height: 40.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  boxShadow: [
                                                                    BoxShadow(
                                                                      blurRadius:
                                                                          0.0,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .lineColor,
                                                                      offset:
                                                                          Offset(
                                                                        0.0,
                                                                        1.0,
                                                                      ),
                                                                    )
                                                                  ],
                                                                ),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Icon(
                                                                      Icons
                                                                          .history_edu,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                      size:
                                                                          27.0,
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ].divide(SizedBox(width: 1.0)),
                                              ),
                                            ),
                                          );
                                        }),
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 4.0, 0.0, 0.0),
                    child: Text(
                      'Below are all tree batches added to ${valueOrDefault<String>(
                        widget!.mainFieldDoc?.institution,
                        'default institution/field name',
                      )}',
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).labelMedium.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).labelMediumFamily,
                            letterSpacing: 0.0,
                            useGoogleFonts: !FlutterFlowTheme.of(context)
                                .labelMediumIsCustom,
                          ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 44.0),
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 4.0,
                            color: Color(0x1F000000),
                            offset: Offset(
                              0.0,
                              2.0,
                            ),
                          )
                        ],
                        borderRadius: BorderRadius.circular(8.0),
                        border: Border.all(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          width: 1.0,
                        ),
                      ),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 150.0,
                                          height: 50.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                'Date of planting\n/Visit',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          fontSize: 16.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMediumIsCustom,
                                                        ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 150.0,
                                          height: 50.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                'Species',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          fontSize: 16.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMediumIsCustom,
                                                        ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 150.0,
                                          height: 50.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                'Total Trees Planted',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          fontSize: 16.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMediumIsCustom,
                                                        ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 150.0,
                                          height: 50.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                'Total Trees Alive',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          fontSize: 16.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMediumIsCustom,
                                                        ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 150.0,
                                          height: 50.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                'Condition',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          fontSize: 16.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMediumIsCustom,
                                                        ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 150.0,
                                          height: 50.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                'Total Dead Trees',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          fontSize: 16.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMediumIsCustom,
                                                        ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 150.0,
                                          height: 50.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                'Planter Company',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          fontSize: 16.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMediumIsCustom,
                                                        ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 170.0,
                                          height: 50.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                'Date of Replacement',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          fontSize: 16.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMediumIsCustom,
                                                        ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                StreamBuilder<List<AllTreesDeliveredRecord>>(
                                  stream: queryAllTreesDeliveredRecord(
                                    queryBuilder: (allTreesDeliveredRecord) =>
                                        allTreesDeliveredRecord.where(
                                      'INSTITUTION',
                                      isEqualTo:
                                          widget!.mainFieldDoc?.institution,
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
                                    List<AllTreesDeliveredRecord>
                                        columnAllTreesDeliveredRecordList =
                                        snapshot.data!;

                                    return Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: List.generate(
                                          columnAllTreesDeliveredRecordList
                                              .length, (columnIndex) {
                                        final columnAllTreesDeliveredRecord =
                                            columnAllTreesDeliveredRecordList[
                                                columnIndex];
                                        return InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onLongPress: () async {
                                            var confirmDialogResponse =
                                                await showDialog<bool>(
                                                      context: context,
                                                      builder:
                                                          (alertDialogContext) {
                                                        return AlertDialog(
                                                          title: Text(
                                                              'Deletion Alert!'),
                                                          content: Text(
                                                              'Delete: ${columnAllTreesDeliveredRecord.treeSpeciesDelivered} Total: ${columnAllTreesDeliveredRecord.numberOfTreesDelivered.toString()}'),
                                                          actions: [
                                                            TextButton(
                                                              onPressed: () =>
                                                                  Navigator.pop(
                                                                      alertDialogContext,
                                                                      false),
                                                              child: Text(
                                                                  'Cancel'),
                                                            ),
                                                            TextButton(
                                                              onPressed: () =>
                                                                  Navigator.pop(
                                                                      alertDialogContext,
                                                                      true),
                                                              child: Text(
                                                                  'Confirm'),
                                                            ),
                                                          ],
                                                        );
                                                      },
                                                    ) ??
                                                    false;
                                            if (confirmDialogResponse) {
                                              _model.confirmQuery =
                                                  await queryTotalTreesInAFieldRecordOnce(
                                                parent: widget!
                                                    .mainFieldDoc?.reference,
                                                queryBuilder:
                                                    (totalTreesInAFieldRecord) =>
                                                        totalTreesInAFieldRecord
                                                            .where(
                                                  'species',
                                                  isEqualTo:
                                                      columnAllTreesDeliveredRecord
                                                          .treeSpeciesDelivered,
                                                ),
                                                singleRecord: true,
                                              ).then((s) => s.firstOrNull);
                                              if (_model
                                                      .confirmQuery?.species ==
                                                  columnAllTreesDeliveredRecord
                                                      .treeSpeciesDelivered) {
                                                await _model
                                                    .confirmQuery!.reference
                                                    .update(
                                                        createTotalTreesInAFieldRecordData(
                                                  totalTrees: _model
                                                          .confirmQuery!
                                                          .totalTrees -
                                                      columnAllTreesDeliveredRecord
                                                          .numberOfTreesDelivered,
                                                ));
                                              }
                                              _model.speciesref =
                                                  await queryTotalTreesPerSpeciesRecordOnce(
                                                queryBuilder:
                                                    (totalTreesPerSpeciesRecord) =>
                                                        totalTreesPerSpeciesRecord
                                                            .where(
                                                  'treeName',
                                                  isEqualTo:
                                                      columnAllTreesDeliveredRecord
                                                          .treeSpeciesDelivered,
                                                ),
                                                singleRecord: true,
                                              ).then((s) => s.firstOrNull);

                                              await _model.speciesref!.reference
                                                  .update(
                                                      createTotalTreesPerSpeciesRecordData(
                                                totalTrees: _model.speciesref!
                                                        .totalTrees -
                                                    columnAllTreesDeliveredRecord
                                                        .numberOfTreesDelivered,
                                              ));
                                              _model.distpercounty =
                                                  await queryDistributionPerCountyRecordOnce(
                                                queryBuilder:
                                                    (distributionPerCountyRecord) =>
                                                        distributionPerCountyRecord
                                                            .where(
                                                  'county',
                                                  isEqualTo:
                                                      columnAllTreesDeliveredRecord
                                                          .county,
                                                ),
                                                singleRecord: true,
                                              ).then((s) => s.firstOrNull);

                                              await _model
                                                  .distpercounty!.reference
                                                  .update(
                                                      createDistributionPerCountyRecordData(
                                                totalTrees: _model
                                                        .distpercounty!
                                                        .totalTrees -
                                                    columnAllTreesDeliveredRecord
                                                        .numberOfTreesDelivered,
                                              ));
                                              await columnAllTreesDeliveredRecord
                                                  .reference
                                                  .delete();
                                            }

                                            safeSetState(() {});
                                          },
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    2.0),
                                                        child: Container(
                                                          width: 150.0,
                                                          height: 30.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            boxShadow: [
                                                              BoxShadow(
                                                                blurRadius: 0.0,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .lineColor,
                                                                offset: Offset(
                                                                  0.0,
                                                                  1.0,
                                                                ),
                                                              )
                                                            ],
                                                          ),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              AutoSizeText(
                                                                valueOrDefault<
                                                                    String>(
                                                                  columnAllTreesDeliveredRecord
                                                                              .dateofPlanting !=
                                                                          null
                                                                      ? dateTimeFormat(
                                                                          "yMMMd",
                                                                          columnAllTreesDeliveredRecord
                                                                              .dateofPlanting)
                                                                      : valueOrDefault<
                                                                          String>(
                                                                          columnAllTreesDeliveredRecord
                                                                              .deliveryDate,
                                                                          'not set',
                                                                        ),
                                                                  'not set',
                                                                ).maybeHandleOverflow(
                                                                  maxChars: 32,
                                                                  replacement:
                                                                      '…',
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLarge
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyLargeFamily,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts:
                                                                          !FlutterFlowTheme.of(context)
                                                                              .bodyLargeIsCustom,
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
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    2.0),
                                                        child: Container(
                                                          width: 150.0,
                                                          height: 30.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            boxShadow: [
                                                              BoxShadow(
                                                                blurRadius: 0.0,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .lineColor,
                                                                offset: Offset(
                                                                  0.0,
                                                                  1.0,
                                                                ),
                                                              )
                                                            ],
                                                          ),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              AlignedTooltip(
                                                                content:
                                                                    Padding(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .all(
                                                                              4.0),
                                                                  child: Text(
                                                                    valueOrDefault<
                                                                        String>(
                                                                      columnAllTreesDeliveredRecord
                                                                          .treeSpeciesDelivered,
                                                                      'not set',
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyLarge
                                                                        .override(
                                                                          fontFamily:
                                                                              FlutterFlowTheme.of(context).bodyLargeFamily,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          useGoogleFonts:
                                                                              !FlutterFlowTheme.of(context).bodyLargeIsCustom,
                                                                        ),
                                                                  ),
                                                                ),
                                                                offset: 4.0,
                                                                preferredDirection:
                                                                    AxisDirection
                                                                        .down,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                                backgroundColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                elevation: 4.0,
                                                                tailBaseWidth:
                                                                    24.0,
                                                                tailLength:
                                                                    12.0,
                                                                waitDuration:
                                                                    Duration(
                                                                        milliseconds:
                                                                            100),
                                                                showDuration:
                                                                    Duration(
                                                                        milliseconds:
                                                                            1500),
                                                                triggerMode:
                                                                    TooltipTriggerMode
                                                                        .tap,
                                                                child:
                                                                    AutoSizeText(
                                                                  valueOrDefault<
                                                                      String>(
                                                                    columnAllTreesDeliveredRecord
                                                                        .treeSpeciesDelivered,
                                                                    'not set',
                                                                  ).maybeHandleOverflow(
                                                                    maxChars:
                                                                        12,
                                                                    replacement:
                                                                        '…',
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLarge
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).bodyLargeFamily,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            !FlutterFlowTheme.of(context).bodyLargeIsCustom,
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
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    2.0),
                                                        child: Container(
                                                          width: 150.0,
                                                          height: 30.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            boxShadow: [
                                                              BoxShadow(
                                                                blurRadius: 0.0,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .lineColor,
                                                                offset: Offset(
                                                                  0.0,
                                                                  1.0,
                                                                ),
                                                              )
                                                            ],
                                                          ),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              AutoSizeText(
                                                                valueOrDefault<
                                                                    String>(
                                                                  columnAllTreesDeliveredRecord
                                                                      .totalTreeSpecies
                                                                      .toString(),
                                                                  'not set',
                                                                ).maybeHandleOverflow(
                                                                  maxChars: 32,
                                                                  replacement:
                                                                      '…',
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLarge
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyLargeFamily,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts:
                                                                          !FlutterFlowTheme.of(context)
                                                                              .bodyLargeIsCustom,
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
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    2.0),
                                                        child: Container(
                                                          width: 150.0,
                                                          height: 30.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            boxShadow: [
                                                              BoxShadow(
                                                                blurRadius: 0.0,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .lineColor,
                                                                offset: Offset(
                                                                  0.0,
                                                                  1.0,
                                                                ),
                                                              )
                                                            ],
                                                          ),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              AutoSizeText(
                                                                valueOrDefault<
                                                                    String>(
                                                                  columnAllTreesDeliveredRecord
                                                                      .totalAliveTreesList
                                                                      .firstOrNull
                                                                      ?.toString(),
                                                                  'to be set',
                                                                ).maybeHandleOverflow(
                                                                  maxChars: 32,
                                                                  replacement:
                                                                      '…',
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLarge
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyLargeFamily,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts:
                                                                          !FlutterFlowTheme.of(context)
                                                                              .bodyLargeIsCustom,
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
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    2.0),
                                                        child: Container(
                                                          width: 150.0,
                                                          height: 30.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            boxShadow: [
                                                              BoxShadow(
                                                                blurRadius: 0.0,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .lineColor,
                                                                offset: Offset(
                                                                  0.0,
                                                                  1.0,
                                                                ),
                                                              )
                                                            ],
                                                          ),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            children: [
                                                              AutoSizeText(
                                                                valueOrDefault<
                                                                    String>(
                                                                  columnAllTreesDeliveredRecord
                                                                      .conditionofTreesList
                                                                      .firstOrNull,
                                                                  'All Healthy',
                                                                ).maybeHandleOverflow(
                                                                  maxChars: 32,
                                                                  replacement:
                                                                      '…',
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLarge
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyLargeFamily,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts:
                                                                          !FlutterFlowTheme.of(context)
                                                                              .bodyLargeIsCustom,
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
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    2.0),
                                                        child: Container(
                                                          width: 150.0,
                                                          height: 30.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            boxShadow: [
                                                              BoxShadow(
                                                                blurRadius: 0.0,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .lineColor,
                                                                offset: Offset(
                                                                  0.0,
                                                                  1.0,
                                                                ),
                                                              )
                                                            ],
                                                          ),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            children: [
                                                              AutoSizeText(
                                                                valueOrDefault<
                                                                    String>(
                                                                  columnAllTreesDeliveredRecord
                                                                      .institution,
                                                                  '0',
                                                                ).maybeHandleOverflow(
                                                                  maxChars: 32,
                                                                  replacement:
                                                                      '…',
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLarge
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyLargeFamily,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts:
                                                                          !FlutterFlowTheme.of(context)
                                                                              .bodyLargeIsCustom,
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
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    2.0),
                                                        child: Container(
                                                          width: 150.0,
                                                          height: 30.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            boxShadow: [
                                                              BoxShadow(
                                                                blurRadius: 0.0,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .lineColor,
                                                                offset: Offset(
                                                                  0.0,
                                                                  1.0,
                                                                ),
                                                              )
                                                            ],
                                                          ),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            children: [
                                                              AutoSizeText(
                                                                valueOrDefault<
                                                                    String>(
                                                                  columnAllTreesDeliveredRecord
                                                                      .planterCompany,
                                                                  '0',
                                                                ).maybeHandleOverflow(
                                                                  maxChars: 32,
                                                                  replacement:
                                                                      '…',
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLarge
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyLargeFamily,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts:
                                                                          !FlutterFlowTheme.of(context)
                                                                              .bodyLargeIsCustom,
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
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    2.0),
                                                        child: Container(
                                                          width: 150.0,
                                                          height: 30.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            boxShadow: [
                                                              BoxShadow(
                                                                blurRadius: 0.0,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .lineColor,
                                                                offset: Offset(
                                                                  0.0,
                                                                  1.0,
                                                                ),
                                                              )
                                                            ],
                                                          ),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            children: [
                                                              AutoSizeText(
                                                                valueOrDefault<
                                                                    String>(
                                                                  columnAllTreesDeliveredRecord
                                                                      .numberOfTreesDelivered
                                                                      .toString(),
                                                                  'not set',
                                                                ).maybeHandleOverflow(
                                                                  maxChars: 32,
                                                                  replacement:
                                                                      '…',
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLarge
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyLargeFamily,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts:
                                                                          !FlutterFlowTheme.of(context)
                                                                              .bodyLargeIsCustom,
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
                                            ],
                                          ),
                                        );
                                      }),
                                    );
                                  },
                                ),
                              ],
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
        ),
      ),
    );
  }
}
