// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'runner_groups_org.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RunnerGroupsOrg> _$runnerGroupsOrgSerializer =
    new _$RunnerGroupsOrgSerializer();

class _$RunnerGroupsOrgSerializer
    implements StructuredSerializer<RunnerGroupsOrg> {
  @override
  final Iterable<Type> types = const [RunnerGroupsOrg, _$RunnerGroupsOrg];
  @override
  final String wireName = 'RunnerGroupsOrg';

  @override
  Iterable<Object> serialize(Serializers serializers, RunnerGroupsOrg object,
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
    if (object.selectedRepositoriesUrl != null) {
      result
        ..add('selected_repositories_url')
        ..add(serializers.serialize(object.selectedRepositoriesUrl,
            specifiedType: const FullType(String)));
    }
    if (object.runnersUrl != null) {
      result
        ..add('runners_url')
        ..add(serializers.serialize(object.runnersUrl,
            specifiedType: const FullType(String)));
    }
    if (object.inherited != null) {
      result
        ..add('inherited')
        ..add(serializers.serialize(object.inherited,
            specifiedType: const FullType(bool)));
    }
    if (object.inheritedAllowsPublicRepositories != null) {
      result
        ..add('inherited_allows_public_repositories')
        ..add(serializers.serialize(object.inheritedAllowsPublicRepositories,
            specifiedType: const FullType(bool)));
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
  RunnerGroupsOrg deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RunnerGroupsOrgBuilder();

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
        case 'selected_repositories_url':
          result.selectedRepositoriesUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'runners_url':
          result.runnersUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'inherited':
          result.inherited = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'inherited_allows_public_repositories':
          result.inheritedAllowsPublicRepositories = serializers
              .deserialize(value, specifiedType: const FullType(bool)) as bool;
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

class _$RunnerGroupsOrg extends RunnerGroupsOrg {
  @override
  final num id;
  @override
  final String name;
  @override
  final String visibility;
  @override
  final bool default_;
  @override
  final String selectedRepositoriesUrl;
  @override
  final String runnersUrl;
  @override
  final bool inherited;
  @override
  final bool inheritedAllowsPublicRepositories;
  @override
  final bool allowsPublicRepositories;

  factory _$RunnerGroupsOrg([void Function(RunnerGroupsOrgBuilder) updates]) =>
      (new RunnerGroupsOrgBuilder()..update(updates)).build();

  _$RunnerGroupsOrg._(
      {this.id,
      this.name,
      this.visibility,
      this.default_,
      this.selectedRepositoriesUrl,
      this.runnersUrl,
      this.inherited,
      this.inheritedAllowsPublicRepositories,
      this.allowsPublicRepositories})
      : super._();

  @override
  RunnerGroupsOrg rebuild(void Function(RunnerGroupsOrgBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RunnerGroupsOrgBuilder toBuilder() =>
      new RunnerGroupsOrgBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RunnerGroupsOrg &&
        id == other.id &&
        name == other.name &&
        visibility == other.visibility &&
        default_ == other.default_ &&
        selectedRepositoriesUrl == other.selectedRepositoriesUrl &&
        runnersUrl == other.runnersUrl &&
        inherited == other.inherited &&
        inheritedAllowsPublicRepositories ==
            other.inheritedAllowsPublicRepositories &&
        allowsPublicRepositories == other.allowsPublicRepositories;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, id.hashCode), name.hashCode),
                                visibility.hashCode),
                            default_.hashCode),
                        selectedRepositoriesUrl.hashCode),
                    runnersUrl.hashCode),
                inherited.hashCode),
            inheritedAllowsPublicRepositories.hashCode),
        allowsPublicRepositories.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RunnerGroupsOrg')
          ..add('id', id)
          ..add('name', name)
          ..add('visibility', visibility)
          ..add('default_', default_)
          ..add('selectedRepositoriesUrl', selectedRepositoriesUrl)
          ..add('runnersUrl', runnersUrl)
          ..add('inherited', inherited)
          ..add('inheritedAllowsPublicRepositories',
              inheritedAllowsPublicRepositories)
          ..add('allowsPublicRepositories', allowsPublicRepositories))
        .toString();
  }
}

class RunnerGroupsOrgBuilder
    implements Builder<RunnerGroupsOrg, RunnerGroupsOrgBuilder> {
  _$RunnerGroupsOrg _$v;

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

  String _selectedRepositoriesUrl;
  String get selectedRepositoriesUrl => _$this._selectedRepositoriesUrl;
  set selectedRepositoriesUrl(String selectedRepositoriesUrl) =>
      _$this._selectedRepositoriesUrl = selectedRepositoriesUrl;

  String _runnersUrl;
  String get runnersUrl => _$this._runnersUrl;
  set runnersUrl(String runnersUrl) => _$this._runnersUrl = runnersUrl;

  bool _inherited;
  bool get inherited => _$this._inherited;
  set inherited(bool inherited) => _$this._inherited = inherited;

  bool _inheritedAllowsPublicRepositories;
  bool get inheritedAllowsPublicRepositories =>
      _$this._inheritedAllowsPublicRepositories;
  set inheritedAllowsPublicRepositories(
          bool inheritedAllowsPublicRepositories) =>
      _$this._inheritedAllowsPublicRepositories =
          inheritedAllowsPublicRepositories;

  bool _allowsPublicRepositories;
  bool get allowsPublicRepositories => _$this._allowsPublicRepositories;
  set allowsPublicRepositories(bool allowsPublicRepositories) =>
      _$this._allowsPublicRepositories = allowsPublicRepositories;

  RunnerGroupsOrgBuilder() {
    RunnerGroupsOrg._initializeBuilder(this);
  }

  RunnerGroupsOrgBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _visibility = _$v.visibility;
      _default_ = _$v.default_;
      _selectedRepositoriesUrl = _$v.selectedRepositoriesUrl;
      _runnersUrl = _$v.runnersUrl;
      _inherited = _$v.inherited;
      _inheritedAllowsPublicRepositories =
          _$v.inheritedAllowsPublicRepositories;
      _allowsPublicRepositories = _$v.allowsPublicRepositories;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RunnerGroupsOrg other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$RunnerGroupsOrg;
  }

  @override
  void update(void Function(RunnerGroupsOrgBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RunnerGroupsOrg build() {
    final _$result = _$v ??
        new _$RunnerGroupsOrg._(
            id: id,
            name: name,
            visibility: visibility,
            default_: default_,
            selectedRepositoriesUrl: selectedRepositoriesUrl,
            runnersUrl: runnersUrl,
            inherited: inherited,
            inheritedAllowsPublicRepositories:
                inheritedAllowsPublicRepositories,
            allowsPublicRepositories: allowsPublicRepositories);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
