// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'courses_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CoursesRecord> _$coursesRecordSerializer =
    new _$CoursesRecordSerializer();

class _$CoursesRecordSerializer implements StructuredSerializer<CoursesRecord> {
  @override
  final Iterable<Type> types = const [CoursesRecord, _$CoursesRecord];
  @override
  final String wireName = 'CoursesRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, CoursesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.courseName;
    if (value != null) {
      result
        ..add('CourseName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.courseID;
    if (value != null) {
      result
        ..add('CourseID')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.activity;
    if (value != null) {
      result
        ..add('Activity')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.section;
    if (value != null) {
      result
        ..add('Section')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.hours;
    if (value != null) {
      result
        ..add('Hours')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.room;
    if (value != null) {
      result
        ..add('Room')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.campus;
    if (value != null) {
      result
        ..add('Campus')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.techerName;
    if (value != null) {
      result
        ..add('TecherName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  CoursesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CoursesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'CourseName':
          result.courseName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'CourseID':
          result.courseID = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Activity':
          result.activity = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Section':
          result.section = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Hours':
          result.hours = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Room':
          result.room = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Campus':
          result.campus = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'TecherName':
          result.techerName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$CoursesRecord extends CoursesRecord {
  @override
  final String? courseName;
  @override
  final int? courseID;
  @override
  final String? activity;
  @override
  final int? section;
  @override
  final int? hours;
  @override
  final String? room;
  @override
  final String? campus;
  @override
  final String? techerName;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$CoursesRecord([void Function(CoursesRecordBuilder)? updates]) =>
      (new CoursesRecordBuilder()..update(updates))._build();

  _$CoursesRecord._(
      {this.courseName,
      this.courseID,
      this.activity,
      this.section,
      this.hours,
      this.room,
      this.campus,
      this.techerName,
      this.ffRef})
      : super._();

  @override
  CoursesRecord rebuild(void Function(CoursesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CoursesRecordBuilder toBuilder() => new CoursesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CoursesRecord &&
        courseName == other.courseName &&
        courseID == other.courseID &&
        activity == other.activity &&
        section == other.section &&
        hours == other.hours &&
        room == other.room &&
        campus == other.campus &&
        techerName == other.techerName &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc($jc(0, courseName.hashCode),
                                    courseID.hashCode),
                                activity.hashCode),
                            section.hashCode),
                        hours.hashCode),
                    room.hashCode),
                campus.hashCode),
            techerName.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CoursesRecord')
          ..add('courseName', courseName)
          ..add('courseID', courseID)
          ..add('activity', activity)
          ..add('section', section)
          ..add('hours', hours)
          ..add('room', room)
          ..add('campus', campus)
          ..add('techerName', techerName)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class CoursesRecordBuilder
    implements Builder<CoursesRecord, CoursesRecordBuilder> {
  _$CoursesRecord? _$v;

  String? _courseName;
  String? get courseName => _$this._courseName;
  set courseName(String? courseName) => _$this._courseName = courseName;

  int? _courseID;
  int? get courseID => _$this._courseID;
  set courseID(int? courseID) => _$this._courseID = courseID;

  String? _activity;
  String? get activity => _$this._activity;
  set activity(String? activity) => _$this._activity = activity;

  int? _section;
  int? get section => _$this._section;
  set section(int? section) => _$this._section = section;

  int? _hours;
  int? get hours => _$this._hours;
  set hours(int? hours) => _$this._hours = hours;

  String? _room;
  String? get room => _$this._room;
  set room(String? room) => _$this._room = room;

  String? _campus;
  String? get campus => _$this._campus;
  set campus(String? campus) => _$this._campus = campus;

  String? _techerName;
  String? get techerName => _$this._techerName;
  set techerName(String? techerName) => _$this._techerName = techerName;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  CoursesRecordBuilder() {
    CoursesRecord._initializeBuilder(this);
  }

  CoursesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _courseName = $v.courseName;
      _courseID = $v.courseID;
      _activity = $v.activity;
      _section = $v.section;
      _hours = $v.hours;
      _room = $v.room;
      _campus = $v.campus;
      _techerName = $v.techerName;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CoursesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CoursesRecord;
  }

  @override
  void update(void Function(CoursesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CoursesRecord build() => _build();

  _$CoursesRecord _build() {
    final _$result = _$v ??
        new _$CoursesRecord._(
            courseName: courseName,
            courseID: courseID,
            activity: activity,
            section: section,
            hours: hours,
            room: room,
            campus: campus,
            techerName: techerName,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
