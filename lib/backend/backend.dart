import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../auth/firebase_auth/auth_util.dart';

import '../flutter_flow/flutter_flow_util.dart';
import 'schema/util/firestore_util.dart';

import 'schema/users_record.dart';
import 'schema/seeds_record.dart';
import 'schema/trees_record.dart';
import 'schema/countries_record.dart';
import 'schema/projects_record.dart';
import 'schema/fields_record.dart';
import 'schema/total_trees_in_a_field_record.dart';
import 'schema/all_trees_delivered_record.dart';
import 'schema/distribution_per_county_record.dart';
import 'schema/total_trees_per_species_record.dart';
import 'schema/iand_m_distributionper_county_record.dart';
import 'schema/all_nurseries_record.dart';
import 'schema/all_speciesperinstitution_record.dart';
import 'schema/seeds_distribution_per_institution_record.dart';
import 'schema/accounts_for_deletion_record.dart';
import 'schema/notifications_record.dart';
import 'schema/seed_stock_in_nursery_record.dart';
import 'schema/u_n_i_a_h_distribution_per_county_record.dart';
import 'schema/absa_d_istribution_per_county_record.dart';
import 'schema/app_version_record.dart';
import 'schema/hybrid_cranes_k_p_a_record.dart';
import 'schema/solar_project_k_p_a_record.dart';
import 'schema/carbon_progress_d_t_b_record.dart';
import 'schema/carbon_progress_k_p_a_record.dart';
import 'schema/carbon_progress_k_c_b_record.dart';
import 'schema/carbon_progress_a_b_s_a_record.dart';
import 'schema/carbon_progress_i_b_e_r_a_f_r_i_c_a_record.dart';
import 'schema/trees_visitation_history_record.dart';

export 'dart:async' show StreamSubscription;
export 'package:cloud_firestore/cloud_firestore.dart' hide Order;
export 'package:firebase_core/firebase_core.dart';
export 'schema/index.dart';
export 'schema/util/firestore_util.dart';
export 'schema/util/schema_util.dart';

export 'schema/users_record.dart';
export 'schema/seeds_record.dart';
export 'schema/trees_record.dart';
export 'schema/countries_record.dart';
export 'schema/projects_record.dart';
export 'schema/fields_record.dart';
export 'schema/total_trees_in_a_field_record.dart';
export 'schema/all_trees_delivered_record.dart';
export 'schema/distribution_per_county_record.dart';
export 'schema/total_trees_per_species_record.dart';
export 'schema/iand_m_distributionper_county_record.dart';
export 'schema/all_nurseries_record.dart';
export 'schema/all_speciesperinstitution_record.dart';
export 'schema/seeds_distribution_per_institution_record.dart';
export 'schema/accounts_for_deletion_record.dart';
export 'schema/notifications_record.dart';
export 'schema/seed_stock_in_nursery_record.dart';
export 'schema/u_n_i_a_h_distribution_per_county_record.dart';
export 'schema/absa_d_istribution_per_county_record.dart';
export 'schema/app_version_record.dart';
export 'schema/hybrid_cranes_k_p_a_record.dart';
export 'schema/solar_project_k_p_a_record.dart';
export 'schema/carbon_progress_d_t_b_record.dart';
export 'schema/carbon_progress_k_p_a_record.dart';
export 'schema/carbon_progress_k_c_b_record.dart';
export 'schema/carbon_progress_a_b_s_a_record.dart';
export 'schema/carbon_progress_i_b_e_r_a_f_r_i_c_a_record.dart';
export 'schema/trees_visitation_history_record.dart';

/// Functions to query UsersRecords (as a Stream and as a Future).
Future<int> queryUsersRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      UsersRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<UsersRecord>> queryUsersRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      UsersRecord.collection,
      UsersRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<UsersRecord>> queryUsersRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      UsersRecord.collection,
      UsersRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query SeedsRecords (as a Stream and as a Future).
Future<int> querySeedsRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      SeedsRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<SeedsRecord>> querySeedsRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      SeedsRecord.collection,
      SeedsRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<SeedsRecord>> querySeedsRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      SeedsRecord.collection,
      SeedsRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query TreesRecords (as a Stream and as a Future).
Future<int> queryTreesRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      TreesRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<TreesRecord>> queryTreesRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      TreesRecord.collection,
      TreesRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<TreesRecord>> queryTreesRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      TreesRecord.collection,
      TreesRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query CountriesRecords (as a Stream and as a Future).
