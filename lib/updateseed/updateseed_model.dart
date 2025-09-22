import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/supabase/supabase.dart';
import '/components/seed_destinations_widget.dart';
import '/components/uploadreceipt_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:math';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/index.dart';
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'updateseed_widget.dart' show UpdateseedWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:octo_image/octo_image.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';

class UpdateseedModel extends FlutterFlowModel<UpdateseedWidget> {
  ///  Local state fields for this page.
  /// refToIndexPageproperlywhileAdiingSeeds
  String? seedsRef;

  ///  State fields for stateful widgets in this page.

  final formKey4 = GlobalKey<FormState>();
  final formKey5 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  final formKey3 = GlobalKey<FormState>();
  // Stores action output result for [Custom Action - randomText] action in updateseed widget.
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
  String? speciesValue1;
  FormFieldController<String>? speciesValueController1;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  String? _textController1Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Quantity is required';
    }

    return null;
  }

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for UpdateNursery widget.
  String? updateNurseryValue;
  FormFieldController<String>? updateNurseryValueController;
  // State field(s) for category widget.
  String? categoryValue2;
  FormFieldController<String>? categoryValueController2;
  // State field(s) for SPECIESUPDATESSS widget.
  String? speciesupdatesssValue;
  FormFieldController<String>? speciesupdatesssValueController;
  DateTime? datePicked1;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode5;
  TextEditingController? textController5;
  String? Function(BuildContext, String?)? textController5Validator;
  bool isDataUploading_uploadDataRur = false;
  FFUploadedFile uploadedLocalFile_uploadDataRur =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadDataRur = '';

  // Stores action output result for [Custom Action - addTwoDoubleNumbers] action in Button widget.
  double? availableseedscal;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  AllNurseriesRecord? nurseryrefupdate;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  SeedStockInNurseryRecord? seedsbeingupdate;
  // State field(s) for species widget.
  String? speciesValue2;
  FormFieldController<String>? speciesValueController2;
  DateTime? datePicked2;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode6;
  TextEditingController? textController6;
  String? Function(BuildContext, String?)? textController6Validator;
  // State field(s) for descriptionduringTransfer widget.
  FocusNode? descriptionduringTransferFocusNode;
  TextEditingController? descriptionduringTransferTextController;
  String? Function(BuildContext, String?)?
      descriptionduringTransferTextControllerValidator;
  bool isDataUploading_uploadDataRur00 = false;
  FFUploadedFile uploadedLocalFile_uploadDataRur00 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadDataRur00 = '';

  // State field(s) for sortedspecies widget.
  String? sortedspeciesValue;
  FormFieldController<String>? sortedspeciesValueController;
  // State field(s) for sortedseedlings widget.
  FocusNode? sortedseedlingsFocusNode;
  TextEditingController? sortedseedlingsTextController;
  String? Function(BuildContext, String?)?
      sortedseedlingsTextControllerValidator;
  String? _sortedseedlingsTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'numberofSortedSeedlings is required';
    }

    return null;
  }

  bool isDataUploading_uploadDtyy = false;
  FFUploadedFile uploadedLocalFile_uploadDtyy =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadDtyy = '';

  DateTime? datePicked3;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // Model for SeedDestinations component.
  late SeedDestinationsModel seedDestinationsModel;
  List<FieldsRecord> simpleSearchResults = [];
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
  FocusNode? textFieldFocusNode7;
  TextEditingController? textController11;
  String? Function(BuildContext, String?)? textController11Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode8;
  TextEditingController? textController12;
  String? Function(BuildContext, String?)? textController12Validator;
  // Stores action output result for [Custom Action - addTwoDoubleNumbers] action in Button widget.
  double? remainingsseedlings;
  // Stores action output result for [Firestore Query - Query a collection] action in Row widget.
  FieldsRecord? filterfilder;

  @override
  void initState(BuildContext context) {
    textController1Validator = _textController1Validator;
    sortedseedlingsTextControllerValidator =
        _sortedseedlingsTextControllerValidator;
    seedDestinationsModel = createModel(context, () => SeedDestinationsModel());
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

    descriptionduringTransferFocusNode?.dispose();
    descriptionduringTransferTextController?.dispose();

    sortedseedlingsFocusNode?.dispose();
    sortedseedlingsTextController?.dispose();

    seedDestinationsModel.dispose();
    numbertobetransfreedFocusNode?.dispose();
    numbertobetransfreedTextController?.dispose();

    transferdriverFocusNode?.dispose();
    transferdriverTextController?.dispose();

    textFieldFocusNode7?.dispose();
    textController11?.dispose();

    textFieldFocusNode8?.dispose();
    textController12?.dispose();
  }
}
