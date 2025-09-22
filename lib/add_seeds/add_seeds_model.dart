import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_place_picker.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:io';
import 'dart:math';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/random_data_util.dart' as random_data;
import '/index.dart';
import 'add_seeds_widget.dart' show AddSeedsWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';

class AddSeedsModel extends FlutterFlowModel<AddSeedsWidget> {
  ///  Local state fields for this page.
  /// refToIndexPageproperlywhileAdiingSeeds
  String? seedsRef;

  ///  State fields for stateful widgets in this page.

  final formKey1 = GlobalKey<FormState>();
  final formKey4 = GlobalKey<FormState>();
  final formKey3 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  // Stores action output result for [Custom Action - randomText] action in addSeeds widget.
  String? randomtext;
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // State field(s) for Nursery widget.
  String? nurseryValue;
  FormFieldController<String>? nurseryValueController;
  // State field(s) for category widget.
  String? categoryValue1;
  FormFieldController<String>? categoryValueController1;
  // State field(s) for species widget.
  String? speciesValue;
  FormFieldController<String>? speciesValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  String? _textController2Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Quantity in kgs is required';
    }

    return null;
  }

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  AllNurseriesRecord? nurseryref;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  SeedStockInNurseryRecord? seedinstock;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  SeedsRecord? referencedseeds;
  // State field(s) for category widget.
  String? categoryValue2;
  FormFieldController<String>? categoryValueController2;
  // State field(s) for species2 widget.
  String? species2Value;
  FormFieldController<String>? species2ValueController;
  DateTime? datePicked1;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode5;
  TextEditingController? textController5;
  String? Function(BuildContext, String?)? textController5Validator;
  String? _textController5Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Quantity is required';
    }

    return null;
  }

  DateTime? datePicked2;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode6;
  TextEditingController? textController6;
  String? Function(BuildContext, String?)? textController6Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode7;
  TextEditingController? textController7;
  String? Function(BuildContext, String?)? textController7Validator;
  bool isDataUploading_uploadDataRu = false;
  FFUploadedFile uploadedLocalFile_uploadDataRu =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadDataRu = '';

  DateTime? datePicked3;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // State field(s) for PlacePicker widget.
  FFPlace placePickerValue = FFPlace();
  // State field(s) for category widget.
  String? categoryValue3;
  FormFieldController<String>? categoryValueController3;
  // State field(s) for species3 widget.
  String? species3Value;
  FormFieldController<String>? species3ValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode8;
  TextEditingController? textController8;
  String? Function(BuildContext, String?)? textController8Validator;
  String? _textController8Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'numberofSeedlings is required';
    }

    return null;
  }

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode9;
  TextEditingController? textController9;
  String? Function(BuildContext, String?)? textController9Validator;
  String? _textController9Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Designated Driver is required';
    }

    return null;
  }

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode10;
  TextEditingController? textController10;
  String? Function(BuildContext, String?)? textController10Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode11;
  TextEditingController? textController11;
  String? Function(BuildContext, String?)? textController11Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode12;
  TextEditingController? textController12;
  String? Function(BuildContext, String?)? textController12Validator;
  bool isDataUploading_uploadDta57 = false;
  FFUploadedFile uploadedLocalFile_uploadDta57 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadDta57 = '';

  // State field(s) for Transfernursery widget.
  String? transfernurseryValue;
  FormFieldController<String>? transfernurseryValueController;
  // State field(s) for speciesfortransfer widget.
  String? speciesfortransferValue;
  FormFieldController<String>? speciesfortransferValueController;
  // State field(s) for numbertobetransfreed widget.
  FocusNode? numbertobetransfreedFocusNode;
  TextEditingController? numbertobetransfreedTextController;
  String? Function(BuildContext, String?)?
      numbertobetransfreedTextControllerValidator;
  String? _numbertobetransfreedTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'number of seedlings is required';
    }

    return null;
  }

  // State field(s) for transferdriver widget.
  FocusNode? transferdriverFocusNode;
  TextEditingController? transferdriverTextController;
  String? Function(BuildContext, String?)?
      transferdriverTextControllerValidator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode13;
  TextEditingController? textController15;
  String? Function(BuildContext, String?)? textController15Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode14;
  TextEditingController? textController16;
  String? Function(BuildContext, String?)? textController16Validator;
  // Stores action output result for [Custom Action - addTwoDoubleNumbers] action in Button widget.
  double? remainingsseedlings;

  @override
  void initState(BuildContext context) {
    textController2Validator = _textController2Validator;
    textController5Validator = _textController5Validator;
    textController8Validator = _textController8Validator;
    textController9Validator = _textController9Validator;
    numbertobetransfreedTextControllerValidator =
        _numbertobetransfreedTextControllerValidator;
  }

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    textFieldFocusNode3?.dispose();
    textController3?.dispose();

    textFieldFocusNode4?.dispose();
    textController4?.dispose();

    textFieldFocusNode5?.dispose();
    textController5?.dispose();

    textFieldFocusNode6?.dispose();
    textController6?.dispose();

    textFieldFocusNode7?.dispose();
    textController7?.dispose();

    textFieldFocusNode8?.dispose();
    textController8?.dispose();

    textFieldFocusNode9?.dispose();
    textController9?.dispose();

    textFieldFocusNode10?.dispose();
    textController10?.dispose();

    textFieldFocusNode11?.dispose();
    textController11?.dispose();

    textFieldFocusNode12?.dispose();
    textController12?.dispose();

    numbertobetransfreedFocusNode?.dispose();
    numbertobetransfreedTextController?.dispose();

    transferdriverFocusNode?.dispose();
    transferdriverTextController?.dispose();

    textFieldFocusNode13?.dispose();
    textController15?.dispose();

    textFieldFocusNode14?.dispose();
    textController16?.dispose();
  }
}
