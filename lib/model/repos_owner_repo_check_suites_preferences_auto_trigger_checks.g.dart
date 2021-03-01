// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'repos_owner_repo_check_suites_preferences_auto_trigger_checks.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ReposOwnerRepoCheckSuitesPreferencesAutoTriggerChecks>
    _$reposOwnerRepoCheckSuitesPreferencesAutoTriggerChecksSerializer =
    new _$ReposOwnerRepoCheckSuitesPreferencesAutoTriggerChecksSerializer();

class _$ReposOwnerRepoCheckSuitesPreferencesAutoTriggerChecksSerializer
    implements
        StructuredSerializer<
            ReposOwnerRepoCheckSuitesPreferencesAutoTriggerChecks> {
  @override
  final Iterable<Type> types = const [
    ReposOwnerRepoCheckSuitesPreferencesAutoTriggerChecks,
    _$ReposOwnerRepoCheckSuitesPreferencesAutoTriggerChecks
  ];
  @override
  final String wireName =
      'ReposOwnerRepoCheckSuitesPreferencesAutoTriggerChecks';

  @override
  Iterable<Object> serialize(Serializers serializers,
      ReposOwnerRepoCheckSuitesPreferencesAutoTriggerChecks object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.appId != null) {
      result
        ..add('app_id')
        ..add(serializers.serialize(object.appId,
            specifiedType: const FullType(int)));
    }
    if (object.setting != null) {
      result
        ..add('setting')
        ..add(serializers.serialize(object.setting,
            specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  ReposOwnerRepoCheckSuitesPreferencesAutoTriggerChecks deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new ReposOwnerRepoCheckSuitesPreferencesAutoTriggerChecksBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'app_id':
          result.appId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'setting':
          result.setting = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$ReposOwnerRepoCheckSuitesPreferencesAutoTriggerChecks
    extends ReposOwnerRepoCheckSuitesPreferencesAutoTriggerChecks {
  @override
  final int appId;
  @override
  final bool setting;

  factory _$ReposOwnerRepoCheckSuitesPreferencesAutoTriggerChecks(
          [void Function(
                  ReposOwnerRepoCheckSuitesPreferencesAutoTriggerChecksBuilder)
              updates]) =>
      (new ReposOwnerRepoCheckSuitesPreferencesAutoTriggerChecksBuilder()
            ..update(updates))
          .build();

  _$ReposOwnerRepoCheckSuitesPreferencesAutoTriggerChecks._(
      {this.appId, this.setting})
      : super._();

  @override
  ReposOwnerRepoCheckSuitesPreferencesAutoTriggerChecks rebuild(
          void Function(
                  ReposOwnerRepoCheckSuitesPreferencesAutoTriggerChecksBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReposOwnerRepoCheckSuitesPreferencesAutoTriggerChecksBuilder toBuilder() =>
      new ReposOwnerRepoCheckSuitesPreferencesAutoTriggerChecksBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReposOwnerRepoCheckSuitesPreferencesAutoTriggerChecks &&
        appId == other.appId &&
        setting == other.setting;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, appId.hashCode), setting.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'ReposOwnerRepoCheckSuitesPreferencesAutoTriggerChecks')
          ..add('appId', appId)
          ..add('setting', setting))
        .toString();
  }
}

class ReposOwnerRepoCheckSuitesPreferencesAutoTriggerChecksBuilder
    implements
        Builder<ReposOwnerRepoCheckSuitesPreferencesAutoTriggerChecks,
            ReposOwnerRepoCheckSuitesPreferencesAutoTriggerChecksBuilder> {
  _$ReposOwnerRepoCheckSuitesPreferencesAutoTriggerChecks _$v;

  int _appId;
  int get appId => _$this._appId;
  set appId(int appId) => _$this._appId = appId;

  bool _setting;
  bool get setting => _$this._setting;
  set setting(bool setting) => _$this._setting = setting;

  ReposOwnerRepoCheckSuitesPreferencesAutoTriggerChecksBuilder() {
    ReposOwnerRepoCheckSuitesPreferencesAutoTriggerChecks._initializeBuilder(
        this);
  }

  ReposOwnerRepoCheckSuitesPreferencesAutoTriggerChecksBuilder get _$this {
    if (_$v != null) {
      _appId = _$v.appId;
      _setting = _$v.setting;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReposOwnerRepoCheckSuitesPreferencesAutoTriggerChecks other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ReposOwnerRepoCheckSuitesPreferencesAutoTriggerChecks;
  }

  @override
  void update(
      void Function(
              ReposOwnerRepoCheckSuitesPreferencesAutoTriggerChecksBuilder)
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ReposOwnerRepoCheckSuitesPreferencesAutoTriggerChecks build() {
    final _$result = _$v ??
        new _$ReposOwnerRepoCheckSuitesPreferencesAutoTriggerChecks._(
            appId: appId, setting: setting);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
