import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AccountsForDeletionRecord extends FirestoreRecord {
  AccountsForDeletionRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "emailAddress" field.
  String? _emailAddress;
  String get emailAddress => _emailAddress ?? '';
  bool hasEmailAddress() => _emailAddress != null;

  void _initializeFields() {
    _emailAddress = snapshotData['emailAddress'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('accountsForDeletion');

  static Stream<AccountsForDeletionRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AccountsForDeletionRecord.fromSnapshot(s));

  static Future<AccountsForDeletionRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => AccountsForDeletionRecord.fromSnapshot(s));

  static AccountsForDeletionRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AccountsForDeletionRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AccountsForDeletionRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AccountsForDeletionRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AccountsForDeletionRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AccountsForDeletionRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAccountsForDeletionRecordData({
  String? emailAddress,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'emailAddress': emailAddress,
    }.withoutNulls,
  );

  return firestoreData;
}

class AccountsForDeletionRecordDocumentEquality
    implements Equality<AccountsForDeletionRecord> {
  const AccountsForDeletionRecordDocumentEquality();

  @override
  bool equals(AccountsForDeletionRecord? e1, AccountsForDeletionRecord? e2) {
    return e1?.emailAddress == e2?.emailAddress;
  }

  @override
  int hash(AccountsForDeletionRecord? e) =>
      const ListEquality().hash([e?.emailAddress]);

  @override
  bool isValidKey(Object? o) => o is AccountsForDeletionRecord;
}
