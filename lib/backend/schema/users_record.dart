import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "userRole" field.
  String? _userRole;
  String get userRole => _userRole ?? '';
  bool hasUserRole() => _userRole != null;

  // "userProfie" field.
  String? _userProfie;
  String get userProfie => _userProfie ?? '';
  bool hasUserProfie() => _userProfie != null;

  // "designatedDriver" field.
  String? _designatedDriver;
  String get designatedDriver => _designatedDriver ?? '';
  bool hasDesignatedDriver() => _designatedDriver != null;

  // "receivedBy" field.
  String? _receivedBy;
  String get receivedBy => _receivedBy ?? '';
  bool hasReceivedBy() => _receivedBy != null;

  // "contact" field.
  String? _contact;
  String get contact => _contact ?? '';
  bool hasContact() => _contact != null;

  // "isNurseryAdmin" field.
  bool? _isNurseryAdmin;
  bool get isNurseryAdmin => _isNurseryAdmin ?? false;
  bool hasIsNurseryAdmin() => _isNurseryAdmin != null;

  // "isContributor" field.
  bool? _isContributor;
  bool get isContributor => _isContributor ?? false;
  bool hasIsContributor() => _isContributor != null;

  // "isDonor" field.
  bool? _isDonor;
  bool get isDonor => _isDonor ?? false;
  bool hasIsDonor() => _isDonor != null;

  // "isNurseryAgent" field.
  bool? _isNurseryAgent;
  bool get isNurseryAgent => _isNurseryAgent ?? false;
  bool hasIsNurseryAgent() => _isNurseryAgent != null;

  // "isNurseryDriver" field.
  bool? _isNurseryDriver;
  bool get isNurseryDriver => _isNurseryDriver ?? false;
  bool hasIsNurseryDriver() => _isNurseryDriver != null;

  // "useerNursery" field.
  String? _useerNursery;
  String get useerNursery => _useerNursery ?? '';
  bool hasUseerNursery() => _useerNursery != null;

  // "isAdmin" field.
  bool? _isAdmin;
  bool get isAdmin => _isAdmin ?? false;
  bool hasIsAdmin() => _isAdmin != null;

  // "bio" field.
  String? _bio;
  String get bio => _bio ?? '';
  bool hasBio() => _bio != null;

  // "isIandMBank" field.
  bool? _isIandMBank;
  bool get isIandMBank => _isIandMBank ?? false;
  bool hasIsIandMBank() => _isIandMBank != null;

  // "accountSuspended" field.
  bool? _accountSuspended;
  bool get accountSuspended => _accountSuspended ?? false;
  bool hasAccountSuspended() => _accountSuspended != null;

  // "userPass" field.
  String? _userPass;
  String get userPass => _userPass ?? '';
  bool hasUserPass() => _userPass != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _userRole = snapshotData['userRole'] as String?;
    _userProfie = snapshotData['userProfie'] as String?;
    _designatedDriver = snapshotData['designatedDriver'] as String?;
    _receivedBy = snapshotData['receivedBy'] as String?;
    _contact = snapshotData['contact'] as String?;
    _isNurseryAdmin = snapshotData['isNurseryAdmin'] as bool?;
    _isContributor = snapshotData['isContributor'] as bool?;
    _isDonor = snapshotData['isDonor'] as bool?;
    _isNurseryAgent = snapshotData['isNurseryAgent'] as bool?;
    _isNurseryDriver = snapshotData['isNurseryDriver'] as bool?;
    _useerNursery = snapshotData['useerNursery'] as String?;
    _isAdmin = snapshotData['isAdmin'] as bool?;
    _bio = snapshotData['bio'] as String?;
    _isIandMBank = snapshotData['isIandMBank'] as bool?;
    _accountSuspended = snapshotData['accountSuspended'] as bool?;
    _userPass = snapshotData['userPass'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? userRole,
  String? userProfie,
  String? designatedDriver,
  String? receivedBy,
  String? contact,
  bool? isNurseryAdmin,
  bool? isContributor,
  bool? isDonor,
  bool? isNurseryAgent,
  bool? isNurseryDriver,
  String? useerNursery,
  bool? isAdmin,
  String? bio,
  bool? isIandMBank,
  bool? accountSuspended,
  String? userPass,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'userRole': userRole,
      'userProfie': userProfie,
      'designatedDriver': designatedDriver,
      'receivedBy': receivedBy,
      'contact': contact,
      'isNurseryAdmin': isNurseryAdmin,
      'isContributor': isContributor,
      'isDonor': isDonor,
      'isNurseryAgent': isNurseryAgent,
      'isNurseryDriver': isNurseryDriver,
      'useerNursery': useerNursery,
      'isAdmin': isAdmin,
      'bio': bio,
      'isIandMBank': isIandMBank,
      'accountSuspended': accountSuspended,
      'userPass': userPass,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.userRole == e2?.userRole &&
        e1?.userProfie == e2?.userProfie &&
        e1?.designatedDriver == e2?.designatedDriver &&
        e1?.receivedBy == e2?.receivedBy &&
        e1?.contact == e2?.contact &&
        e1?.isNurseryAdmin == e2?.isNurseryAdmin &&
        e1?.isContributor == e2?.isContributor &&
        e1?.isDonor == e2?.isDonor &&
        e1?.isNurseryAgent == e2?.isNurseryAgent &&
        e1?.isNurseryDriver == e2?.isNurseryDriver &&
        e1?.useerNursery == e2?.useerNursery &&
        e1?.isAdmin == e2?.isAdmin &&
        e1?.bio == e2?.bio &&
        e1?.isIandMBank == e2?.isIandMBank &&
        e1?.accountSuspended == e2?.accountSuspended &&
        e1?.userPass == e2?.userPass;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.userRole,
        e?.userProfie,
        e?.designatedDriver,
        e?.receivedBy,
        e?.contact,
        e?.isNurseryAdmin,
        e?.isContributor,
        e?.isDonor,
        e?.isNurseryAgent,
        e?.isNurseryDriver,
        e?.useerNursery,
        e?.isAdmin,
        e?.bio,
        e?.isIandMBank,
        e?.accountSuspended,
        e?.userPass
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
