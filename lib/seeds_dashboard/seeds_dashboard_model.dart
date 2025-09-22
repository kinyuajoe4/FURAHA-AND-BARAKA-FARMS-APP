import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/empty_widget.dart';
import '/components/replant_stock_widget.dart';
import '/components/side_bar_nav_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:async';
import 'dart:math';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/request_manager.dart';

import '/index.dart';
import 'seeds_dashboard_widget.dart' show SeedsDashboardWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';

class SeedsDashboardModel extends FlutterFlowModel<SeedsDashboardWidget> {
  ///  Local state fields for this page.

  String? nurseryname;

  /// stores the name of the institution to be seached
  String? institutiontobeSearched;

  SeedsDistributionPerInstitutionRecord? seedsTobeMatchedDoc;

  ///  State fields for stateful widgets in this page.

  // Model for sideBarNav component.
  late SideBarNavModel sideBarNavModel;
  // State field(s) for Nursery widget.
  String? nurseryValue;
  FormFieldController<String>? nurseryValueController;
  // Stores action output result for [Firestore Query - Query a collection] action in Nursery widget.
  List<SeedsRecord>? seedsList1;
  // Stores action output result for [Firestore Query - Query a collection] action in Nursery widget.
  List<SeedsRecord>? seedsList2;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<FieldsRecord> simpleSearchResults = [];
  // Stores action output result for [Firestore Query - Query a collection] action in projectCard widget.
  FieldsRecord? filterFields;
  // Stores action output result for [Firestore Query - Query a collection] action in projectCard widget.
  TotalTreesInAFieldRecord? speciesMatchingQuery;
  // Stores action output result for [Custom Action - addTwoDoubleNumbers] action in projectCard widget.
  double? speciesSum;
  // Stores action output result for [Firestore Query - Query a collection] action in projectCard widget.
  TotalTreesPerSpeciesRecord? speciesref;
  // Stores action output result for [Custom Action - addTwoDoubleNumbers] action in projectCard widget.
  double? sumoftrees;
  // Stores action output result for [Firestore Query - Query a collection] action in projectCard widget.
  DistributionPerCountyRecord? filteredCounty;
  // Stores action output result for [Firestore Query - Query a collection] action in contentView_2 widget.
  TotalTreesInAFieldRecord? speciesMatchingQuery2;
  // Stores action output result for [Custom Action - addTwoDoubleNumbers] action in contentView_2 widget.
  double? speciesSum2;
  // Stores action output result for [Firestore Query - Query a collection] action in contentView_2 widget.
  TotalTreesPerSpeciesRecord? speciesref2;
  // Stores action output result for [Custom Action - addTwoDoubleNumbers] action in contentView_2 widget.
  double? sumoftrees2;
  // Stores action output result for [Firestore Query - Query a collection] action in contentView_2 widget.
  DistributionPerCountyRecord? filteredCounty1;

  /// Query cache managers for this widget.

  final _totalAddedSeedsManager = FutureRequestManager<List<SeedsRecord>>();
  Future<List<SeedsRecord>> totalAddedSeeds({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<SeedsRecord>> Function() requestFn,
  }) =>
      _totalAddedSeedsManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearTotalAddedSeedsCache() => _totalAddedSeedsManager.clear();
  void clearTotalAddedSeedsCacheKey(String? uniqueKey) =>
      _totalAddedSeedsManager.clearRequest(uniqueKey);

  @override
  void initState(BuildContext context) {
    sideBarNavModel = createModel(context, () => SideBarNavModel());
  }

  @override
  void dispose() {
    sideBarNavModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    /// Dispose query cache managers for this widget.

    clearTotalAddedSeedsCache();
  }
}
