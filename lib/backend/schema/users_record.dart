import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'users_record.g.dart';

abstract class UsersRecord implements Built<UsersRecord, UsersRecordBuilder> {
  static Serializer<UsersRecord> get serializer => _$usersRecordSerializer;

  @BuiltValueField(wireName: 'UsersName')
  String? get usersName;

  @BuiltValueField(wireName: 'Job')
  String? get job;

  @BuiltValueField(wireName: 'UsersID')
  int? get usersID;

  @BuiltValueField(wireName: 'Collage')
  String? get collage;

  @BuiltValueField(wireName: 'Major')
  String? get major;

  @BuiltValueField(wireName: 'Level')
  String? get level;

  @BuiltValueField(wireName: 'Nationality')
  String? get nationality;

  @BuiltValueField(wireName: 'NationalityID')
  int? get nationalityID;

  @BuiltValueField(wireName: 'photo_url')
  String? get photoUrl;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(UsersRecordBuilder builder) => builder
    ..usersName = ''
    ..job = ''
    ..usersID = 0
    ..collage = ''
    ..major = ''
    ..level = ''
    ..nationality = ''
    ..nationalityID = 0
    ..photoUrl = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  UsersRecord._();
  factory UsersRecord([void Function(UsersRecordBuilder) updates]) =
      _$UsersRecord;

  static UsersRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createUsersRecordData({
  String? usersName,
  String? job,
  int? usersID,
  String? collage,
  String? major,
  String? level,
  String? nationality,
  int? nationalityID,
  String? photoUrl,
}) {
  final firestoreData = serializers.toFirestore(
    UsersRecord.serializer,
    UsersRecord(
      (u) => u
        ..usersName = usersName
        ..job = job
        ..usersID = usersID
        ..collage = collage
        ..major = major
        ..level = level
        ..nationality = nationality
        ..nationalityID = nationalityID
        ..photoUrl = photoUrl,
    ),
  );

  return firestoreData;
}
