// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'runner_groups_enterprise.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RunnerGroupsEnterprise> _$runnerGroupsEnterpriseSerializer =
    new _$RunnerGroupsEnterpriseSerializer();

class _$RunnerGroupsEnterpriseSerializer
    implements StructuredSerializer<RunnerGroupsEnterprise> {
  @override
  final Iterable<Type> types = const [
    RunnerGroupsEnterprise,
    _$RunnerGroupsEnterprise
  ];
  @override
  final String wireName = 'RunnerGroupsEnterprise';

  @override
  Iterable<Object> serialize(
      Serializers serializers, RunnerGroupsEnterprise object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(num)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.visibility != null) {
      result
        ..add('visibility')
        ..add(serializers.serialize(object.visibility,
            specifiedType: const FullType(String)));
    }
    if (object.default_ != null) {
      result
        ..add('default')
        ..add(serializers.serialize(object.default_,
            specifiedType: const FullType(bool)));
    }
    if (object.selectedOrganizationsUrl != null) {
      result
        ..add('selected_organizations_url')
        ..add(serializers.serialize(object.selectedOrganizationsUrl,
            specifiedType: const FullType(String)));
    }
    if (object.runnersUrl != null) {
      result
        ..add('runners_url')
        ..add(serializers.serialize(object.runnersUrl,
            specifiedType: const FullType(String)));
    }
    if (object.allowsPublicRepositories != null) {
      result
        ..add('allows_public_repositories')
        ..add(serializers.serialize(object.allowsPublicRepositories,
            specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  RunnerGroupsEnterprise deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RunnerGroupsEnterpriseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'visibility':
          result.visibility = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'default':
          result.default_ = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'selected_organizations_url':
          result.selectedOrganizationsUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'runners_url':
          result.runnersUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'allows_public_repositories':
          result.allowsPublicRepositories = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$RunnerGroupsEnterprise extends RunnerGroupsEnterprise {
  @override
  final num id;
  @override
  final String name;
  @override
  final String visibility;
  @override
  final bool default_;
  @override
  final String selectedOrganizationsUrl;
  @override
  final String runnersUrl;
  @override
  final bool allowsPublicRepositories;

  factory _$RunnerGroupsEnterprise(
          [void Function(RunnerGroupsEnterpriseBuilder) updates]) =>
      (new RunnerGroupsEnterpriseBuilder()..update(updates)).build();

  _$RunnerGroupsEnterprise._(
      {this.id,
      this.name,
      this.visibility,
      this.default_,
      this.selectedOrganizationsUrl,
      this.runnersUrl,
      this.allowsPublicRepositories})
      : super._();

  @override
  RunnerGroupsEnterprise rebuild(
          void Function(RunnerGroupsEnterpriseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RunnerGroupsEnterpriseBuilder toBuilder() =>
      new RunnerGroupsEnterpriseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RunnerGroupsEnterprise &&
        id == other.id &&
        name == other.name &&
        visibility == other.visibility &&
        default_ == other.default_ &&
        selectedOrganizationsUrl == other.selectedOrganizationsUrl &&
        runnersUrl == other.runnersUrl &&
        allowsPublicRepositories == other.allowsPublicRepositories;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, id.hashCode), name.hashCode),
                        visibility.hashCode),
                    default_.hashCode),
                selectedOrganizationsUrl.hashCode),
            runnersUrl.hashCode),
        allowsPublicRepositories.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RunnerGroupsEnterprise')
          ..add('id', id)
          ..add('name', name)
          ..add('visibility', visibility)
          ..add('default_', default_)
          ..add('selectedOrganizationsUrl', selectedOrganizationsUrl)
          ..add('runnersUrl', runnersUrl)
          ..add('allowsPublicRepositories', allowsPublicRepositories))
        .toString();
  }
}

class RunnerGroupsEnterpriseBuilder
    implements Builder<RunnerGroupsEnterprise, RunnerGroupsEnterpriseBuilder> {
  _$RunnerGroupsEnterprise _$v;

  num _id;
  num get id => _$this._id;
  set id(num id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _visibility;
  String get visibility => _$this._visibility;
  set visibility(String visibility) => _$this._visibility = visibility;

  bool _default_;
  bool get default_ => _$this._default_;
  set default_(bool default_) => _$this._default_ = default_;

  String _selectedOrganizationsUrl;
  String get selectedOrganizationsUrl => _$this._selectedOrganizationsUrl;
  set selectedOrganizationsUrl(String selectedOrganizationsUrl) =>
      _$this._selectedOrganizationsUrl = selectedOrganizationsUrl;

  String _runnersUrl;
  String get runnersUrl => _$this._runnersUrl;
  set runnersUrl(String runnersUrl) => _$this._runnersUrl = runnersUrl;

  bool _allowsPublicRepositories;
  bool get allowsPublicRepositories => _$this._allowsPublicRepositories;
  set allowsPublicRepositories(bool allowsPublicRepositories) =>
      _$this._allowsPublicRepositories = allowsPublicRepositories;

  RunnerGroupsEnterpriseBuilder() {
    RunnerGroupsEnterprise._initializeBuilder(this);
  }

  RunnerGroupsEnterpriseBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _visibility = _$v.visibility;
      _default_ = _$v.default_;
      _selectedOrganizationsUrl = _$v.selectedOrganizationsUrl;
      _runnersUrl = _$v.runnersUrl;
      _allowsPublicRepositories = _$v.allowsPublicRepositories;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RunnerGroupsEnterprise other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$RunnerGroupsEnterprise;
  }

  @override
  void update(void Function(RunnerGroupsEnterpriseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RunnerGroupsEnterprise build() {
    final _$result = _$v ??
        new _$RunnerGroupsEnterprise._(
            id: id,
            name: name,
            visibility: visibility,
            default_: default_,
            selectedOrganizationsUrl: selectedOrganizationsUrl,
            runnersUrl: runnersUrl,
            allowsPublicRepositories: allowsPublicRepositories);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
