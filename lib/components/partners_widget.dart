import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'partners_model.dart';
export 'partners_model.dart';

class PartnersWidget extends StatefulWidget {
  const PartnersWidget({super.key});

  @override
  State<PartnersWidget> createState() => _PartnersWidgetState();
}

class _PartnersWidgetState extends State<PartnersWidget> {
  late PartnersModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PartnersModel());

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
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
      child: Container(
        width: double.infinity,
        height: 200.0,
        decoration: BoxDecoration(
          color: Color(0xFF080808),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Opacity(
              opacity: 0.8,
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 0.0),
                child: RichText(
                  textScaler: MediaQuery.of(context).textScaler,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Our ',
                        style: FlutterFlowTheme.of(context)
                            .displayLarge
                            .override(
                              fontFamily: FlutterFlowTheme.of(context)
                                  .displayLargeFamily,
                              color: Color(0xFF04A24C),
                              fontSize: () {
                                if (MediaQuery.sizeOf(context).width <
                                    kBreakpointSmall) {
                                  return 30.0;
                                } else if (MediaQuery.sizeOf(context).width <
                                    kBreakpointMedium) {
                                  return 40.0;
                                } else if (MediaQuery.sizeOf(context).width <
                                    kBreakpointLarge) {
                                  return 60.0;
                                } else {
                                  return 60.0;
                                }
                              }(),
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w500,
                              useGoogleFonts: !FlutterFlowTheme.of(context)
                                  .displayLargeIsCustom,
                            ),
                      ),
                      TextSpan(
                        text: 'Partners',
                        style: TextStyle(
                          color: Color(0xFF396D1B),
                          fontSize: () {
                            if (MediaQuery.sizeOf(context).width <
                                kBreakpointSmall) {
                              return 30.0;
                            } else if (MediaQuery.sizeOf(context).width <
                                kBreakpointMedium) {
                              return 40.0;
                            } else if (MediaQuery.sizeOf(context).width <
                                kBreakpointLarge) {
                              return 60.0;
                            } else {
                              return 60.0;
                            }
                          }(),
                        ),
                      )
                    ],
                    style: FlutterFlowTheme.of(context).displayLarge.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).displayLargeFamily,
                          color: Color(0xFF04A24C),
                          fontSize: 50.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w600,
                          useGoogleFonts: !FlutterFlowTheme.of(context)
                              .displayLargeIsCustom,
                        ),
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 100.0,
              child: CarouselSlider(
                items: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      'assets/images/images_(6).jpeg',
                      width: 90.0,
                      height: 90.0,
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      'assets/images/Equity_Group_Logo.png',
                      width: 90.0,
                      height: 90.0,
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      'assets/images/diamond-trust-bank-dtb-uganda-logo-png_seeklogo-550579.png',
                      width: 90.0,
                      height: 90.0,
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      'assets/images/Esri-Logo.wine.png',
                      width: 90.0,
                      height: 90.0,
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      'assets/images/kenya-wildlife-service-logo-438432215D-seeklogo.com.png',
                      width: 90.0,
                      height: 50.0,
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      'assets/images/kilifi-county-government-logo-77C1B8358F-seeklogo.com.png',
                      width: 90.0,
                      height: 90.0,
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      'assets/images/images_(3).png',
                      width: 90.0,
                      height: 90.0,
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                ],
                carouselController: _model.carouselController ??=
                    CarouselSliderController(),
                options: CarouselOptions(
                  initialPage: 1,
                  viewportFraction: 0.5,
                  disableCenter: true,
                  enlargeCenterPage: true,
                  enlargeFactor: 0.25,
                  enableInfiniteScroll: true,
                  scrollDirection: Axis.horizontal,
                  autoPlay: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayInterval: Duration(milliseconds: (800 + 4000)),
                  autoPlayCurve: Curves.linear,
                  pauseAutoPlayInFiniteScroll: true,
                  onPageChanged: (index, _) =>
                      _model.carouselCurrentIndex = index,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