Future<int> queryCountriesRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      CountriesRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<CountriesRecord>> queryCountriesRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      CountriesRecord.collection,
      CountriesRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<CountriesRecord>> queryCountriesRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      CountriesRecord.collection,
      CountriesRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query ProjectsRecords (as a Stream and as a Future).
Future<int> queryProjectsRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      ProjectsRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<ProjectsRecord>> queryProjectsRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      ProjectsRecord.collection,
      ProjectsRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<ProjectsRecord>> queryProjectsRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      ProjectsRecord.collection,
      ProjectsRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query FieldsRecords (as a Stream and as a Future).
Future<int> queryFieldsRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      FieldsRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<FieldsRecord>> queryFieldsRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      FieldsRecord.collection,
      FieldsRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<FieldsRecord>> queryFieldsRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      FieldsRecord.collection,
      FieldsRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query TotalTreesInAFieldRecords (as a Stream and as a Future).
Future<int> queryTotalTreesInAFieldRecordCount({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      TotalTreesInAFieldRecord.collection(parent),
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<TotalTreesInAFieldRecord>> queryTotalTreesInAFieldRecord({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      TotalTreesInAFieldRecord.collection(parent),
      TotalTreesInAFieldRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<TotalTreesInAFieldRecord>> queryTotalTreesInAFieldRecordOnce({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      TotalTreesInAFieldRecord.collection(parent),
      TotalTreesInAFieldRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query AllTreesDeliveredRecords (as a Stream and as a Future).
Future<int> queryAllTreesDeliveredRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      AllTreesDeliveredRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<AllTreesDeliveredRecord>> queryAllTreesDeliveredRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      AllTreesDeliveredRecord.collection,
      AllTreesDeliveredRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<AllTreesDeliveredRecord>> queryAllTreesDeliveredRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      AllTreesDeliveredRecord.collection,
      AllTreesDeliveredRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query DistributionPerCountyRecords (as a Stream and as a Future).
Future<int> queryDistributionPerCountyRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      DistributionPerCountyRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<DistributionPerCountyRecord>> queryDistributionPerCountyRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      DistributionPerCountyRecord.collection,
      DistributionPerCountyRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<DistributionPerCountyRecord>> queryDistributionPerCountyRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      DistributionPerCountyRecord.collection,
      DistributionPerCountyRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query TotalTreesPerSpeciesRecords (as a Stream and as a Future).
Future<int> queryTotalTreesPerSpeciesRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      TotalTreesPerSpeciesRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<TotalTreesPerSpeciesRecord>> queryTotalTreesPerSpeciesRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      TotalTreesPerSpeciesRecord.collection,
      TotalTreesPerSpeciesRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<TotalTreesPerSpeciesRecord>> queryTotalTreesPerSpeciesRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      TotalTreesPerSpeciesRecord.collection,
      TotalTreesPerSpeciesRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query IandMDistributionperCountyRecords (as a Stream and as a Future).
Future<int> queryIandMDistributionperCountyRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      IandMDistributionperCountyRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<IandMDistributionperCountyRecord>>
    queryIandMDistributionperCountyRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
        queryCollection(
          IandMDistributionperCountyRecord.collection,
          IandMDistributionperCountyRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          limit: limit,
          singleRecord: singleRecord,
        );

Future<List<IandMDistributionperCountyRecord>>
    queryIandMDistributionperCountyRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
        queryCollectionOnce(
          IandMDistributionperCountyRecord.collection,
          IandMDistributionperCountyRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          limit: limit,
          singleRecord: singleRecord,
        );

/// Functions to query AllNurseriesRecords (as a Stream and as a Future).
Future<int> queryAllNurseriesRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      AllNurseriesRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<AllNurseriesRecord>> queryAllNurseriesRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      AllNurseriesRecord.collection,
      AllNurseriesRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<AllNurseriesRecord>> queryAllNurseriesRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      AllNurseriesRecord.collection,
      AllNurseriesRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query AllSpeciesperinstitutionRecords (as a Stream and as a Future).
Future<int> queryAllSpeciesperinstitutionRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      AllSpeciesperinstitutionRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<AllSpeciesperinstitutionRecord>>
    queryAllSpeciesperinstitutionRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
        queryCollection(
          AllSpeciesperinstitutionRecord.collection,
          AllSpeciesperinstitutionRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          limit: limit,
          singleRecord: singleRecord,
        );

Future<List<AllSpeciesperinstitutionRecord>>
    queryAllSpeciesperinstitutionRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
        queryCollectionOnce(
          AllSpeciesperinstitutionRecord.collection,
          AllSpeciesperinstitutionRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          limit: limit,
          singleRecord: singleRecord,
        );

/// Functions to query SeedsDistributionPerInstitutionRecords (as a Stream and as a Future).
Future<int> querySeedsDistributionPerInstitutionRecordCount({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      SeedsDistributionPerInstitutionRecord.collection(parent),
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<SeedsDistributionPerInstitutionRecord>>
    querySeedsDistributionPerInstitutionRecord({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
        queryCollection(
          SeedsDistributionPerInstitutionRecord.collection(parent),
          SeedsDistributionPerInstitutionRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          limit: limit,
          singleRecord: singleRecord,
        );

Future<List<SeedsDistributionPerInstitutionRecord>>
    querySeedsDistributionPerInstitutionRecordOnce({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
        queryCollectionOnce(
          SeedsDistributionPerInstitutionRecord.collection(parent),
          SeedsDistributionPerInstitutionRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          limit: limit,
          singleRecord: singleRecord,
        );

/// Functions to query AccountsForDeletionRecords (as a Stream and as a Future).
Future<int> queryAccountsForDeletionRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      AccountsForDeletionRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<AccountsForDeletionRecord>> queryAccountsForDeletionRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      AccountsForDeletionRecord.collection,
      AccountsForDeletionRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<AccountsForDeletionRecord>> queryAccountsForDeletionRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      AccountsForDeletionRecord.collection,
      AccountsForDeletionRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query NotificationsRecords (as a Stream and as a Future).
Future<int> queryNotificationsRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      NotificationsRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<NotificationsRecord>> queryNotificationsRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      NotificationsRecord.collection,
      NotificationsRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<NotificationsRecord>> queryNotificationsRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      NotificationsRecord.collection,
      NotificationsRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query SeedStockInNurseryRecords (as a Stream and as a Future).
Future<int> querySeedStockInNurseryRecordCount({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      SeedStockInNurseryRecord.collection(parent),
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<SeedStockInNurseryRecord>> querySeedStockInNurseryRecord({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      SeedStockInNurseryRecord.collection(parent),
      SeedStockInNurseryRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<SeedStockInNurseryRecord>> querySeedStockInNurseryRecordOnce({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      SeedStockInNurseryRecord.collection(parent),
      SeedStockInNurseryRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query UNIAHDistributionPerCountyRecords (as a Stream and as a Future).
Future<int> queryUNIAHDistributionPerCountyRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      UNIAHDistributionPerCountyRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<UNIAHDistributionPerCountyRecord>>
    queryUNIAHDistributionPerCountyRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
        queryCollection(
          UNIAHDistributionPerCountyRecord.collection,
          UNIAHDistributionPerCountyRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          limit: limit,
          singleRecord: singleRecord,
        );

Future<List<UNIAHDistributionPerCountyRecord>>
    queryUNIAHDistributionPerCountyRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
        queryCollectionOnce(
          UNIAHDistributionPerCountyRecord.collection,
          UNIAHDistributionPerCountyRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          limit: limit,
          singleRecord: singleRecord,
        );

/// Functions to query AbsaDIstributionPerCountyRecords (as a Stream and as a Future).
Future<int> queryAbsaDIstributionPerCountyRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      AbsaDIstributionPerCountyRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<AbsaDIstributionPerCountyRecord>>
    queryAbsaDIstributionPerCountyRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
        queryCollection(
          AbsaDIstributionPerCountyRecord.collection,
          AbsaDIstributionPerCountyRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          limit: limit,
          singleRecord: singleRecord,
        );

Future<List<AbsaDIstributionPerCountyRecord>>
    queryAbsaDIstributionPerCountyRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
        queryCollectionOnce(
          AbsaDIstributionPerCountyRecord.collection,
          AbsaDIstributionPerCountyRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          limit: limit,
          singleRecord: singleRecord,
        );

/// Functions to query AppVersionRecords (as a Stream and as a Future).
Future<int> queryAppVersionRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      AppVersionRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<AppVersionRecord>> queryAppVersionRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      AppVersionRecord.collection,
      AppVersionRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<AppVersionRecord>> queryAppVersionRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      AppVersionRecord.collection,
      AppVersionRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query HybridCranesKPARecords (as a Stream and as a Future).
Future<int> queryHybridCranesKPARecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      HybridCranesKPARecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<HybridCranesKPARecord>> queryHybridCranesKPARecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      HybridCranesKPARecord.collection,
      HybridCranesKPARecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<HybridCranesKPARecord>> queryHybridCranesKPARecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      HybridCranesKPARecord.collection,
      HybridCranesKPARecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query SolarProjectKPARecords (as a Stream and as a Future).
Future<int> querySolarProjectKPARecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      SolarProjectKPARecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<SolarProjectKPARecord>> querySolarProjectKPARecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      SolarProjectKPARecord.collection,
      SolarProjectKPARecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<SolarProjectKPARecord>> querySolarProjectKPARecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      SolarProjectKPARecord.collection,
      SolarProjectKPARecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query CarbonProgressDTBRecords (as a Stream and as a Future).
Future<int> queryCarbonProgressDTBRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      CarbonProgressDTBRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<CarbonProgressDTBRecord>> queryCarbonProgressDTBRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      CarbonProgressDTBRecord.collection,
      CarbonProgressDTBRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<CarbonProgressDTBRecord>> queryCarbonProgressDTBRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      CarbonProgressDTBRecord.collection,
      CarbonProgressDTBRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query CarbonProgressKPARecords (as a Stream and as a Future).
Future<int> queryCarbonProgressKPARecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      CarbonProgressKPARecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<CarbonProgressKPARecord>> queryCarbonProgressKPARecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      CarbonProgressKPARecord.collection,
      CarbonProgressKPARecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<CarbonProgressKPARecord>> queryCarbonProgressKPARecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      CarbonProgressKPARecord.collection,
      CarbonProgressKPARecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query CarbonProgressKCBRecords (as a Stream and as a Future).
Future<int> queryCarbonProgressKCBRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      CarbonProgressKCBRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<CarbonProgressKCBRecord>> queryCarbonProgressKCBRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      CarbonProgressKCBRecord.collection,
      CarbonProgressKCBRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<CarbonProgressKCBRecord>> queryCarbonProgressKCBRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      CarbonProgressKCBRecord.collection,
      CarbonProgressKCBRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query CarbonProgressABSARecords (as a Stream and as a Future).
Future<int> queryCarbonProgressABSARecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      CarbonProgressABSARecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<CarbonProgressABSARecord>> queryCarbonProgressABSARecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      CarbonProgressABSARecord.collection,
      CarbonProgressABSARecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<CarbonProgressABSARecord>> queryCarbonProgressABSARecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      CarbonProgressABSARecord.collection,
      CarbonProgressABSARecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query CarbonProgressIBERAFRICARecords (as a Stream and as a Future).
Future<int> queryCarbonProgressIBERAFRICARecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      CarbonProgressIBERAFRICARecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<CarbonProgressIBERAFRICARecord>>
    queryCarbonProgressIBERAFRICARecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
        queryCollection(
          CarbonProgressIBERAFRICARecord.collection,
          CarbonProgressIBERAFRICARecord.fromSnapshot,
          queryBuilder: queryBuilder,
          limit: limit,
          singleRecord: singleRecord,
        );

Future<List<CarbonProgressIBERAFRICARecord>>
    queryCarbonProgressIBERAFRICARecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
        queryCollectionOnce(
          CarbonProgressIBERAFRICARecord.collection,
          CarbonProgressIBERAFRICARecord.fromSnapshot,
          queryBuilder: queryBuilder,
          limit: limit,
          singleRecord: singleRecord,
        );

/// Functions to query TreesVisitationHistoryRecords (as a Stream and as a Future).
Future<int> queryTreesVisitationHistoryRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      TreesVisitationHistoryRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<TreesVisitationHistoryRecord>> queryTreesVisitationHistoryRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      TreesVisitationHistoryRecord.collection,
      TreesVisitationHistoryRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<TreesVisitationHistoryRecord>>
    queryTreesVisitationHistoryRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
        queryCollectionOnce(
          TreesVisitationHistoryRecord.collection,
          TreesVisitationHistoryRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          limit: limit,
          singleRecord: singleRecord,
        );

Future<int> queryCollectionCount(
  Query collection, {
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) {
  final builder = queryBuilder ?? (q) => q;
  var query = builder(collection);
  if (limit > 0) {
    query = query.limit(limit);
  }

  return query.count().get().catchError((err) {
    print('Error querying $collection: $err');
  }).then((value) => value.count!);
}

Stream<List<T>> queryCollection<T>(
  Query collection,
  RecordBuilder<T> recordBuilder, {
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) {
  final builder = queryBuilder ?? (q) => q;
  var query = builder(collection);
  if (limit > 0 || singleRecord) {
    query = query.limit(singleRecord ? 1 : limit);
  }
  return query.snapshots().handleError((err) {
    print('Error querying $collection: $err');
  }).map((s) => s.docs
      .map(
        (d) => safeGet(
          () => recordBuilder(d),
          (e) => print('Error serializing doc ${d.reference.path}:\n$e'),
        ),
      )
      .where((d) => d != null)
      .map((d) => d!)
      .toList());
}

Future<List<T>> queryCollectionOnce<T>(
  Query collection,
  RecordBuilder<T> recordBuilder, {
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) {
  final builder = queryBuilder ?? (q) => q;
  var query = builder(collection);
  if (limit > 0 || singleRecord) {
    query = query.limit(singleRecord ? 1 : limit);
  }
  return query.get().then((s) => s.docs
      .map(
        (d) => safeGet(
          () => recordBuilder(d),
          (e) => print('Error serializing doc ${d.reference.path}:\n$e'),
        ),
      )
      .where((d) => d != null)
      .map((d) => d!)
      .toList());
}

Filter filterIn(String field, List? list) => (list?.isEmpty ?? true)
    ? Filter(field, whereIn: null)
    : Filter(field, whereIn: list);

Filter filterArrayContainsAny(String field, List? list) =>
    (list?.isEmpty ?? true)
        ? Filter(field, arrayContainsAny: null)
        : Filter(field, arrayContainsAny: list);

extension QueryExtension on Query {
  Query whereIn(String field, List? list) => (list?.isEmpty ?? true)
      ? where(field, whereIn: null)
      : where(field, whereIn: list);

  Query whereNotIn(String field, List? list) => (list?.isEmpty ?? true)
      ? where(field, whereNotIn: null)
      : where(field, whereNotIn: list);

  Query whereArrayContainsAny(String field, List? list) =>
      (list?.isEmpty ?? true)
          ? where(field, arrayContainsAny: null)
          : where(field, arrayContainsAny: list);
}

class FFFirestorePage<T> {
  final List<T> data;
  final Stream<List<T>>? dataStream;
  final QueryDocumentSnapshot? nextPageMarker;

  FFFirestorePage(this.data, this.dataStream, this.nextPageMarker);
}

Future<FFFirestorePage<T>> queryCollectionPage<T>(
  Query collection,
  RecordBuilder<T> recordBuilder, {
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
}) async {
  final builder = queryBuilder ?? (q) => q;
  var query = builder(collection).limit(pageSize);
  if (nextPageMarker != null) {
    query = query.startAfterDocument(nextPageMarker);
  }
  Stream<QuerySnapshot>? docSnapshotStream;
  QuerySnapshot docSnapshot;
  if (isStream) {
    docSnapshotStream = query.snapshots();
    docSnapshot = await docSnapshotStream.first;
  } else {
    docSnapshot = await query.get();
  }
  final getDocs = (QuerySnapshot s) => s.docs
      .map(
        (d) => safeGet(
          () => recordBuilder(d),
          (e) => print('Error serializing doc ${d.reference.path}:\n$e'),
        ),
      )
      .where((d) => d != null)
      .map((d) => d!)
      .toList();
  final data = getDocs(docSnapshot);
  final dataStream = docSnapshotStream?.map(getDocs);
  final nextPageToken = docSnapshot.docs.isEmpty ? null : docSnapshot.docs.last;
  return FFFirestorePage(data, dataStream, nextPageToken);
}

// Creates a Firestore document representing the logged in user if it doesn't yet exist
Future maybeCreateUser(User user) async {
  final userRecord = UsersRecord.collection.doc(user.uid);
  final userExists = await userRecord.get().then((u) => u.exists);
  if (userExists) {
    currentUserDocument = await UsersRecord.getDocumentOnce(userRecord);
    return;
  }

  final userData = createUsersRecordData(
    email: user.email ??
        FirebaseAuth.instance.currentUser?.email ??
        user.providerData.firstOrNull?.email,
    displayName:
        user.displayName ?? FirebaseAuth.instance.currentUser?.displayName,
    photoUrl: user.photoURL,
    uid: user.uid,
    phoneNumber: user.phoneNumber,
    createdTime: getCurrentTimestamp,
  );

  await userRecord.set(userData);
  currentUserDocument = UsersRecord.getDocumentFromData(userData, userRecord);
}

Future updateUserDocument({String? email}) async {
  await currentUserDocument?.reference
      .update(createUsersRecordData(email: email));
}
