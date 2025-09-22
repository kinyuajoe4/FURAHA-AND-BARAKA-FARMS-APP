import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NotificationsRecord extends FirestoreRecord {
  NotificationsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "content" field.
  String? _content;
  String get content => _content ?? '';
  bool hasContent() => _content != null;

  // "sentAt" field.
  DateTime? _sentAt;
  DateTime? get sentAt => _sentAt;
  bool hasSentAt() => _sentAt != null;

  // "readaAt" field.
  DateTime? _readaAt;
  DateTime? get readaAt => _readaAt;
  bool hasReadaAt() => _readaAt != null;

  // "Username" field.
  DocumentReference? _username;
  DocumentReference? get username => _username;
  bool hasUsername() => _username != null;

  // "isRead" field.
  bool? _isRead;
  bool get isRead => _isRead ?? false;
  bool hasIsRead() => _isRead != null;

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
    _content = snapshotData['content'] as String?;
    _sentAt = snapshotData['sentAt'] as DateTime?;
    _readaAt = snapshotData['readaAt'] as DateTime?;
    _username = snapshotData['Username'] as DocumentReference?;
    _isRead = snapshotData['isRead'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Notifications');

  static Stream<NotificationsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => NotificationsRecord.fromSnapshot(s));

  static Future<NotificationsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => NotificationsRecord.fromSnapshot(s));

  static NotificationsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      NotificationsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NotificationsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NotificationsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NotificationsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NotificationsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNotificationsRecordData({
  String? title,
  String? content,
  DateTime? sentAt,
  DateTime? readaAt,
  DocumentReference? username,
  bool? isRead,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
      'content': content,
      'sentAt': sentAt,
      'readaAt': readaAt,
      'Username': username,
      'isRead': isRead,
    }.withoutNulls,
  );

  return firestoreData;
}

class NotificationsRecordDocumentEquality
    implements Equality<NotificationsRecord> {
  const NotificationsRecordDocumentEquality();

  @override
  bool equals(NotificationsRecord? e1, NotificationsRecord? e2) {
    return e1?.title == e2?.title &&
        e1?.content == e2?.content &&
        e1?.sentAt == e2?.sentAt &&
        e1?.readaAt == e2?.readaAt &&
        e1?.username == e2?.username &&
        e1?.isRead == e2?.isRead;
  }

  @override
  int hash(NotificationsRecord? e) => const ListEquality().hash(
      [e?.title, e?.content, e?.sentAt, e?.readaAt, e?.username, e?.isRead]);

  @override
  bool isValidKey(Object? o) => o is NotificationsRecord;
}
