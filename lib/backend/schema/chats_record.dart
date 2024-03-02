import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class ChatsRecord extends FirestoreRecord {
  ChatsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "createdby_ref" field.
  DocumentReference? _createdbyRef;
  DocumentReference? get createdbyRef => _createdbyRef;
  bool hasCreatedbyRef() => _createdbyRef != null;

  // "chat_title" field.
  String? _chatTitle;
  String get chatTitle => _chatTitle ?? '';
  bool hasChatTitle() => _chatTitle != null;

  // "recent_update" field.
  DateTime? _recentUpdate;
  DateTime? get recentUpdate => _recentUpdate;
  bool hasRecentUpdate() => _recentUpdate != null;

  // "members_ref" field.
  List<DocumentReference>? _membersRef;
  List<DocumentReference> get membersRef => _membersRef ?? const [];
  bool hasMembersRef() => _membersRef != null;

  // "folder_ref" field.
  DocumentReference? _folderRef;
  DocumentReference? get folderRef => _folderRef;
  bool hasFolderRef() => _folderRef != null;

  void _initializeFields() {
    _date = snapshotData['date'] as DateTime?;
    _createdbyRef = snapshotData['createdby_ref'] as DocumentReference?;
    _chatTitle = snapshotData['chat_title'] as String?;
    _recentUpdate = snapshotData['recent_update'] as DateTime?;
    _membersRef = getDataList(snapshotData['members_ref']);
    _folderRef = snapshotData['folder_ref'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('chats');

  static Stream<ChatsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ChatsRecord.fromSnapshot(s));

  static Future<ChatsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ChatsRecord.fromSnapshot(s));

  static ChatsRecord fromSnapshot(DocumentSnapshot snapshot) => ChatsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ChatsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ChatsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ChatsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ChatsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createChatsRecordData({
  DateTime? date,
  DocumentReference? createdbyRef,
  String? chatTitle,
  DateTime? recentUpdate,
  DocumentReference? folderRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'date': date,
      'createdby_ref': createdbyRef,
      'chat_title': chatTitle,
      'recent_update': recentUpdate,
      'folder_ref': folderRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class ChatsRecordDocumentEquality implements Equality<ChatsRecord> {
  const ChatsRecordDocumentEquality();

  @override
  bool equals(ChatsRecord? e1, ChatsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.date == e2?.date &&
        e1?.createdbyRef == e2?.createdbyRef &&
        e1?.chatTitle == e2?.chatTitle &&
        e1?.recentUpdate == e2?.recentUpdate &&
        listEquality.equals(e1?.membersRef, e2?.membersRef) &&
        e1?.folderRef == e2?.folderRef;
  }

  @override
  int hash(ChatsRecord? e) => const ListEquality().hash([
        e?.date,
        e?.createdbyRef,
        e?.chatTitle,
        e?.recentUpdate,
        e?.membersRef,
        e?.folderRef
      ]);

  @override
  bool isValidKey(Object? o) => o is ChatsRecord;
}
