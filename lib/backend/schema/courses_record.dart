import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'courses_record.g.dart';

abstract class CoursesRecord
    implements Built<CoursesRecord, CoursesRecordBuilder> {
  static Serializer<CoursesRecord> get serializer => _$coursesRecordSerializer;

  @BuiltValueField(wireName: 'CourseName')
  String? get courseName;

  @BuiltValueField(wireName: 'CourseID')
  int? get courseID;

  @BuiltValueField(wireName: 'Activity')
  String? get activity;

  @BuiltValueField(wireName: 'Section')
  int? get section;

  @BuiltValueField(wireName: 'Hours')
  int? get hours;

  @BuiltValueField(wireName: 'Room')
  String? get room;

  @BuiltValueField(wireName: 'Campus')
  String? get campus;

  @BuiltValueField(wireName: 'TecherName')
  String? get techerName;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(CoursesRecordBuilder builder) => builder
    ..courseName = ''
    ..courseID = 0
    ..activity = ''
    ..section = 0
    ..hours = 0
    ..room = ''
    ..campus = ''
    ..techerName = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Courses');

  static Stream<CoursesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<CoursesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  CoursesRecord._();
  factory CoursesRecord([void Function(CoursesRecordBuilder) updates]) =
      _$CoursesRecord;

  static CoursesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createCoursesRecordData({
  String? courseName,
  int? courseID,
  String? activity,
  int? section,
  int? hours,
  String? room,
  String? campus,
  String? techerName,
}) {
  final firestoreData = serializers.toFirestore(
    CoursesRecord.serializer,
    CoursesRecord(
      (c) => c
        ..courseName = courseName
        ..courseID = courseID
        ..activity = activity
        ..section = section
        ..hours = hours
        ..room = room
        ..campus = campus
        ..techerName = techerName,
    ),
  );

  return firestoreData;
}
