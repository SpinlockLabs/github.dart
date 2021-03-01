// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'check_suite_preference_preferences.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CheckSuitePreferencePreferences>
    _$checkSuitePreferencePreferencesSerializer =
    new _$CheckSuitePreferencePreferencesSerializer();

class _$CheckSuitePreferencePreferencesSerializer
    implements StructuredSerializer<CheckSuitePreferencePreferences> {
  @override
  final Iterable<Type> types = const [
    CheckSuitePreferencePreferences,
    _$CheckSuitePreferencePreferences
  ];
  @override
  final String wireName = 'CheckSuitePreferencePreferences';

  @override
  Iterable<Object> serialize(
      Serializers serializers, CheckSuitePreferencePreferences object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.autoTriggerChecks != null) {
      result
        ..add('auto_trigger_checks')
        ..add(serializers.serialize(object.autoTriggerChecks,
            specifiedType: const FullType(BuiltList, const [
              const FullType(CheckSuitePreferencePreferencesAutoTriggerChecks)
            ])));
    }
    return result;
  }

  @override
  CheckSuitePreferencePreferences deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CheckSuitePreferencePreferencesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'auto_trigger_checks':
          result.autoTriggerChecks.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(CheckSuitePreferencePreferencesAutoTriggerChecks)
              ])) as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$CheckSuitePreferencePreferences
    extends CheckSuitePreferencePreferences {
  @override
  final BuiltList<CheckSuitePreferencePreferencesAutoTriggerChecks>
      autoTriggerChecks;

  factory _$CheckSuitePreferencePreferences(
          [void Function(CheckSuitePreferencePreferencesBuilder) updates]) =>
      (new CheckSuitePreferencePreferencesBuilder()..update(updates)).build();

  _$CheckSuitePreferencePreferences._({this.autoTriggerChecks}) : super._();

  @override
  CheckSuitePreferencePreferences rebuild(
          void Function(CheckSuitePreferencePreferencesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CheckSuitePreferencePreferencesBuilder toBuilder() =>
      new CheckSuitePreferencePreferencesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CheckSuitePreferencePreferences &&
        autoTriggerChecks == other.autoTriggerChecks;
  }

  @override
  int get hashCode {
    return $jf($jc(0, autoTriggerChecks.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CheckSuitePreferencePreferences')
          ..add('autoTriggerChecks', autoTriggerChecks))
        .toString();
  }
}

class CheckSuitePreferencePreferencesBuilder
    implements
        Builder<CheckSuitePreferencePreferences,
            CheckSuitePreferencePreferencesBuilder> {
  _$CheckSuitePreferencePreferences _$v;

  ListBuilder<CheckSuitePreferencePreferencesAutoTriggerChecks>
      _autoTriggerChecks;
  ListBuilder<CheckSuitePreferencePreferencesAutoTriggerChecks>
      get autoTriggerChecks => _$this._autoTriggerChecks ??=
          new ListBuilder<CheckSuitePreferencePreferencesAutoTriggerChecks>();
  set autoTriggerChecks(
          ListBuilder<CheckSuitePreferencePreferencesAutoTriggerChecks>
              autoTriggerChecks) =>
      _$this._autoTriggerChecks = autoTriggerChecks;

  CheckSuitePreferencePreferencesBuilder() {
    CheckSuitePreferencePreferences._initializeBuilder(this);
  }

  CheckSuitePreferencePreferencesBuilder get _$this {
    if (_$v != null) {
      _autoTriggerChecks = _$v.autoTriggerChecks?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CheckSuitePreferencePreferences other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CheckSuitePreferencePreferences;
  }

  @override
  void update(void Function(CheckSuitePreferencePreferencesBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CheckSuitePreferencePreferences build() {
    _$CheckSuitePreferencePreferences _$result;
    try {
      _$result = _$v ??
          new _$CheckSuitePreferencePreferences._(
              autoTriggerChecks: _autoTriggerChecks?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'autoTriggerChecks';
        _autoTriggerChecks?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CheckSuitePreferencePreferences', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
