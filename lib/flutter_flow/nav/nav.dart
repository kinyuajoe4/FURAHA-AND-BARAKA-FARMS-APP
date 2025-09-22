import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';

import '/auth/base_auth_user_provider.dart';

import '/main.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'serialization_util.dart';

import '/index.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

GlobalKey<NavigatorState> appNavigatorKey = GlobalKey<NavigatorState>();

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      navigatorKey: appNavigatorKey,
      errorBuilder: (context, state) =>
          appStateNotifier.loggedIn ? NavBarPage() : HomepageCopyWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? NavBarPage() : HomepageCopyWidget(),
        ),
        FFRoute(
          name: AuthenticationMobileWidget.routeName,
          path: AuthenticationMobileWidget.routePath,
          builder: (context, params) => AuthenticationMobileWidget(),
        ),
        FFRoute(
          name: HomepageCopyWidget.routeName,
          path: HomepageCopyWidget.routePath,
          builder: (context, params) => HomepageCopyWidget(),
        ),
        FFRoute(
          name: ChooseProfileWidget.routeName,
          path: ChooseProfileWidget.routePath,
          builder: (context, params) => ChooseProfileWidget(
            useremail: params.getParam(
              'useremail',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: HomepagewebWidget.routeName,
          path: HomepagewebWidget.routePath,
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'Homepageweb')
              : HomepagewebWidget(),
        ),
        FFRoute(
          name: AddSeedsWidget.routeName,
          path: AddSeedsWidget.routePath,
          builder: (context, params) => AddSeedsWidget(),
        ),
        FFRoute(
          name: SeedsWidget.routeName,
          path: SeedsWidget.routePath,
          builder: (context, params) => SeedsWidget(),
        ),
        FFRoute(
          name: SeedlingsWidget.routeName,
          path: SeedlingsWidget.routePath,
          builder: (context, params) => SeedlingsWidget(),
        ),
        FFRoute(
          name: ForgotPasswordWidget.routeName,
          path: ForgotPasswordWidget.routePath,
          builder: (context, params) => ForgotPasswordWidget(),
        ),
        FFRoute(
          name: SeedsDashboardWidget.routeName,
          path: SeedsDashboardWidget.routePath,
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'seedsDashboard')
              : SeedsDashboardWidget(),
        ),
        FFRoute(
          name: AddFieldsWidget.routeName,
          path: AddFieldsWidget.routePath,
          asyncParams: {
            'treesDocument': getDoc(['seeds'], SeedsRecord.fromSnapshot),
            'seedsperSite': getDoc(['seeds', 'seedsDistributionPerInstitution'],
                SeedsDistributionPerInstitutionRecord.fromSnapshot),
          },
          builder: (context, params) => AddFieldsWidget(
            treesDocument: params.getParam(
              'treesDocument',
              ParamType.Document,
            ),
            seedsperSite: params.getParam(
              'seedsperSite',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: AddTreesWidget.routeName,
          path: AddTreesWidget.routePath,
          asyncParams: {
            'treesDocument': getDoc(['seeds'], SeedsRecord.fromSnapshot),
            'fielddoc': getDoc(['Fields'], FieldsRecord.fromSnapshot),
          },
          builder: (context, params) => AddTreesWidget(
            treesDocument: params.getParam(
              'treesDocument',
              ParamType.Document,
            ),
            fieldRef: params.getParam(
              'fieldRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Fields'],
            ),
            fielddoc: params.getParam(
              'fielddoc',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: AllFieldsWidget.routeName,
          path: AllFieldsWidget.routePath,
          asyncParams: {
            'treesDocument': getDoc(['seeds'], SeedsRecord.fromSnapshot),
          },
          builder: (context, params) => AllFieldsWidget(
            search: params.getParam(
              'search',
              ParamType.String,
            ),
            treesDocument: params.getParam(
              'treesDocument',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: VisitataionPageWidget.routeName,
          path: VisitataionPageWidget.routePath,
          asyncParams: {
            'speciesInaFieldDoc': getDoc(['Fields', 'TotalTreesInAField'],
                TotalTreesInAFieldRecord.fromSnapshot),
            'fieldDoc': getDoc(['Fields'], FieldsRecord.fromSnapshot),
          },
          builder: (context, params) => VisitataionPageWidget(
            speciesInaFieldDoc: params.getParam(
              'speciesInaFieldDoc',
              ParamType.Document,
            ),
            fieldDoc: params.getParam(
              'fieldDoc',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: AddIndividualTreeWidget.routeName,
          path: AddIndividualTreeWidget.routePath,
          builder: (context, params) => AddIndividualTreeWidget(
            county: params.getParam(
              'county',
              ParamType.String,
            ),
            fieldNameORinsitution: params.getParam(
              'fieldNameORinsitution',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: AllTreeBatchesInAfIELDWidget.routeName,
          path: AllTreeBatchesInAfIELDWidget.routePath,
          asyncParams: {
            'fieldDoc': getDoc(
                ['allTreesDelivered'], AllTreesDeliveredRecord.fromSnapshot),
            'mainFieldDoc': getDoc(['Fields'], FieldsRecord.fromSnapshot),
          },
          builder: (context, params) => AllTreeBatchesInAfIELDWidget(
            fieldDoc: params.getParam(
              'fieldDoc',
              ParamType.Document,
            ),
            fieldref: params.getParam(
              'fieldref',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['allTreesDelivered'],
            ),
            mainFieldDoc: params.getParam(
              'mainFieldDoc',
              ParamType.Document,
            ),
            institutiontTEST: params.getParam(
              'institutiontTEST',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: TreeBatchesWidget.routeName,
          path: TreeBatchesWidget.routePath,
          builder: (context, params) => TreeBatchesWidget(),
        ),
        FFRoute(
          name: UpdateseedWidget.routeName,
          path: UpdateseedWidget.routePath,
          builder: (context, params) => UpdateseedWidget(
            seedsref: params.getParam(
              'seedsref',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['seeds'],
            ),
            seedsinstock: params.getParam(
              'seedsinstock',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['allNurseries', 'seedStockInNursery'],
            ),
          ),
        ),
        FFRoute(
          name: DTBDashboardWidget.routeName,
          path: DTBDashboardWidget.routePath,
          builder: (context, params) => DTBDashboardWidget(),
        ),
        FFRoute(
          name: TreeStatusDTBWidget.routeName,
          path: TreeStatusDTBWidget.routePath,
          builder: (context, params) => TreeStatusDTBWidget(),
        ),
        FFRoute(
          name: AllTreesWidget.routeName,
          path: AllTreesWidget.routePath,
          builder: (context, params) => AllTreesWidget(),
        ),
        FFRoute(
          name: AllInsitutionsWidget.routeName,
          path: AllInsitutionsWidget.routePath,
          asyncParams: {
            'fieldsdocPassed':
                getDocList(['Fields'], FieldsRecord.fromSnapshot),
          },
          builder: (context, params) => AllInsitutionsWidget(
            searchname: params.getParam(
              'searchname',
              ParamType.String,
            ),
            fieldsdocPassed: params.getParam<FieldsRecord>(
              'fieldsdocPassed',
              ParamType.Document,
              isList: true,
            ),
          ),
        ),
        FFRoute(
          name: AllTreesDTBWidget.routeName,
          path: AllTreesDTBWidget.routePath,
          builder: (context, params) => AllTreesDTBWidget(),
        ),
        FFRoute(
          name: CarbonAbsorbedDTBWidget.routeName,
          path: CarbonAbsorbedDTBWidget.routePath,
          builder: (context, params) => CarbonAbsorbedDTBWidget(),
        ),
        FFRoute(
          name: KCbDashboardWidget.routeName,
          path: KCbDashboardWidget.routePath,
          builder: (context, params) => KCbDashboardWidget(),
        ),
        FFRoute(
          name: AllTreesKCBWidget.routeName,
          path: AllTreesKCBWidget.routePath,
          builder: (context, params) => AllTreesKCBWidget(),
        ),
        FFRoute(
          name: CarbonAbsorbedKCBWidget.routeName,
          path: CarbonAbsorbedKCBWidget.routePath,
          builder: (context, params) => CarbonAbsorbedKCBWidget(),
        ),
        FFRoute(
          name: DashboardsWidget.routeName,
          path: DashboardsWidget.routePath,
          builder: (context, params) => DashboardsWidget(),
        ),
        FFRoute(
          name: ProfileMainWidget.routeName,
          path: ProfileMainWidget.routePath,
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'profileMain')
              : ProfileMainWidget(),
        ),
        FFRoute(
          name: ProfileWidget.routeName,
          path: ProfileWidget.routePath,
          builder: (context, params) => ProfileWidget(
            fromAdmin: params.getParam(
              'fromAdmin',
              ParamType.bool,
            ),
          ),
        ),
        FFRoute(
          name: AdminDashboardWidget.routeName,
          path: AdminDashboardWidget.routePath,
          builder: (context, params) => AdminDashboardWidget(),
        ),
        FFRoute(
          name: AllusersWidget.routeName,
          path: AllusersWidget.routePath,
          builder: (context, params) => AllusersWidget(),
        ),
        FFRoute(
          name: CarbonSequestrationPageWidget.routeName,
          path: CarbonSequestrationPageWidget.routePath,
          builder: (context, params) => CarbonSequestrationPageWidget(),
        ),
        FFRoute(
          name: HealthyTreesWidget.routeName,
          path: HealthyTreesWidget.routePath,
          builder: (context, params) => HealthyTreesWidget(),
        ),
        FFRoute(
          name: DeadTreesWidget.routeName,
          path: DeadTreesWidget.routePath,
          builder: (context, params) => DeadTreesWidget(),
        ),
        FFRoute(
          name: IandMDashboardWidget.routeName,
          path: IandMDashboardWidget.routePath,
          builder: (context, params) => IandMDashboardWidget(),
        ),
        FFRoute(
          name: AllTreesIandMBankWidget.routeName,
          path: AllTreesIandMBankWidget.routePath,
          builder: (context, params) => AllTreesIandMBankWidget(),
        ),
        FFRoute(
          name: TreeStatusIandMBankWidget.routeName,
          path: TreeStatusIandMBankWidget.routePath,
          builder: (context, params) => TreeStatusIandMBankWidget(),
        ),
        FFRoute(
          name: CarbonAbsorbedIandMBankWidget.routeName,
          path: CarbonAbsorbedIandMBankWidget.routePath,
          builder: (context, params) => CarbonAbsorbedIandMBankWidget(),
        ),
        FFRoute(
          name: AllFieldsIandMbankWidget.routeName,
          path: AllFieldsIandMbankWidget.routePath,
          builder: (context, params) => AllFieldsIandMbankWidget(),
        ),
        FFRoute(
          name: AllTreeBatchesInAfIELDIandMBankWidget.routeName,
          path: AllTreeBatchesInAfIELDIandMBankWidget.routePath,
          asyncParams: {
            'fieldDoc': getDoc(['Fields'], FieldsRecord.fromSnapshot),
          },
          builder: (context, params) => AllTreeBatchesInAfIELDIandMBankWidget(
            fieldDoc: params.getParam(
              'fieldDoc',
              ParamType.Document,
            ),
            fieldref: params.getParam(
              'fieldref',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Fields'],
            ),
          ),
        ),
        FFRoute(
          name: VisitataionPageIandMWidget.routeName,
          path: VisitataionPageIandMWidget.routePath,
          asyncParams: {
            'treesrefDoc': getDoc(['Fields', 'TotalTreesInAField'],
                TotalTreesInAFieldRecord.fromSnapshot),
          },
          builder: (context, params) => VisitataionPageIandMWidget(
            treesinFieldRef: params.getParam(
              'treesinFieldRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Fields', 'TotalTreesInAField'],
            ),
            treesrefDoc: params.getParam(
              'treesrefDoc',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: SeedBatchesWidget.routeName,
          path: SeedBatchesWidget.routePath,
          asyncParams: {
            'seedsdoc': getDocList(['seeds'], SeedsRecord.fromSnapshot),
          },
          builder: (context, params) => SeedBatchesWidget(
            seedsdoc: params.getParam<SeedsRecord>(
              'seedsdoc',
              ParamType.Document,
              isList: true,
            ),
          ),
        ),
        FFRoute(
          name: AdminprofileEditWidget.routeName,
          path: AdminprofileEditWidget.routePath,
          asyncParams: {
            'usersdoc': getDoc(['users'], UsersRecord.fromSnapshot),
          },
          builder: (context, params) => AdminprofileEditWidget(
            useremail: params.getParam(
              'useremail',
              ParamType.String,
            ),
            usersdoc: params.getParam(
              'usersdoc',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: AllspeciessWidget.routeName,
          path: AllspeciessWidget.routePath,
          asyncParams: {
            'treesDocument': getDoc(['seeds'], SeedsRecord.fromSnapshot),
          },
          builder: (context, params) => AllspeciessWidget(
            search: params.getParam(
              'search',
              ParamType.String,
            ),
            treesDocument: params.getParam(
              'treesDocument',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: AllSpeciesDistributeddddWidget.routeName,
          path: AllSpeciesDistributeddddWidget.routePath,
          builder: (context, params) => AllSpeciesDistributeddddWidget(),
        ),
        FFRoute(
          name: AddNurseriesWidget.routeName,
          path: AddNurseriesWidget.routePath,
          asyncParams: {
            'treesDocument': getDoc(['seeds'], SeedsRecord.fromSnapshot),
            'nurseriesDocument':
                getDoc(['allNurseries'], AllNurseriesRecord.fromSnapshot),
          },
          builder: (context, params) => AddNurseriesWidget(
            treesDocument: params.getParam(
              'treesDocument',
              ParamType.Document,
            ),
            nurseriesDocument: params.getParam(
              'nurseriesDocument',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: AllInsitutionsCopyWidget.routeName,
          path: AllInsitutionsCopyWidget.routePath,
          builder: (context, params) => AllInsitutionsCopyWidget(),
        ),
        FFRoute(
          name: AddExistingSeedlingsWidget.routeName,
          path: AddExistingSeedlingsWidget.routePath,
          builder: (context, params) => AddExistingSeedlingsWidget(),
        ),
        FFRoute(
          name: AccountDeletionWidget.routeName,
          path: AccountDeletionWidget.routePath,
          builder: (context, params) => AccountDeletionWidget(),
        ),
        FFRoute(
          name: AllNurseriesWidget.routeName,
          path: AllNurseriesWidget.routePath,
          asyncParams: {
            'fieldDoc': getDoc(
                ['allTreesDelivered'], AllTreesDeliveredRecord.fromSnapshot),
            'mainFieldDoc': getDoc(['Fields'], FieldsRecord.fromSnapshot),
          },
          builder: (context, params) => AllNurseriesWidget(
            fieldDoc: params.getParam(
              'fieldDoc',
              ParamType.Document,
            ),
            fieldref: params.getParam(
              'fieldref',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['allTreesDelivered'],
            ),
            mainFieldDoc: params.getParam(
              'mainFieldDoc',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: VisitationHistoryWidget.routeName,
          path: VisitationHistoryWidget.routePath,
          asyncParams: {
            'speciesDoc': getDoc(['Fields', 'TotalTreesInAField'],
                TotalTreesInAFieldRecord.fromSnapshot),
          },
          builder: (context, params) => VisitationHistoryWidget(
            speciesDoc: params.getParam(
              'speciesDoc',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: SeedsInstockWidget.routeName,
          path: SeedsInstockWidget.routePath,
          builder: (context, params) => SeedsInstockWidget(),
        ),
        FFRoute(
          name: UniahdashboardWidget.routeName,
          path: UniahdashboardWidget.routePath,
          builder: (context, params) => UniahdashboardWidget(),
        ),
        FFRoute(
          name: RecentlyAddedSeedsWidget.routeName,
          path: RecentlyAddedSeedsWidget.routePath,
          builder: (context, params) => RecentlyAddedSeedsWidget(),
        ),
        FFRoute(
          name: AllTreesUNIAHWidget.routeName,
          path: AllTreesUNIAHWidget.routePath,
          builder: (context, params) => AllTreesUNIAHWidget(),
        ),
        FFRoute(
          name: TreeStatusUNIAHWidget.routeName,
          path: TreeStatusUNIAHWidget.routePath,
          builder: (context, params) => TreeStatusUNIAHWidget(),
        ),
        FFRoute(
          name: KPAMainDashBoardWidget.routeName,
          path: KPAMainDashBoardWidget.routePath,
          builder: (context, params) => KPAMainDashBoardWidget(),
        ),
        FFRoute(
          name: AbsaLifeInsuranceDashboardKenyaWidget.routeName,
          path: AbsaLifeInsuranceDashboardKenyaWidget.routePath,
          builder: (context, params) => AbsaLifeInsuranceDashboardKenyaWidget(),
        ),
        FFRoute(
          name: AllTreesAbsaLifAssuranceKenyaWidget.routeName,
          path: AllTreesAbsaLifAssuranceKenyaWidget.routePath,
          builder: (context, params) => AllTreesAbsaLifAssuranceKenyaWidget(),
        ),
        FFRoute(
          name: TreeStatusDTBCopyWidget.routeName,
          path: TreeStatusDTBCopyWidget.routePath,
          builder: (context, params) => TreeStatusDTBCopyWidget(),
        ),
        FFRoute(
          name: TreeStatusAbsaLifeAssuranceKenyaWidget.routeName,
          path: TreeStatusAbsaLifeAssuranceKenyaWidget.routePath,
          builder: (context, params) =>
              TreeStatusAbsaLifeAssuranceKenyaWidget(),
        ),
        FFRoute(
          name: CarbonAbsorbedAbsaLifeAssuranceKenyaWidget.routeName,
          path: CarbonAbsorbedAbsaLifeAssuranceKenyaWidget.routePath,
          builder: (context, params) =>
              CarbonAbsorbedAbsaLifeAssuranceKenyaWidget(),
        ),
        FFRoute(
          name: MainDashboardIBERAFRICAWidget.routeName,
          path: MainDashboardIBERAFRICAWidget.routePath,
          builder: (context, params) => MainDashboardIBERAFRICAWidget(),
        ),
        FFRoute(
          name: TreeStatusIBERAFRICAWidget.routeName,
          path: TreeStatusIBERAFRICAWidget.routePath,
          builder: (context, params) => TreeStatusIBERAFRICAWidget(),
        ),
        FFRoute(
          name: AllTreesIBERAFRICAWidget.routeName,
          path: AllTreesIBERAFRICAWidget.routePath,
          builder: (context, params) => AllTreesIBERAFRICAWidget(),
        ),
        FFRoute(
          name: CarbonAbsaorbedIBERAFRICAWidget.routeName,
          path: CarbonAbsaorbedIBERAFRICAWidget.routePath,
          builder: (context, params) => CarbonAbsaorbedIBERAFRICAWidget(),
        ),
        FFRoute(
          name: DraftpageWidget.routeName,
          path: DraftpageWidget.routePath,
          builder: (context, params) => DraftpageWidget(),
        ),
        FFRoute(
          name: ESGDTBDashboardWidget.routeName,
          path: ESGDTBDashboardWidget.routePath,
          builder: (context, params) => ESGDTBDashboardWidget(),
        ),
        FFRoute(
          name: SafeDashboardKPAWidget.routeName,
          path: SafeDashboardKPAWidget.routePath,
          builder: (context, params) => SafeDashboardKPAWidget(),
        ),
        FFRoute(
          name: KmlcopyWidget.routeName,
          path: KmlcopyWidget.routePath,
          builder: (context, params) => KmlcopyWidget(),
        ),
        FFRoute(
          name: HybridTESTCopyWidget.routeName,
          path: HybridTESTCopyWidget.routePath,
          builder: (context, params) => HybridTESTCopyWidget(),
        ),
        FFRoute(
          name: ReforestationEditWidget.routeName,
          path: ReforestationEditWidget.routePath,
          builder: (context, params) => ReforestationEditWidget(),
        ),
        FFRoute(
          name: AddFIELDORGANIZATIONWidget.routeName,
          path: AddFIELDORGANIZATIONWidget.routePath,
          asyncParams: {
            'treesDocument': getDoc(['seeds'], SeedsRecord.fromSnapshot),
            'seedsperSite': getDoc(['seeds', 'seedsDistributionPerInstitution'],
                SeedsDistributionPerInstitutionRecord.fromSnapshot),
          },
          builder: (context, params) => AddFIELDORGANIZATIONWidget(
            treesDocument: params.getParam(
              'treesDocument',
              ParamType.Document,
            ),
            seedsperSite: params.getParam(
              'seedsperSite',
              ParamType.Document,
            ),
            planterCompany: params.getParam(
              'planterCompany',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: AllInstitutionsMAINWidget.routeName,
          path: AllInstitutionsMAINWidget.routePath,
          asyncParams: {
            'fieldsdocPassed':
                getDocList(['Fields'], FieldsRecord.fromSnapshot),
          },
          builder: (context, params) => AllInstitutionsMAINWidget(
            searchname: params.getParam(
              'searchname',
              ParamType.String,
            ),
            fieldsdocPassed: params.getParam<FieldsRecord>(
              'fieldsdocPassed',
              ParamType.Document,
              isList: true,
            ),
          ),
        ),
        FFRoute(
          name: AddSOLARDITEWidget.routeName,
          path: AddSOLARDITEWidget.routePath,
          builder: (context, params) => AddSOLARDITEWidget(),
        ),
        FFRoute(
          name: TestpageWidget.routeName,
          path: TestpageWidget.routePath,
          builder: (context, params) => TestpageWidget(),
        ),
        FFRoute(
          name: MainVisitPageWidget.routeName,
          path: MainVisitPageWidget.routePath,
          asyncParams: {
            'speciesDoc': getDoc(['Fields', 'TotalTreesInAField'],
                TotalTreesInAFieldRecord.fromSnapshot),
            'fieldDoc': getDoc(['Fields'], FieldsRecord.fromSnapshot),
          },
          builder: (context, params) => MainVisitPageWidget(
            speciesDoc: params.getParam(
              'speciesDoc',
              ParamType.Document,
            ),
            fieldDoc: params.getParam(
              'fieldDoc',
              ParamType.Document,
            ),
          ),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
      observers: [routeObserver],
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
    List<String>? collectionNamePath,
    StructBuilder<T>? structBuilder,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      collectionNamePath: collectionNamePath,
      structBuilder: structBuilder,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.uri.toString());
            return '/homepageCopy';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Container(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  child: Image.asset(
                    'assets/images/WhatsApp_Image_2024-11-30_at_08.27.10.jpeg',
                    fit: BoxFit.contain,
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
