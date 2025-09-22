import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_autocomplete_options_list.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
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
import '/index.dart';
import 'add_f_i_e_l_d_o_r_g_a_n_i_z_a_t_i_o_n_widget.dart'
    show AddFIELDORGANIZATIONWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class AddFIELDORGANIZATIONModel
    extends FlutterFlowModel<AddFIELDORGANIZATIONWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for location widget.
  FocusNode? locationFocusNode;
  TextEditingController? locationTextController;
  String? Function(BuildContext, String?)? locationTextControllerValidator;
  // State field(s) for insitutionname widget.
  FocusNode? insitutionnameFocusNode;
  TextEditingController? insitutionnameTextController;
  String? Function(BuildContext, String?)?
      insitutionnameTextControllerValidator;
  String? _insitutionnameTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field Name/Insitution Name * is required';
    }

    return null;
  }

  // State field(s) for PlacePicker widget.
  FFPlace placePickerValue = FFPlace();
  DateTime? datePicked;
  // State field(s) for mainPlanter widget.
  final mainPlanterKey = GlobalKey();
  FocusNode? mainPlanterFocusNode;
  TextEditingController? mainPlanterTextController;
  String? mainPlanterSelectedOption;
  String? Function(BuildContext, String?)? mainPlanterTextControllerValidator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  bool isDataUploading_uploadDataAf = false;
  FFUploadedFile uploadedLocalFile_uploadDataAf =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadDataAf = '';

  // Stores action output result for [Custom Action - randomText] action in Button widget.
  String? randomref;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  FieldsRecord? fieldref;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  TotalTreesInAFieldRecord? speciesMatchingQuery3;
  // Stores action output result for [Custom Action - addTwoDoubleNumbers] action in Button widget.
  double? speciesSum;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  TotalTreesPerSpeciesRecord? speciesref;
  // Stores action output result for [Custom Action - addTwoDoubleNumbers] action in Button widget.
  double? sumoftrees;

  @override
  void initState(BuildContext context) {
    insitutionnameTextControllerValidator =
        _insitutionnameTextControllerValidator;
  }

  @override
  void dispose() {
    locationFocusNode?.dispose();
    locationTextController?.dispose();

    insitutionnameFocusNode?.dispose();
    insitutionnameTextController?.dispose();

    mainPlanterFocusNode?.dispose();

    textFieldFocusNode?.dispose();
    textController4?.dispose();
  }
}
