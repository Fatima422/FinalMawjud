// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UsersRecord> _$usersRecordSerializer = new _$UsersRecordSerializer();

class _$UsersRecordSerializer implements StructuredSerializer<UsersRecord> {
  @override
  final Iterable<Type> types = const [UsersRecord, _$UsersRecord];
  @override
  final String wireName = 'UsersRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, UsersRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.usersName;
    if (value != null) {
      result
        ..add('UsersName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.job;
    if (value != null) {
      result
        ..add('Job')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.usersID;
    if (value != null) {
      result
        ..add('UsersID')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.collage;
    if (value != null) {
      result
        ..add('Collage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.major;
    if (value != null) {
      result
        ..add('Major')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.level;
    if (value != null) {
      result
        ..add('Level')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.nationality;
    if (value != null) {
      result
        ..add('Nationality')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.nationalityID;
    if (value != null) {
      result
        ..add('NationalityID')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.photoUrl;
    if (value != null) {
      result
        ..add('photo_url')
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
  UsersRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UsersRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'UsersName':
          result.usersName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Job':
          result.job = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'UsersID':
          result.usersID = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Collage':
          result.collage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Major':
          result.major = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Level':
          result.level = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Nationality':
          result.nationality = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'NationalityID':
          result.nationalityID = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'photo_url':
          result.photoUrl = serializers.deserialize(value,
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

class _$UsersRecord extends UsersRecord {
  @override
  final String? usersName;
  @override
  final String? job;
  @override
  final int? usersID;
  @override
  final String? collage;
  @override
  final String? major;
  @override
  final String? level;
  @override
  final String? nationality;
  @override
  final int? nationalityID;
  @override
  final String? photoUrl;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$UsersRecord([void Function(UsersRecordBuilder)? updates]) =>
      (new UsersRecordBuilder()..update(updates))._build();

  _$UsersRecord._(
      {this.usersName,
      this.job,
      this.usersID,
      this.collage,
      this.major,
      this.level,
      this.nationality,
      this.nationalityID,
      this.photoUrl,
      this.ffRef})
      : super._();

  @override
  UsersRecord rebuild(void Function(UsersRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UsersRecordBuilder toBuilder() => new UsersRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UsersRecord &&
        usersName == other.usersName &&
        job == other.job &&
        usersID == other.usersID &&
        collage == other.collage &&
        major == other.major &&
        level == other.level &&
        nationality == other.nationality &&
        nationalityID == other.nationalityID &&
        photoUrl == other.photoUrl &&
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
                                $jc(
                                    $jc($jc(0, usersName.hashCode),
                                        job.hashCode),
                                    usersID.hashCode),
                                collage.hashCode),
                            major.hashCode),
                        level.hashCode),
                    nationality.hashCode),
                nationalityID.hashCode),
            photoUrl.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UsersRecord')
          ..add('usersName', usersName)
          ..add('job', job)
          ..add('usersID', usersID)
          ..add('collage', collage)
          ..add('major', major)
          ..add('level', level)
          ..add('nationality', nationality)
          ..add('nationalityID', nationalityID)
          ..add('photoUrl', photoUrl)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class UsersRecordBuilder implements Builder<UsersRecord, UsersRecordBuilder> {
  _$UsersRecord? _$v;

  String? _usersName;
  String? get usersName => _$this._usersName;
  set usersName(String? usersName) => _$this._usersName = usersName;

  String? _job;
  String? get job => _$this._job;
  set job(String? job) => _$this._job = job;

  int? _usersID;
  int? get usersID => _$this._usersID;
  set usersID(int? usersID) => _$this._usersID = usersID;

  String? _collage;
  String? get collage => _$this._collage;
  set collage(String? collage) => _$this._collage = collage;

  String? _major;
  String? get major => _$this._major;
  set major(String? major) => _$this._major = major;

  String? _level;
  String? get level => _$this._level;
  set level(String? level) => _$this._level = level;

  String? _nationality;
  String? get nationality => _$this._nationality;
  set nationality(String? nationality) => _$this._nationality = nationality;

  int? _nationalityID;
  int? get nationalityID => _$this._nationalityID;
  set nationalityID(int? nationalityID) =>
      _$this._nationalityID = nationalityID;

  String? _photoUrl;
  String? get photoUrl => _$this._photoUrl;
  set photoUrl(String? photoUrl) => _$this._photoUrl = photoUrl;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  UsersRecordBuilder() {
    UsersRecord._initializeBuilder(this);
  }

  UsersRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _usersName = $v.usersName;
      _job = $v.job;
      _usersID = $v.usersID;
      _collage = $v.collage;
      _major = $v.major;
      _level = $v.level;
      _nationality = $v.nationality;
      _nationalityID = $v.nationalityID;
      _photoUrl = $v.photoUrl;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UsersRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UsersRecord;
  }

  @override
  void update(void Function(UsersRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UsersRecord build() => _build();

  _$UsersRecord _build() {
    final _$result = _$v ??
        new _$UsersRecord._(
            usersName: usersName,
            job: job,
            usersID: usersID,
            collage: collage,
            major: major,
            level: level,
            nationality: nationality,
            nationalityID: nationalityID,
            photoUrl: photoUrl,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
