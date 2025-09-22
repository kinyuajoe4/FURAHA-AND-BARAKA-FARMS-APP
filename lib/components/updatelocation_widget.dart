import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_place_picker.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/place.dart';
import 'dart:io';
import 'dart:ui';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'updatelocation_model.dart';
export 'updatelocation_model.dart';

class UpdatelocationWidget extends StatefulWidget {
  const UpdatelocationWidget({
    super.key,
    this.fielddoc,
  });

  final FieldsRecord? fielddoc;

  @override
  State<UpdatelocationWidget> createState() => _UpdatelocationWidgetState();
}

class _UpdatelocationWidgetState extends State<UpdatelocationWidget> {
  late UpdatelocationModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UpdatelocationModel());

    _model.googlelinkTextController ??= TextEditingController(
        text: valueOrDefault<String>(
      widget!.fielddoc?.googleEarthlink,
      '0',
    ));
    _model.googlelinkFocusNode ??= FocusNode();

    _model.textController2 ??= TextEditingController(
        text: valueOrDefault<String>(
      widget!.fielddoc?.fieldName,
      '0',
    ));
    _model.textFieldFocusNode ??= FocusNode();

    _model.noOfMonitoredTreesTextController ??= TextEditingController(
        text: valueOrDefault<String>(
      widget!.fielddoc?.treesMonitored?.toString(),
      '0',
    ));
    _model.noOfMonitoredTreesFocusNode ??= FocusNode();

    _model.contactPersonTextController ??= TextEditingController(
        text: valueOrDefault<String>(
      widget!.fielddoc?.contactPerson,
      'not updated',
    ));
    _model.contactPersonFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 60.0, 0.0, 60.0),
      child: Container(
        width: MediaQuery.sizeOf(context).width * 1.0,
        height: 450.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(0.0),
            bottomRight: Radius.circular(0.0),
            topLeft: Radius.circular(16.0),
            topRight: Radius.circular(16.0),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(4.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20.0, 8.0, 20.0, 0.0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Divider(
                          thickness: 3.0,
                          indent: 150.0,
                          endIndent: 150.0,
                          color: FlutterFlowTheme.of(context).primaryBackground,
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 4.0, 16.0, 0.0),
                                child: Text(
                                  'UPDATE LOCATION',
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
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: 200.0,
                              child: TextFormField(
                                controller: _model.googlelinkTextController,
                                focusNode: _model.googlelinkFocusNode,
                                autofocus: false,
                                obscureText: false,
                                decoration: InputDecoration(
                                  isDense: true,
                                  labelText: 'Detailed Field View',
                                  labelStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .labelMediumFamily,
                                        letterSpacing: 0.0,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .labelMediumIsCustom,
                                      ),
                                  hintText: 'TextField',
                                  hintStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .labelMediumFamily,
                                        letterSpacing: 0.0,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .labelMediumIsCustom,
                                      ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  filled: true,
                                  fillColor: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
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
                                cursorColor:
                                    FlutterFlowTheme.of(context).primaryText,
                                validator: _model
                                    .googlelinkTextControllerValidator
                                    .asValidator(context),
                              ),
                            ),
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                await Clipboard.setData(ClipboardData(
                                    text:
                                        _model.googlelinkTextController.text));
                              },
                              child: Icon(
                                Icons.content_copy,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 24.0,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: 200.0,
                              child: TextFormField(
                                controller: _model.textController2,
                                focusNode: _model.textFieldFocusNode,
                                autofocus: false,
                                readOnly: true,
                                obscureText: false,
                                decoration: InputDecoration(
                                  isDense: true,
                                  labelText: 'Field Name',
                                  labelStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .labelMediumFamily,
                                        letterSpacing: 0.0,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .labelMediumIsCustom,
                                      ),
                                  hintText: 'TextField',
                                  hintStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .labelMediumFamily,
                                        letterSpacing: 0.0,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .labelMediumIsCustom,
                                      ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  filled: true,
                                  fillColor: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
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
                                cursorColor:
                                    FlutterFlowTheme.of(context).primaryText,
                                validator: _model.textController2Validator
                                    .asValidator(context),
                              ),
                            ),
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                await Clipboard.setData(ClipboardData(
                                    text: _model.textController2.text));
                              },
                              child: Icon(
                                Icons.content_copy,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 24.0,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: 200.0,
                              child: TextFormField(
                                controller:
                                    _model.noOfMonitoredTreesTextController,
                                focusNode: _model.noOfMonitoredTreesFocusNode,
                                autofocus: false,
                                readOnly: true,
                                obscureText: false,
                                decoration: InputDecoration(
                                  isDense: true,
                                  labelText: 'monitored Trees',
                                  labelStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .labelMediumFamily,
                                        letterSpacing: 0.0,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .labelMediumIsCustom,
                                      ),
                                  hintText: 'TextField',
                                  hintStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .labelMediumFamily,
                                        letterSpacing: 0.0,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .labelMediumIsCustom,
                                      ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  filled: true,
                                  fillColor: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
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
                                cursorColor:
                                    FlutterFlowTheme.of(context).primaryText,
                                validator: _model
                                    .noOfMonitoredTreesTextControllerValidator
                                    .asValidator(context),
                              ),
                            ),
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                await Clipboard.setData(ClipboardData(
                                    text: _model
                                        .noOfMonitoredTreesTextController
                                        .text));
                              },
                              child: Icon(
                                Icons.content_copy,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 24.0,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: 200.0,
                              child: TextFormField(
                                controller: _model.contactPersonTextController,
                                focusNode: _model.contactPersonFocusNode,
                                autofocus: false,
                                readOnly: true,
                                obscureText: false,
                                decoration: InputDecoration(
                                  isDense: true,
                                  labelText: 'Contact Person',
                                  labelStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .labelMediumFamily,
                                        letterSpacing: 0.0,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .labelMediumIsCustom,
                                      ),
                                  hintText: 'TextField',
                                  hintStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .labelMediumFamily,
                                        letterSpacing: 0.0,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .labelMediumIsCustom,
                                      ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  filled: true,
                                  fillColor: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
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
                                cursorColor:
                                    FlutterFlowTheme.of(context).primaryText,
                                validator: _model
                                    .contactPersonTextControllerValidator
                                    .asValidator(context),
                              ),
                            ),
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                await Clipboard.setData(ClipboardData(
                                    text: _model
                                        .contactPersonTextController.text));
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'Phone Number Copied ',
                                      style: TextStyle(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                      ),
                                    ),
                                    duration: Duration(milliseconds: 4000),
                                    backgroundColor:
                                        FlutterFlowTheme.of(context).secondary,
                                  ),
                                );
                              },
                              child: Icon(
                                Icons.content_copy,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 24.0,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 8.0, 0.0, 0.0),
                                child: SelectionArea(
                                    child: Text(
                                  valueOrDefault<String>(
                                    widget!.fielddoc?.fieldName,
                                    '0',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .labelMediumFamily,
                                        letterSpacing: 0.0,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .labelMediumIsCustom,
                                      ),
                                )),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 8.0, 0.0, 0.0),
                                child: SelectionArea(
                                    child: Text(
                                  valueOrDefault<String>(
                                    widget!.fielddoc?.gPSCoordinates
                                        ?.toString(),
                                    'coordinates not set',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .labelMediumFamily,
                                        letterSpacing: 0.0,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .labelMediumIsCustom,
                                      ),
                                )),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 16.0, 0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FlutterFlowPlacePicker(
                                iOSGoogleMapsApiKey:
                                    'AIzaSyAJoncf1vnF3dirDkhwJ8fTZ_YaoqaGioI',
                                androidGoogleMapsApiKey:
                                    'AIzaSyAJoncf1vnF3dirDkhwJ8fTZ_YaoqaGioI',
                                webGoogleMapsApiKey:
                                    'AIzaSyAJoncf1vnF3dirDkhwJ8fTZ_YaoqaGioI',
                                onSelect: (place) async {
                                  safeSetState(
                                      () => _model.placePickerValue = place);
                                },
                                defaultText: 'Select Location',
                                icon: Icon(
                                  Icons.place,
                                  color: FlutterFlowTheme.of(context).info,
                                  size: 16.0,
                                ),
                                buttonOptions: FFButtonOptions(
                                  width: 200.0,
                                  height: 40.0,
                                  color: FlutterFlowTheme.of(context).primary,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .titleSmallFamily,
                                        color:
                                            FlutterFlowTheme.of(context).info,
                                        letterSpacing: 0.0,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .titleSmallIsCustom,
                                      ),
                                  elevation: 0.0,
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 24.0, 0.0, 44.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              FFButtonWidget(
                                onPressed: () async {
                                  context.safePop();
                                },
                                text: 'BACK',
                                options: FFButtonOptions(
                                  width: 150.0,
                                  height: 50.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .labelMediumFamily,
                                        letterSpacing: 0.0,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .labelMediumIsCustom,
                                      ),
                                  elevation: 2.0,
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 1.0,
                                  ),
                                ),
                              ),
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onLongPress: () async {
                                  if (_model.alltreesdelolivered!.redCider >
                                      1) {
                                    await AllTreesDeliveredRecord.collection
                                        .doc()
                                        .set(createAllTreesDeliveredRecordData(
                                          institution: _model
                                              .alltreesdelolivered?.institution,
                                          treeSpeciesDelivered: 'RED CIDER',
                                          deliveryDate: _model
                                              .alltreesdelolivered
                                              ?.deliveryDate,
                                          dateofPlanting: _model
                                              .alltreesdelolivered
                                              ?.dateofPlanting,
                                          county: _model
                                              .alltreesdelolivered?.county,
                                          numberOfTreesDelivered: _model
                                              .alltreesdelolivered?.redCider
                                              ?.toDouble(),
                                          isnewspecie: true,
                                        ));
                                  } else if (_model
                                          .alltreesdelolivered?.oleaAfricana !=
                                      null) {
                                    await AllTreesDeliveredRecord.collection
                                        .doc()
                                        .set(createAllTreesDeliveredRecordData(
                                          institution: _model
                                              .alltreesdelolivered?.institution,
                                          treeSpeciesDelivered: 'OLEA AFRICANA',
                                          deliveryDate: _model
                                              .alltreesdelolivered
                                              ?.deliveryDate,
                                          dateofPlanting: _model
                                              .alltreesdelolivered
                                              ?.dateofPlanting,
                                          county: _model
                                              .alltreesdelolivered?.county,
                                          numberOfTreesDelivered: _model
                                              .alltreesdelolivered?.oleaAfricana
                                              ?.toDouble(),
                                          isnewspecie: true,
                                        ));
                                  } else if (_model.alltreesdelolivered?.lemon !=
                                      null) {
                                    await AllTreesDeliveredRecord.collection
                                        .doc()
                                        .set(createAllTreesDeliveredRecordData(
                                          institution: _model
                                              .alltreesdelolivered?.institution,
                                          treeSpeciesDelivered: 'LEMON',
                                          deliveryDate: _model
                                              .alltreesdelolivered
                                              ?.deliveryDate,
                                          dateofPlanting: _model
                                              .alltreesdelolivered
                                              ?.dateofPlanting,
                                          county: _model
                                              .alltreesdelolivered?.county,
                                          numberOfTreesDelivered: _model
                                              .alltreesdelolivered?.lemon
                                              ?.toDouble(),
                                          isnewspecie: true,
                                        ));
                                  } else if (_model.alltreesdelolivered?.cypress !=
                                      null) {
                                    await AllTreesDeliveredRecord.collection
                                        .doc()
                                        .set(createAllTreesDeliveredRecordData(
                                          institution: _model
                                              .alltreesdelolivered?.institution,
                                          treeSpeciesDelivered: 'CYPRESS',
                                          deliveryDate: _model
                                              .alltreesdelolivered
                                              ?.deliveryDate,
                                          dateofPlanting: _model
                                              .alltreesdelolivered
                                              ?.dateofPlanting,
                                          county: _model
                                              .alltreesdelolivered?.county,
                                          numberOfTreesDelivered: _model
                                              .alltreesdelolivered?.cypress
                                              ?.toDouble(),
                                          isnewspecie: true,
                                        ));
                                  } else if (_model
                                          .alltreesdelolivered?.sennaSiamea !=
                                      null) {
                                    await AllTreesDeliveredRecord.collection
                                        .doc()
                                        .set(createAllTreesDeliveredRecordData(
                                          institution: _model
                                              .alltreesdelolivered?.institution,
                                          treeSpeciesDelivered: 'SENNA SIAMEA',
                                          deliveryDate: _model
                                              .alltreesdelolivered
                                              ?.deliveryDate,
                                          dateofPlanting: _model
                                              .alltreesdelolivered
                                              ?.dateofPlanting,
                                          county: _model
                                              .alltreesdelolivered?.county,
                                          numberOfTreesDelivered: _model
                                              .alltreesdelolivered?.sennaSiamea
                                              ?.toDouble(),
                                          isnewspecie: true,
                                        ));
                                  } else if (_model.alltreesdelolivered?.casuarina !=
                                      null) {
                                    await AllTreesDeliveredRecord.collection
                                        .doc()
                                        .set(createAllTreesDeliveredRecordData(
                                          institution: _model
                                              .alltreesdelolivered?.institution,
                                          treeSpeciesDelivered: 'CASURINA',
                                          deliveryDate: _model
                                              .alltreesdelolivered
                                              ?.deliveryDate,
                                          dateofPlanting: _model
                                              .alltreesdelolivered
                                              ?.dateofPlanting,
                                          county: _model
                                              .alltreesdelolivered?.county,
                                          numberOfTreesDelivered:
                                              valueOrDefault<double>(
                                            _model
                                                .alltreesdelolivered?.casuarina
                                                ?.toDouble(),
                                            0.0,
                                          ),
                                          isnewspecie: true,
                                        ));
                                  } else if (_model.alltreesdelolivered
                                          ?.markhamiaLutea !=
                                      null) {
                                    await AllTreesDeliveredRecord.collection
                                        .doc()
                                        .set(createAllTreesDeliveredRecordData(
                                          institution: _model
                                              .alltreesdelolivered?.institution,
                                          treeSpeciesDelivered:
                                              'MARKHAMIA LUTEA',
                                          deliveryDate: _model
                                              .alltreesdelolivered
                                              ?.deliveryDate,
                                          dateofPlanting: _model
                                              .alltreesdelolivered
                                              ?.dateofPlanting,
                                          county: _model
                                              .alltreesdelolivered?.county,
                                          numberOfTreesDelivered:
                                              valueOrDefault<double>(
                                            _model.alltreesdelolivered
                                                ?.markhamiaLutea
                                                ?.toDouble(),
                                            0.0,
                                          ),
                                          isnewspecie: true,
                                        ));
                                  } else if (_model.alltreesdelolivered
                                          ?.crotonMegalocarpus !=
                                      null) {
                                    await AllTreesDeliveredRecord.collection
                                        .doc()
                                        .set(createAllTreesDeliveredRecordData(
                                          institution: _model
                                              .alltreesdelolivered?.institution,
                                          treeSpeciesDelivered:
                                              'CROTON MEGALOCARPUS',
                                          deliveryDate: _model
                                              .alltreesdelolivered
                                              ?.deliveryDate,
                                          dateofPlanting: _model
                                              .alltreesdelolivered
                                              ?.dateofPlanting,
                                          county: _model
                                              .alltreesdelolivered?.county,
                                          numberOfTreesDelivered:
                                              valueOrDefault<double>(
                                            _model.alltreesdelolivered
                                                ?.crotonMegalocarpus
                                                ?.toDouble(),
                                            0.0,
                                          ),
                                          isnewspecie: true,
                                        ));
                                  } else if (_model.alltreesdelolivered?.syzygium !=
                                      null) {
                                    await AllTreesDeliveredRecord.collection
                                        .doc()
                                        .set(createAllTreesDeliveredRecordData(
                                          institution: _model
                                              .alltreesdelolivered?.institution,
                                          treeSpeciesDelivered: 'SYZYGIUM',
                                          deliveryDate: _model
                                              .alltreesdelolivered
                                              ?.deliveryDate,
                                          dateofPlanting: _model
                                              .alltreesdelolivered
                                              ?.dateofPlanting,
                                          county: _model
                                              .alltreesdelolivered?.county,
                                          numberOfTreesDelivered:
                                              valueOrDefault<double>(
                                            _model.alltreesdelolivered?.syzygium
                                                ?.toDouble(),
                                            0.0,
                                          ),
                                          isnewspecie: true,
                                        ));
                                  } else if (_model
                                          .alltreesdelolivered?.whiteSapote !=
                                      null) {
                                    await AllTreesDeliveredRecord.collection
                                        .doc()
                                        .set(createAllTreesDeliveredRecordData(
                                          institution: _model
                                              .alltreesdelolivered?.institution,
                                          treeSpeciesDelivered: 'WHITE SAPOTE',
                                          deliveryDate: _model
                                              .alltreesdelolivered
                                              ?.deliveryDate,
                                          dateofPlanting: _model
                                              .alltreesdelolivered
                                              ?.dateofPlanting,
                                          county: _model
                                              .alltreesdelolivered?.county,
                                          numberOfTreesDelivered:
                                              valueOrDefault<double>(
                                            _model.alltreesdelolivered
                                                ?.whiteSapote
                                                ?.toDouble(),
                                            0.0,
                                          ),
                                          isnewspecie: true,
                                        ));
                                  } else if (_model.alltreesdelolivered?.podo !=
                                      null) {
                                    await AllTreesDeliveredRecord.collection
                                        .doc()
                                        .set(createAllTreesDeliveredRecordData(
                                          institution: _model
                                              .alltreesdelolivered?.institution,
                                          treeSpeciesDelivered: 'PODO',
                                          deliveryDate: _model
                                              .alltreesdelolivered
                                              ?.deliveryDate,
                                          dateofPlanting: _model
                                              .alltreesdelolivered
                                              ?.dateofPlanting,
                                          county: _model
                                              .alltreesdelolivered?.county,
                                          numberOfTreesDelivered:
                                              valueOrDefault<double>(
                                            _model.alltreesdelolivered?.podo
                                                ?.toDouble(),
                                            0.0,
                                          ),
                                          isnewspecie: true,
                                        ));
                                  } else if (_model.alltreesdelolivered
                                          ?.prunusAfricana !=
                                      null) {
                                    await AllTreesDeliveredRecord.collection
                                        .doc()
                                        .set(createAllTreesDeliveredRecordData(
                                          institution: _model
                                              .alltreesdelolivered?.institution,
                                          treeSpeciesDelivered:
                                              'PRUNUS AFRICANA',
                                          deliveryDate: _model
                                              .alltreesdelolivered
                                              ?.deliveryDate,
                                          dateofPlanting: _model
                                              .alltreesdelolivered
                                              ?.dateofPlanting,
                                          county: _model
                                              .alltreesdelolivered?.county,
                                          numberOfTreesDelivered:
                                              valueOrDefault<double>(
                                            _model.alltreesdelolivered
                                                ?.prunusAfricana
                                                ?.toDouble(),
                                            0.0,
                                          ),
                                          isnewspecie: true,
                                        ));
                                  } else if (_model.alltreesdelolivered?.mango !=
                                      null) {
                                    await AllTreesDeliveredRecord.collection
                                        .doc()
                                        .set(createAllTreesDeliveredRecordData(
                                          institution: _model
                                              .alltreesdelolivered?.institution,
                                          treeSpeciesDelivered: 'MANGO',
                                          deliveryDate: _model
                                              .alltreesdelolivered
                                              ?.deliveryDate,
                                          dateofPlanting: _model
                                              .alltreesdelolivered
                                              ?.dateofPlanting,
                                          county: _model
                                              .alltreesdelolivered?.county,
                                          numberOfTreesDelivered:
                                              valueOrDefault<double>(
                                            _model.alltreesdelolivered?.mango
                                                ?.toDouble(),
                                            0.0,
                                          ),
                                          isnewspecie: true,
                                        ));
                                  } else if (_model.alltreesdelolivered
                                          ?.mexicanGreenash !=
                                      null) {
                                    await AllTreesDeliveredRecord.collection
                                        .doc()
                                        .set(createAllTreesDeliveredRecordData(
                                          institution: _model
                                              .alltreesdelolivered?.institution,
                                          treeSpeciesDelivered:
                                              'MEXICAN GREENASH',
                                          deliveryDate: _model
                                              .alltreesdelolivered
                                              ?.deliveryDate,
                                          dateofPlanting: _model
                                              .alltreesdelolivered
                                              ?.dateofPlanting,
                                          county: _model
                                              .alltreesdelolivered?.county,
                                          numberOfTreesDelivered:
                                              valueOrDefault<double>(
                                            _model.alltreesdelolivered
                                                ?.mexicanGreenash
                                                ?.toDouble(),
                                            0.0,
                                          ),
                                          isnewspecie: true,
                                        ));
                                  } else if (_model.alltreesdelolivered?.blueGum !=
                                      null) {
                                    await AllTreesDeliveredRecord.collection
                                        .doc()
                                        .set(createAllTreesDeliveredRecordData(
                                          institution: _model
                                              .alltreesdelolivered?.institution,
                                          treeSpeciesDelivered: 'BLUE GUM',
                                          deliveryDate: _model
                                              .alltreesdelolivered
                                              ?.deliveryDate,
                                          dateofPlanting: _model
                                              .alltreesdelolivered
                                              ?.dateofPlanting,
                                          county: _model
                                              .alltreesdelolivered?.county,
                                          numberOfTreesDelivered:
                                              valueOrDefault<double>(
                                            _model.alltreesdelolivered?.blueGum
                                                ?.toDouble(),
                                            0.0,
                                          ),
                                          isnewspecie: true,
                                        ));
                                  } else if (_model.alltreesdelolivered?.saligna !=
                                      null) {
                                    await AllTreesDeliveredRecord.collection
                                        .doc()
                                        .set(createAllTreesDeliveredRecordData(
                                          institution: _model
                                              .alltreesdelolivered?.institution,
                                          treeSpeciesDelivered: 'SALIGNA',
                                          deliveryDate: _model
                                              .alltreesdelolivered
                                              ?.deliveryDate,
                                          dateofPlanting: _model
                                              .alltreesdelolivered
                                              ?.dateofPlanting,
                                          county: _model
                                              .alltreesdelolivered?.county,
                                          numberOfTreesDelivered:
                                              valueOrDefault<double>(
                                            _model.alltreesdelolivered?.saligna
                                                ?.toDouble(),
                                            0.0,
                                          ),
                                          isnewspecie: true,
                                        ));
                                  } else if (_model.alltreesdelolivered
                                          ?.macadamiaMuranga20 !=
                                      null) {
                                    await AllTreesDeliveredRecord.collection
                                        .doc()
                                        .set(createAllTreesDeliveredRecordData(
                                          institution: _model
                                              .alltreesdelolivered?.institution,
                                          treeSpeciesDelivered:
                                              'MACADAMIA MURANGA 20',
                                          deliveryDate: _model
                                              .alltreesdelolivered
                                              ?.deliveryDate,
                                          dateofPlanting: _model
                                              .alltreesdelolivered
                                              ?.dateofPlanting,
                                          county: _model
                                              .alltreesdelolivered?.county,
                                          numberOfTreesDelivered:
                                              valueOrDefault<double>(
                                            _model.alltreesdelolivered
                                                ?.macadamiaMuranga20
                                                ?.toDouble(),
                                            0.0,
                                          ),
                                          isnewspecie: true,
                                        ));
                                  } else if (_model.alltreesdelolivered!.tangerine >
                                      1) {
                                    await AllTreesDeliveredRecord.collection
                                        .doc()
                                        .set(createAllTreesDeliveredRecordData(
                                          institution: _model
                                              .alltreesdelolivered?.institution,
                                          treeSpeciesDelivered: 'TANGERINE',
                                          deliveryDate: _model
                                              .alltreesdelolivered
                                              ?.deliveryDate,
                                          dateofPlanting: _model
                                              .alltreesdelolivered
                                              ?.dateofPlanting,
                                          county: _model
                                              .alltreesdelolivered?.county,
                                          numberOfTreesDelivered:
                                              valueOrDefault<double>(
                                            _model
                                                .alltreesdelolivered?.tangerine
                                                ?.toDouble(),
                                            0.0,
                                          ),
                                          isnewspecie: true,
                                        ));
                                  } else if (_model.alltreesdelolivered!.guava > 1) {
                                    await AllTreesDeliveredRecord.collection
                                        .doc()
                                        .set(createAllTreesDeliveredRecordData(
                                          institution: _model
                                              .alltreesdelolivered?.institution,
                                          treeSpeciesDelivered: 'GUAVA',
                                          deliveryDate: _model
                                              .alltreesdelolivered
                                              ?.deliveryDate,
                                          dateofPlanting: _model
                                              .alltreesdelolivered
                                              ?.dateofPlanting,
                                          county: _model
                                              .alltreesdelolivered?.county,
                                          numberOfTreesDelivered:
                                              valueOrDefault<double>(
                                            _model.alltreesdelolivered?.guava
                                                ?.toDouble(),
                                            0.0,
                                          ),
                                          isnewspecie: true,
                                        ));
                                  } else if (_model.alltreesdelolivered!.pixieOranges > 1) {
                                    await AllTreesDeliveredRecord.collection
                                        .doc()
                                        .set(createAllTreesDeliveredRecordData(
                                          institution: _model
                                              .alltreesdelolivered?.institution,
                                          treeSpeciesDelivered: 'PIXIE ORANGES',
                                          deliveryDate: _model
                                              .alltreesdelolivered
                                              ?.deliveryDate,
                                          dateofPlanting: _model
                                              .alltreesdelolivered
                                              ?.dateofPlanting,
                                          county: _model
                                              .alltreesdelolivered?.county,
                                          numberOfTreesDelivered:
                                              valueOrDefault<double>(
                                            _model.alltreesdelolivered
                                                ?.pixieOranges
                                                ?.toDouble(),
                                            0.0,
                                          ),
                                          isnewspecie: true,
                                        ));
                                  } else if (_model.alltreesdelolivered?.berry != null) {
                                    await AllTreesDeliveredRecord.collection
                                        .doc()
                                        .set(createAllTreesDeliveredRecordData(
                                          institution: _model
                                              .alltreesdelolivered?.institution,
                                          treeSpeciesDelivered: 'BERRY',
                                          deliveryDate: _model
                                              .alltreesdelolivered
                                              ?.deliveryDate,
                                          dateofPlanting: _model
                                              .alltreesdelolivered
                                              ?.dateofPlanting,
                                          county: _model
                                              .alltreesdelolivered?.county,
                                          numberOfTreesDelivered:
                                              valueOrDefault<double>(
                                            _model.alltreesdelolivered?.berry
                                                ?.toDouble(),
                                            0.0,
                                          ),
                                          isnewspecie: true,
                                        ));
                                  } else if (_model.alltreesdelolivered?.hassAvocado != null) {
                                    await AllTreesDeliveredRecord.collection
                                        .doc()
                                        .set(createAllTreesDeliveredRecordData(
                                          institution: _model
                                              .alltreesdelolivered?.institution,
                                          treeSpeciesDelivered: 'HASS OVACADO',
                                          deliveryDate: _model
                                              .alltreesdelolivered
                                              ?.deliveryDate,
                                          dateofPlanting: _model
                                              .alltreesdelolivered
                                              ?.dateofPlanting,
                                          county: _model
                                              .alltreesdelolivered?.county,
                                          numberOfTreesDelivered:
                                              valueOrDefault<double>(
                                            _model.alltreesdelolivered
                                                ?.hassAvocado
                                                ?.toDouble(),
                                            0.0,
                                          ),
                                          isnewspecie: true,
                                        ));
                                  } else if (_model.alltreesdelolivered?.bottleBrush != null) {
                                    await AllTreesDeliveredRecord.collection
                                        .doc()
                                        .set(createAllTreesDeliveredRecordData(
                                          institution: _model
                                              .alltreesdelolivered?.institution,
                                          treeSpeciesDelivered: 'BOTTLE BRUSH',
                                          deliveryDate: _model
                                              .alltreesdelolivered
                                              ?.deliveryDate,
                                          dateofPlanting: _model
                                              .alltreesdelolivered
                                              ?.dateofPlanting,
                                          county: _model
                                              .alltreesdelolivered?.county,
                                          numberOfTreesDelivered:
                                              valueOrDefault<double>(
                                            _model.alltreesdelolivered
                                                ?.bottleBrush
                                                ?.toDouble(),
                                            0.0,
                                          ),
                                          isnewspecie: true,
                                        ));
                                  } else if (_model.alltreesdelolivered?.grevillea != null) {
                                    await AllTreesDeliveredRecord.collection
                                        .doc()
                                        .set(createAllTreesDeliveredRecordData(
                                          institution: _model
                                              .alltreesdelolivered?.institution,
                                          treeSpeciesDelivered: 'GREVILLEA',
                                          deliveryDate: _model
                                              .alltreesdelolivered
                                              ?.deliveryDate,
                                          dateofPlanting: _model
                                              .alltreesdelolivered
                                              ?.dateofPlanting,
                                          county: _model
                                              .alltreesdelolivered?.county,
                                          numberOfTreesDelivered:
                                              valueOrDefault<double>(
                                            _model
                                                .alltreesdelolivered?.grevillea
                                                ?.toDouble(),
                                            0.0,
                                          ),
                                          isnewspecie: true,
                                        ));
                                  } else if (_model.alltreesdelolivered?.giantBamboo != null) {
                                    await AllTreesDeliveredRecord.collection
                                        .doc()
                                        .set(createAllTreesDeliveredRecordData(
                                          institution: _model
                                              .alltreesdelolivered?.institution,
                                          treeSpeciesDelivered: 'GIANT BAMBOO',
                                          deliveryDate: _model
                                              .alltreesdelolivered
                                              ?.deliveryDate,
                                          dateofPlanting: _model
                                              .alltreesdelolivered
                                              ?.dateofPlanting,
                                          county: _model
                                              .alltreesdelolivered?.county,
                                          numberOfTreesDelivered:
                                              valueOrDefault<double>(
                                            _model.alltreesdelolivered
                                                ?.giantBamboo
                                                ?.toDouble(),
                                            0.0,
                                          ),
                                          isnewspecie: true,
                                        ));
                                  } else if (_model.alltreesdelolivered?.neem != null) {
                                    await AllTreesDeliveredRecord.collection
                                        .doc()
                                        .set(createAllTreesDeliveredRecordData(
                                          institution: _model
                                              .alltreesdelolivered?.institution,
                                          treeSpeciesDelivered: 'NEEM',
                                          deliveryDate: _model
                                              .alltreesdelolivered
                                              ?.deliveryDate,
                                          dateofPlanting: _model
                                              .alltreesdelolivered
                                              ?.dateofPlanting,
                                          county: _model
                                              .alltreesdelolivered?.county,
                                          numberOfTreesDelivered:
                                              valueOrDefault<double>(
                                            _model.alltreesdelolivered?.neem
                                                ?.toDouble(),
                                            0.0,
                                          ),
                                          isnewspecie: true,
                                        ));
                                  } else if (_model.alltreesdelolivered?.moringa != null) {
                                    await AllTreesDeliveredRecord.collection
                                        .doc()
                                        .set(createAllTreesDeliveredRecordData(
                                          institution: _model
                                              .alltreesdelolivered?.institution,
                                          treeSpeciesDelivered: 'MORINGA',
                                          deliveryDate: _model
                                              .alltreesdelolivered
                                              ?.deliveryDate,
                                          dateofPlanting: _model
                                              .alltreesdelolivered
                                              ?.dateofPlanting,
                                          county: _model
                                              .alltreesdelolivered?.county,
                                          numberOfTreesDelivered:
                                              valueOrDefault<double>(
                                            _model.alltreesdelolivered?.moringa
                                                ?.toDouble(),
                                            0.0,
                                          ),
                                          isnewspecie: true,
                                        ));
                                  } else if (_model.alltreesdelolivered?.ashok != null) {
                                    await AllTreesDeliveredRecord.collection
                                        .doc()
                                        .set(createAllTreesDeliveredRecordData(
                                          institution: _model
                                              .alltreesdelolivered?.institution,
                                          treeSpeciesDelivered: 'ASHOK',
                                          deliveryDate: _model
                                              .alltreesdelolivered
                                              ?.deliveryDate,
                                          dateofPlanting: _model
                                              .alltreesdelolivered
                                              ?.dateofPlanting,
                                          county: _model
                                              .alltreesdelolivered?.county,
                                          numberOfTreesDelivered:
                                              valueOrDefault<double>(
                                            _model.alltreesdelolivered?.ashok
                                                ?.toDouble(),
                                            0.0,
                                          ),
                                          isnewspecie: true,
                                        ));
                                  } else if (_model.alltreesdelolivered?.acacia != null) {
                                    await AllTreesDeliveredRecord.collection
                                        .doc()
                                        .set(createAllTreesDeliveredRecordData(
                                          institution: _model
                                              .alltreesdelolivered?.institution,
                                          treeSpeciesDelivered: 'ACACIA',
                                          deliveryDate: _model
                                              .alltreesdelolivered
                                              ?.deliveryDate,
                                          dateofPlanting: _model
                                              .alltreesdelolivered
                                              ?.dateofPlanting,
                                          county: _model
                                              .alltreesdelolivered?.county,
                                          numberOfTreesDelivered:
                                              valueOrDefault<double>(
                                            _model.alltreesdelolivered?.acacia
                                                ?.toDouble(),
                                            0.0,
                                          ),
                                          isnewspecie: true,
                                        ));
                                  } else if (_model.alltreesdelolivered?.mahogany != null) {
                                    await AllTreesDeliveredRecord.collection
                                        .doc()
                                        .set(createAllTreesDeliveredRecordData(
                                          institution: _model
                                              .alltreesdelolivered?.institution,
                                          treeSpeciesDelivered: 'MAHOGANY',
                                          deliveryDate: _model
                                              .alltreesdelolivered
                                              ?.deliveryDate,
                                          dateofPlanting: _model
                                              .alltreesdelolivered
                                              ?.dateofPlanting,
                                          county: _model
                                              .alltreesdelolivered?.county,
                                          numberOfTreesDelivered:
                                              valueOrDefault<double>(
                                            _model.alltreesdelolivered?.mahogany
                                                ?.toDouble(),
                                            0.0,
                                          ),
                                          isnewspecie: true,
                                        ));
                                  } else if (_model.alltreesdelolivered?.terminalia != null) {
                                    await AllTreesDeliveredRecord.collection
                                        .doc()
                                        .set(createAllTreesDeliveredRecordData(
                                          institution: _model
                                              .alltreesdelolivered?.institution,
                                          treeSpeciesDelivered: 'TERMINALIA',
                                          deliveryDate: _model
                                              .alltreesdelolivered
                                              ?.deliveryDate,
                                          dateofPlanting: _model
                                              .alltreesdelolivered
                                              ?.dateofPlanting,
                                          county: _model
                                              .alltreesdelolivered?.county,
                                          numberOfTreesDelivered:
                                              valueOrDefault<double>(
                                            _model
                                                .alltreesdelolivered?.terminalia
                                                ?.toDouble(),
                                            0.0,
                                          ),
                                          isnewspecie: true,
                                        ));
                                  } else if (_model.alltreesdelolivered?.eucalyptus != null) {
                                    await AllTreesDeliveredRecord.collection
                                        .doc()
                                        .set(createAllTreesDeliveredRecordData(
                                          institution: _model
                                              .alltreesdelolivered?.institution,
                                          treeSpeciesDelivered: 'EUCALYPTUS',
                                          deliveryDate: _model
                                              .alltreesdelolivered
                                              ?.deliveryDate,
                                          dateofPlanting: _model
                                              .alltreesdelolivered
                                              ?.dateofPlanting,
                                          county: _model
                                              .alltreesdelolivered?.county,
                                          numberOfTreesDelivered:
                                              valueOrDefault<double>(
                                            _model
                                                .alltreesdelolivered?.eucalyptus
                                                ?.toDouble(),
                                            0.0,
                                          ),
                                          isnewspecie: true,
                                        ));
                                  } else if (_model.alltreesdelolivered?.pawpaw != null) {
                                    await AllTreesDeliveredRecord.collection
                                        .doc()
                                        .set(createAllTreesDeliveredRecordData(
                                          institution: _model
                                              .alltreesdelolivered?.institution,
                                          treeSpeciesDelivered: 'PAWPAW',
                                          deliveryDate: _model
                                              .alltreesdelolivered
                                              ?.deliveryDate,
                                          dateofPlanting: _model
                                              .alltreesdelolivered
                                              ?.dateofPlanting,
                                          county: _model
                                              .alltreesdelolivered?.county,
                                          numberOfTreesDelivered:
                                              valueOrDefault<double>(
                                            _model.alltreesdelolivered?.pawpaw
                                                ?.toDouble(),
                                            0.0,
                                          ),
                                          isnewspecie: true,
                                        ));
                                  } else if (_model.alltreesdelolivered?.passion != null) {
                                    await AllTreesDeliveredRecord.collection
                                        .doc()
                                        .set(createAllTreesDeliveredRecordData(
                                          institution: _model
                                              .alltreesdelolivered?.institution,
                                          treeSpeciesDelivered: 'PASSION',
                                          deliveryDate: _model
                                              .alltreesdelolivered
                                              ?.deliveryDate,
                                          dateofPlanting: _model
                                              .alltreesdelolivered
                                              ?.dateofPlanting,
                                          county: _model
                                              .alltreesdelolivered?.county,
                                          numberOfTreesDelivered:
                                              valueOrDefault<double>(
                                            _model.alltreesdelolivered?.passion
                                                ?.toDouble(),
                                            0.0,
                                          ),
                                          isnewspecie: true,
                                        ));
                                  }
                                },
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    await widget!.fielddoc!.reference
                                        .update(createFieldsRecordData(
                                      gPSCoordinates: _model.placePickerValue !=
                                              null
                                          ? _model.placePickerValue.latLng
                                          : widget!.fielddoc?.gPSCoordinates,
                                      googleEarthlink:
                                          _model.googlelinkTextController.text,
                                      contactPerson: _model
                                          .contactPersonTextController.text,
                                    ));
                                    _model.alltreesdelolivered =
                                        await queryAllTreesDeliveredRecordOnce(
                                      queryBuilder: (allTreesDeliveredRecord) =>
                                          allTreesDeliveredRecord.where(
                                        'INSTITUTION',
                                        isEqualTo:
                                            widget!.fielddoc?.institution,
                                      ),
                                      singleRecord: true,
                                    ).then((s) => s.firstOrNull);
                                    context.pop();

                                    safeSetState(() {});
                                  },
                                  text: 'Save Changes',
                                  options: FFButtonOptions(
                                    width: 150.0,
                                    height: 50.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: FlutterFlowTheme.of(context).primary,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          font: GoogleFonts.lexendDeca(
                                            fontWeight: FontWeight.normal,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .fontStyle,
                                          ),
                                          color: Colors.white,
                                          fontSize: 16.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.normal,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .fontStyle,
                                        ),
                                    elevation: 2.0,
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 1.0,
                                    ),
                                  ),
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
            ],
          ),
        ),
      ),
    );
  }
}
