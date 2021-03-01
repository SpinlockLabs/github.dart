// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'check_suite_preference.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CheckSuitePreference> _$checkSuitePreferenceSerializer =
    new _$CheckSuitePreferenceSerializer();

class _$CheckSuitePreferenceSerializer
    implements StructuredSerializer<CheckSuitePreference> {
  @override
  final Iterable<Type> types = const [
    CheckSuitePreference,
    _$CheckSuitePreference
  ];
  @override
  final String wireName = 'CheckSuitePreference';

  @override
  Iterable<Object> serialize(
      Serializers serializers, CheckSuitePreference object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.preferences != null) {
      result
        ..add('preferences')
        ..add(serializers.serialize(object.preferences,
            specifiedType: const FullType(CheckSuitePreferencePreferences)));
    }
    if (object.repository != null) {
      result
        ..add('repository')
        ..add(serializers.serialize(object.repository,
            specifiedType: const FullType(Repository)));
    }
    return result;
  }

  @override
  CheckSuitePreference deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CheckSuitePreferenceBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'preferences':
          result.preferences.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(CheckSuitePreferencePreferences))
              as CheckSuitePreferencePreferences);
          break;
        case 'repository':
          result.repository.replace(serializers.deserialize(value,
              specifiedType: const FullType(Repository)) as Repository);
          break;
      }
    }

    return result.build();
  }
}

class _$CheckSuitePreference extends CheckSuitePreference {
  @override
  final CheckSuitePreferencePreferences preferences;
  @override
  final Repository repository;

  factory _$CheckSuitePreference(
          [void Function(CheckSuitePreferenceBuilder) updates]) =>
      (new CheckSuitePreferenceBuilder()..update(updates)).build();

  _$CheckSuitePreference._({this.preferences, this.repository}) : super._();

  @override
  CheckSuitePreference rebuild(
          void Function(CheckSuitePreferenceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CheckSuitePreferenceBuilder toBuilder() =>
      new CheckSuitePreferenceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CheckSuitePreference &&
        preferences == other.preferences &&
        repository == other.repository;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, preferences.hashCode), repository.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CheckSuitePreference')
          ..add('preferences', preferences)
          ..add('repository', repository))
        .toString();
  }
}

class CheckSuitePreferenceBuilder
    implements Builder<CheckSuitePreference, CheckSuitePreferenceBuilder> {
  _$CheckSuitePreference _$v;

  CheckSuitePreferencePreferencesBuilder _preferences;
  CheckSuitePreferencePreferencesBuilder get preferences =>
      _$this._preferences ??= new CheckSuitePreferencePreferencesBuilder();
  set preferences(CheckSuitePreferencePreferencesBuilder preferences) =>
      _$this._preferences = preferences;

  RepositoryBuilder _repository;
  RepositoryBuilder get repository =>
      _$this._repository ??= new RepositoryBuilder();
  set repository(RepositoryBuilder repository) =>
      _$this._repository = repository;

  CheckSuitePreferenceBuilder() {
    CheckSuitePreference._initializeBuilder(this);
  }

  CheckSuitePreferenceBuilder get _$this {
    if (_$v != null) {
      _preferences = _$v.preferences?.toBuilder();
      _repository = _$v.repository?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CheckSuitePreference other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CheckSuitePreference;
  }

  @override
  void update(void Function(CheckSuitePreferenceBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CheckSuitePreference build() {
    _$CheckSuitePreference _$result;
    try {
      _$result = _$v ??
          new _$CheckSuitePreference._(
              preferences: _preferences?.build(),
              repository: _repository?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'preferences';
        _preferences?.build();
        _$failedField = 'repository';
        _repository?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CheckSuitePreference', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
