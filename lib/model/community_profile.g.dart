// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'community_profile.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CommunityProfile> _$communityProfileSerializer =
    new _$CommunityProfileSerializer();

class _$CommunityProfileSerializer
    implements StructuredSerializer<CommunityProfile> {
  @override
  final Iterable<Type> types = const [CommunityProfile, _$CommunityProfile];
  @override
  final String wireName = 'CommunityProfile';

  @override
  Iterable<Object> serialize(Serializers serializers, CommunityProfile object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.healthPercentage != null) {
      result
        ..add('health_percentage')
        ..add(serializers.serialize(object.healthPercentage,
            specifiedType: const FullType(int)));
    }
    if (object.description != null) {
      result
        ..add('description')
        ..add(serializers.serialize(object.description,
            specifiedType: const FullType(String)));
    }
    if (object.documentation != null) {
      result
        ..add('documentation')
        ..add(serializers.serialize(object.documentation,
            specifiedType: const FullType(String)));
    }
    if (object.files != null) {
      result
        ..add('files')
        ..add(serializers.serialize(object.files,
            specifiedType: const FullType(CommunityProfileFiles)));
    }
    if (object.updatedAt != null) {
      result
        ..add('updated_at')
        ..add(serializers.serialize(object.updatedAt,
            specifiedType: const FullType(DateTime)));
    }
    if (object.contentReportsEnabled != null) {
      result
        ..add('content_reports_enabled')
        ..add(serializers.serialize(object.contentReportsEnabled,
            specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  CommunityProfile deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CommunityProfileBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'health_percentage':
          result.healthPercentage = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'documentation':
          result.documentation = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'files':
          result.files.replace(serializers.deserialize(value,
                  specifiedType: const FullType(CommunityProfileFiles))
              as CommunityProfileFiles);
          break;
        case 'updated_at':
          result.updatedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'content_reports_enabled':
          result.contentReportsEnabled = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$CommunityProfile extends CommunityProfile {
  @override
  final int healthPercentage;
  @override
  final String description;
  @override
  final String documentation;
  @override
  final CommunityProfileFiles files;
  @override
  final DateTime updatedAt;
  @override
  final bool contentReportsEnabled;

  factory _$CommunityProfile(
          [void Function(CommunityProfileBuilder) updates]) =>
      (new CommunityProfileBuilder()..update(updates)).build();

  _$CommunityProfile._(
      {this.healthPercentage,
      this.description,
      this.documentation,
      this.files,
      this.updatedAt,
      this.contentReportsEnabled})
      : super._();

  @override
  CommunityProfile rebuild(void Function(CommunityProfileBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CommunityProfileBuilder toBuilder() =>
      new CommunityProfileBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CommunityProfile &&
        healthPercentage == other.healthPercentage &&
        description == other.description &&
        documentation == other.documentation &&
        files == other.files &&
        updatedAt == other.updatedAt &&
        contentReportsEnabled == other.contentReportsEnabled;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc(0, healthPercentage.hashCode),
                        description.hashCode),
                    documentation.hashCode),
                files.hashCode),
            updatedAt.hashCode),
        contentReportsEnabled.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CommunityProfile')
          ..add('healthPercentage', healthPercentage)
          ..add('description', description)
          ..add('documentation', documentation)
          ..add('files', files)
          ..add('updatedAt', updatedAt)
          ..add('contentReportsEnabled', contentReportsEnabled))
        .toString();
  }
}

class CommunityProfileBuilder
    implements Builder<CommunityProfile, CommunityProfileBuilder> {
  _$CommunityProfile _$v;

  int _healthPercentage;
  int get healthPercentage => _$this._healthPercentage;
  set healthPercentage(int healthPercentage) =>
      _$this._healthPercentage = healthPercentage;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  String _documentation;
  String get documentation => _$this._documentation;
  set documentation(String documentation) =>
      _$this._documentation = documentation;

  CommunityProfileFilesBuilder _files;
  CommunityProfileFilesBuilder get files =>
      _$this._files ??= new CommunityProfileFilesBuilder();
  set files(CommunityProfileFilesBuilder files) => _$this._files = files;

  DateTime _updatedAt;
  DateTime get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime updatedAt) => _$this._updatedAt = updatedAt;

  bool _contentReportsEnabled;
  bool get contentReportsEnabled => _$this._contentReportsEnabled;
  set contentReportsEnabled(bool contentReportsEnabled) =>
      _$this._contentReportsEnabled = contentReportsEnabled;

  CommunityProfileBuilder() {
    CommunityProfile._initializeBuilder(this);
  }

  CommunityProfileBuilder get _$this {
    if (_$v != null) {
      _healthPercentage = _$v.healthPercentage;
      _description = _$v.description;
      _documentation = _$v.documentation;
      _files = _$v.files?.toBuilder();
      _updatedAt = _$v.updatedAt;
      _contentReportsEnabled = _$v.contentReportsEnabled;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CommunityProfile other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CommunityProfile;
  }

  @override
  void update(void Function(CommunityProfileBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CommunityProfile build() {
    _$CommunityProfile _$result;
    try {
      _$result = _$v ??
          new _$CommunityProfile._(
              healthPercentage: healthPercentage,
              description: description,
              documentation: documentation,
              files: _files?.build(),
              updatedAt: updatedAt,
              contentReportsEnabled: contentReportsEnabled);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'files';
        _files?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CommunityProfile', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
