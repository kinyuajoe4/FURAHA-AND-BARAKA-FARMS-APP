import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'from_c_e_oinfo_comp_model.dart';
export 'from_c_e_oinfo_comp_model.dart';

class FromCEOinfoCompWidget extends StatefulWidget {
  const FromCEOinfoCompWidget({super.key});

  @override
  State<FromCEOinfoCompWidget> createState() => _FromCEOinfoCompWidgetState();
}

class _FromCEOinfoCompWidgetState extends State<FromCEOinfoCompWidget>
    with TickerProviderStateMixin {
  late FromCEOinfoCompModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FromCEOinfoCompModel());

    animationsMap.addAll({
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeOut,
            delay: 150.0.ms,
            duration: 1000.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'wrapOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 770.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'textOnActionTriggerAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'textOnActionTriggerAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      opaque: false,
      cursor: MouseCursor.defer ?? MouseCursor.defer,
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 60.0),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xFF0A0B08),
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20.0, 50.0, 0.0, 0.0),
            child: Wrap(
              spacing: 60.0,
              runSpacing: 0.0,
              alignment: WrapAlignment.center,
              crossAxisAlignment: WrapCrossAlignment.center,
              direction: Axis.horizontal,
              runAlignment: WrapAlignment.end,
              verticalDirection: VerticalDirection.down,
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: MediaQuery.sizeOf(context).width * 0.6,
                  decoration: BoxDecoration(),
                  child: Wrap(
                    spacing: 0.0,
                    runSpacing: 40.0,
                    alignment: WrapAlignment.start,
                    crossAxisAlignment: WrapCrossAlignment.start,
                    direction: Axis.horizontal,
                    runAlignment: WrapAlignment.center,
                    verticalDirection: VerticalDirection.down,
                    clipBehavior: Clip.none,
                    children: [
                      Text(
                        'We revolutionize agriculture with sustainable solutions for a greener future',
                        textAlign: TextAlign.start,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyMediumFamily,
                              color: Color(0xFFFCF8F8),
                              fontSize: 44.0,
                              letterSpacing: 0.0,
                              useGoogleFonts: !FlutterFlowTheme.of(context)
                                  .bodyMediumIsCustom,
                            ),
                      ).animateOnActionTrigger(
                        animationsMap['textOnActionTriggerAnimation1']!,
                      ),
                      Text(
                        'We are thrilled to have you explore our pioneering efforts in climate and Agri-tech. Since our inception in 2015, our mission has been to transform agriculture through innovative practices and sustainable solutions.',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyMediumFamily,
                              color: Color(0xFFFCF8F8),
                              fontSize: 18.0,
                              letterSpacing: 0.0,
                              useGoogleFonts: !FlutterFlowTheme.of(context)
                                  .bodyMediumIsCustom,
                            ),
                      ).animateOnActionTrigger(
                        animationsMap['textOnActionTriggerAnimation2']!,
                      ),
                      Text(
                        'Learn more\n',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyMediumFamily,
                              color: Color(0xFFFCF8F8),
                              fontSize: 16.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w500,
                              decoration: TextDecoration.underline,
                              useGoogleFonts: !FlutterFlowTheme.of(context)
                                  .bodyMediumIsCustom,
                            ),
                      ),
                    ],
                  ),
                ),
                Opacity(
                  opacity: 0.7,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      'assets/images/WhatsApp_Image_2024-11-30_at_08.27.31.jpeg',
                      height: 450.0,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
            ).animateOnPageLoad(animationsMap['wrapOnPageLoadAnimation']!),
          ),
        ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation']!),
      ),
      onEnter: ((event) async {
        safeSetState(() => _model.mouseRegionHovered = true);
        if (animationsMap['textOnActionTriggerAnimation1'] != null) {
          await animationsMap['textOnActionTriggerAnimation1']!
              .controller
              .forward(from: 0.0);
        }
        if (animationsMap['textOnActionTriggerAnimation2'] != null) {
          await animationsMap['textOnActionTriggerAnimation2']!
              .controller
              .forward(from: 0.0);
        }
      }),
      onExit: ((event) async {
        safeSetState(() => _model.mouseRegionHovered = false);
      }),
    );
  }
}
