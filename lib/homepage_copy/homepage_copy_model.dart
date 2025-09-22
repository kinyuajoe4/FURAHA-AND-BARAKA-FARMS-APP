import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/partners_widget.dart';
import '/components/update_comp_widget.dart';
import '/components/verify_email_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/webcomponents/barakanumbers/barakanumbers_widget.dart';
import '/webcomponents/from_c_e_oinfo_comp/from_c_e_oinfo_comp_widget.dart';
import '/webcomponents/landing_compweb/landing_compweb_widget.dart';
import '/webcomponents/landing_mobile/landing_mobile_widget.dart';
import '/webcomponents/ourservices/ourservices_widget.dart';
import '/webcomponents/ourservicesmobile/ourservicesmobile_widget.dart';
import '/webcomponents/ourstory_component_mobile/ourstory_component_mobile_widget.dart';
import 'dart:math';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/index.dart';
import 'homepage_copy_widget.dart' show HomepageCopyWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';

class HomepageCopyModel extends FlutterFlowModel<HomepageCopyWidget> {
  ///  Local state fields for this page.

  bool showContainer = false;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in HomepageCopy widget.
  AppVersionRecord? version;
  // Model for LandingCompweb component.
  late LandingCompwebModel landingCompwebModel;
  // State field(s) for RatingBar widget.
  double? ratingBarValue1;
  // Model for FromCEOinfoComp component.
  late FromCEOinfoCompModel fromCEOinfoCompModel;
  // Model for ourservices component.
  late OurservicesModel ourservicesModel;
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // Model for barakanumbers component.
  late BarakanumbersModel barakanumbersModel1;
  // State field(s) for Carousel widget.
  CarouselSliderController? carouselController1;
  int carouselCurrentIndex1 = 1;

  // State field(s) for Carousel widget.
  CarouselSliderController? carouselController2;
  int carouselCurrentIndex2 = 1;

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  // Model for landingMobile component.
  late LandingMobileModel landingMobileModel;
  // State field(s) for RatingBar widget.
  double? ratingBarValue2;
  // Model for ourservicesmobile component.
  late OurservicesmobileModel ourservicesmobileModel;
  // Model for ourstoryComponentMobile component.
  late OurstoryComponentMobileModel ourstoryComponentMobileModel;
  // Model for barakanumbers component.
  late BarakanumbersModel barakanumbersModel2;
  // Model for partners component.
  late PartnersModel partnersModel;
  // State field(s) for Carousel widget.
  CarouselSliderController? carouselController3;
  int carouselCurrentIndex3 = 1;

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode5;
  TextEditingController? textController5;
  String? Function(BuildContext, String?)? textController5Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode6;
  TextEditingController? textController6;
  String? Function(BuildContext, String?)? textController6Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode7;
  TextEditingController? textController7;
  String? Function(BuildContext, String?)? textController7Validator;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // State field(s) for emailAddress-login widget.
  FocusNode? emailAddressLoginFocusNode;
  TextEditingController? emailAddressLoginTextController;
  String? Function(BuildContext, String?)?
      emailAddressLoginTextControllerValidator;
  // State field(s) for password-login widget.
  FocusNode? passwordLoginFocusNode;
  TextEditingController? passwordLoginTextController;
  late bool passwordLoginVisibility;
  String? Function(BuildContext, String?)? passwordLoginTextControllerValidator;
  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;
  // State field(s) for password-Create widget.
  FocusNode? passwordCreateFocusNode;
  TextEditingController? passwordCreateTextController;
  late bool passwordCreateVisibility;
  String? Function(BuildContext, String?)?
      passwordCreateTextControllerValidator;
  // State field(s) for passwordConfirm widget.
  FocusNode? passwordConfirmFocusNode;
  TextEditingController? passwordConfirmTextController;
  late bool passwordConfirmVisibility;
  String? Function(BuildContext, String?)?
      passwordConfirmTextControllerValidator;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered1 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered2 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered3 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered4 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered5 = false;

  @override
  void initState(BuildContext context) {
    landingCompwebModel = createModel(context, () => LandingCompwebModel());
    fromCEOinfoCompModel = createModel(context, () => FromCEOinfoCompModel());
    ourservicesModel = createModel(context, () => OurservicesModel());
    barakanumbersModel1 = createModel(context, () => BarakanumbersModel());
    landingMobileModel = createModel(context, () => LandingMobileModel());
    ourservicesmobileModel =
        createModel(context, () => OurservicesmobileModel());
    ourstoryComponentMobileModel =
        createModel(context, () => OurstoryComponentMobileModel());
    barakanumbersModel2 = createModel(context, () => BarakanumbersModel());
    partnersModel = createModel(context, () => PartnersModel());
    passwordLoginVisibility = false;
    passwordCreateVisibility = false;
    passwordConfirmVisibility = false;
  }

  @override
  void dispose() {
    landingCompwebModel.dispose();
    fromCEOinfoCompModel.dispose();
    ourservicesModel.dispose();
    barakanumbersModel1.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    textFieldFocusNode3?.dispose();
    textController3?.dispose();

    textFieldFocusNode4?.dispose();
    textController4?.dispose();

    landingMobileModel.dispose();
    ourservicesmobileModel.dispose();
    ourstoryComponentMobileModel.dispose();
    barakanumbersModel2.dispose();
    partnersModel.dispose();
    textFieldFocusNode5?.dispose();
    textController5?.dispose();

    textFieldFocusNode6?.dispose();
    textController6?.dispose();

    textFieldFocusNode7?.dispose();
    textController7?.dispose();

    tabBarController?.dispose();
    emailAddressLoginFocusNode?.dispose();
    emailAddressLoginTextController?.dispose();

    passwordLoginFocusNode?.dispose();
    passwordLoginTextController?.dispose();

    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();

    passwordCreateFocusNode?.dispose();
    passwordCreateTextController?.dispose();

    passwordConfirmFocusNode?.dispose();
    passwordConfirmTextController?.dispose();
  }
}
