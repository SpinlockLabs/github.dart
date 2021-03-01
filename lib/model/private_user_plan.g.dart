// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'private_user_plan.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PrivateUserPlan> _$privateUserPlanSerializer =
    new _$PrivateUserPlanSerializer();

class _$PrivateUserPlanSerializer
    implements StructuredSerializer<PrivateUserPlan> {
  @override
  final Iterable<Type> types = const [PrivateUserPlan, _$PrivateUserPlan];
  @override
  final String wireName = 'PrivateUserPlan';

  @override
  Iterable<Object> serialize(Serializers serializers, PrivateUserPlan object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.collaborators != null) {
      result
        ..add('collaborators')
        ..add(serializers.serialize(object.collaborators,
            specifiedType: const FullType(int)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.space != null) {
      result
        ..add('space')
        ..add(serializers.serialize(object.space,
            specifiedType: const FullType(int)));
    }
    if (object.privateRepos != null) {
      result
        ..add('private_repos')
        ..add(serializers.serialize(object.privateRepos,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  PrivateUserPlan deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PrivateUserPlanBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'collaborators':
          result.collaborators = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'space':
          result.space = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'private_repos':
          result.privateRepos = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$PrivateUserPlan extends PrivateUserPlan {
  @override
  final int collaborators;
  @override
  final String name;
  @override
  final int space;
  @override
  final int privateRepos;

  factory _$PrivateUserPlan([void Function(PrivateUserPlanBuilder) updates]) =>
      (new PrivateUserPlanBuilder()..update(updates)).build();

  _$PrivateUserPlan._(
      {this.collaborators, this.name, this.space, this.privateRepos})
      : super._();

  @override
  PrivateUserPlan rebuild(void Function(PrivateUserPlanBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PrivateUserPlanBuilder toBuilder() =>
      new PrivateUserPlanBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PrivateUserPlan &&
        collaborators == other.collaborators &&
        name == other.name &&
        space == other.space &&
        privateRepos == other.privateRepos;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, collaborators.hashCode), name.hashCode), space.hashCode),
        privateRepos.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PrivateUserPlan')
          ..add('collaborators', collaborators)
          ..add('name', name)
          ..add('space', space)
          ..add('privateRepos', privateRepos))
        .toString();
  }
}

class PrivateUserPlanBuilder
    implements Builder<PrivateUserPlan, PrivateUserPlanBuilder> {
  _$PrivateUserPlan _$v;

  int _collaborators;
  int get collaborators => _$this._collaborators;
  set collaborators(int collaborators) => _$this._collaborators = collaborators;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  int _space;
  int get space => _$this._space;
  set space(int space) => _$this._space = space;

  int _privateRepos;
  int get privateRepos => _$this._privateRepos;
  set privateRepos(int privateRepos) => _$this._privateRepos = privateRepos;

  PrivateUserPlanBuilder() {
    PrivateUserPlan._initializeBuilder(this);
  }

  PrivateUserPlanBuilder get _$this {
    if (_$v != null) {
      _collaborators = _$v.collaborators;
      _name = _$v.name;
      _space = _$v.space;
      _privateRepos = _$v.privateRepos;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PrivateUserPlan other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PrivateUserPlan;
  }

  @override
  void update(void Function(PrivateUserPlanBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PrivateUserPlan build() {
    final _$result = _$v ??
        new _$PrivateUserPlan._(
            collaborators: collaborators,
            name: name,
            space: space,
            privateRepos: privateRepos);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
