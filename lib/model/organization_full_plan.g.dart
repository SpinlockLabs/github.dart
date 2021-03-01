// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'organization_full_plan.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<OrganizationFullPlan> _$organizationFullPlanSerializer =
    new _$OrganizationFullPlanSerializer();

class _$OrganizationFullPlanSerializer
    implements StructuredSerializer<OrganizationFullPlan> {
  @override
  final Iterable<Type> types = const [
    OrganizationFullPlan,
    _$OrganizationFullPlan
  ];
  @override
  final String wireName = 'OrganizationFullPlan';

  @override
  Iterable<Object> serialize(
      Serializers serializers, OrganizationFullPlan object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
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
    if (object.filledSeats != null) {
      result
        ..add('filled_seats')
        ..add(serializers.serialize(object.filledSeats,
            specifiedType: const FullType(int)));
    }
    if (object.seats != null) {
      result
        ..add('seats')
        ..add(serializers.serialize(object.seats,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  OrganizationFullPlan deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new OrganizationFullPlanBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
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
        case 'filled_seats':
          result.filledSeats = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'seats':
          result.seats = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$OrganizationFullPlan extends OrganizationFullPlan {
  @override
  final String name;
  @override
  final int space;
  @override
  final int privateRepos;
  @override
  final int filledSeats;
  @override
  final int seats;

  factory _$OrganizationFullPlan(
          [void Function(OrganizationFullPlanBuilder) updates]) =>
      (new OrganizationFullPlanBuilder()..update(updates)).build();

  _$OrganizationFullPlan._(
      {this.name, this.space, this.privateRepos, this.filledSeats, this.seats})
      : super._();

  @override
  OrganizationFullPlan rebuild(
          void Function(OrganizationFullPlanBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrganizationFullPlanBuilder toBuilder() =>
      new OrganizationFullPlanBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrganizationFullPlan &&
        name == other.name &&
        space == other.space &&
        privateRepos == other.privateRepos &&
        filledSeats == other.filledSeats &&
        seats == other.seats;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, name.hashCode), space.hashCode),
                privateRepos.hashCode),
            filledSeats.hashCode),
        seats.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('OrganizationFullPlan')
          ..add('name', name)
          ..add('space', space)
          ..add('privateRepos', privateRepos)
          ..add('filledSeats', filledSeats)
          ..add('seats', seats))
        .toString();
  }
}

class OrganizationFullPlanBuilder
    implements Builder<OrganizationFullPlan, OrganizationFullPlanBuilder> {
  _$OrganizationFullPlan _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  int _space;
  int get space => _$this._space;
  set space(int space) => _$this._space = space;

  int _privateRepos;
  int get privateRepos => _$this._privateRepos;
  set privateRepos(int privateRepos) => _$this._privateRepos = privateRepos;

  int _filledSeats;
  int get filledSeats => _$this._filledSeats;
  set filledSeats(int filledSeats) => _$this._filledSeats = filledSeats;

  int _seats;
  int get seats => _$this._seats;
  set seats(int seats) => _$this._seats = seats;

  OrganizationFullPlanBuilder() {
    OrganizationFullPlan._initializeBuilder(this);
  }

  OrganizationFullPlanBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _space = _$v.space;
      _privateRepos = _$v.privateRepos;
      _filledSeats = _$v.filledSeats;
      _seats = _$v.seats;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrganizationFullPlan other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$OrganizationFullPlan;
  }

  @override
  void update(void Function(OrganizationFullPlanBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$OrganizationFullPlan build() {
    final _$result = _$v ??
        new _$OrganizationFullPlan._(
            name: name,
            space: space,
            privateRepos: privateRepos,
            filledSeats: filledSeats,
            seats: seats);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
