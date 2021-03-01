// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'team_membership.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const TeamMembershipRoleEnum _$teamMembershipRoleEnum_member =
    const TeamMembershipRoleEnum._('member');
const TeamMembershipRoleEnum _$teamMembershipRoleEnum_maintainer =
    const TeamMembershipRoleEnum._('maintainer');

TeamMembershipRoleEnum _$teamMembershipRoleEnumValueOf(String name) {
  switch (name) {
    case 'member':
      return _$teamMembershipRoleEnum_member;
    case 'maintainer':
      return _$teamMembershipRoleEnum_maintainer;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<TeamMembershipRoleEnum> _$teamMembershipRoleEnumValues =
    new BuiltSet<TeamMembershipRoleEnum>(const <TeamMembershipRoleEnum>[
  _$teamMembershipRoleEnum_member,
  _$teamMembershipRoleEnum_maintainer,
]);

Serializer<TeamMembership> _$teamMembershipSerializer =
    new _$TeamMembershipSerializer();
Serializer<TeamMembershipRoleEnum> _$teamMembershipRoleEnumSerializer =
    new _$TeamMembershipRoleEnumSerializer();

class _$TeamMembershipSerializer
    implements StructuredSerializer<TeamMembership> {
  @override
  final Iterable<Type> types = const [TeamMembership, _$TeamMembership];
  @override
  final String wireName = 'TeamMembership';

  @override
  Iterable<Object> serialize(Serializers serializers, TeamMembership object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.url != null) {
      result
        ..add('url')
        ..add(serializers.serialize(object.url,
            specifiedType: const FullType(String)));
    }
    if (object.role != null) {
      result
        ..add('role')
        ..add(serializers.serialize(object.role,
            specifiedType: const FullType(TeamMembershipRoleEnum)));
    }
    if (object.state != null) {
      result
        ..add('state')
        ..add(serializers.serialize(object.state,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  TeamMembership deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TeamMembershipBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'role':
          result.role = serializers.deserialize(value,
                  specifiedType: const FullType(TeamMembershipRoleEnum))
              as TeamMembershipRoleEnum;
          break;
        case 'state':
          result.state = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$TeamMembershipRoleEnumSerializer
    implements PrimitiveSerializer<TeamMembershipRoleEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'member': 'member',
    'maintainer': 'maintainer',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'member': 'member',
    'maintainer': 'maintainer',
  };

  @override
  final Iterable<Type> types = const <Type>[TeamMembershipRoleEnum];
  @override
  final String wireName = 'TeamMembershipRoleEnum';

  @override
  Object serialize(Serializers serializers, TeamMembershipRoleEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  TeamMembershipRoleEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      TeamMembershipRoleEnum.valueOf(
          _fromWire[serialized] ?? serialized as String);
}

class _$TeamMembership extends TeamMembership {
  @override
  final String url;
  @override
  final TeamMembershipRoleEnum role;
  @override
  final String state;

  factory _$TeamMembership([void Function(TeamMembershipBuilder) updates]) =>
      (new TeamMembershipBuilder()..update(updates)).build();

  _$TeamMembership._({this.url, this.role, this.state}) : super._();

  @override
  TeamMembership rebuild(void Function(TeamMembershipBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TeamMembershipBuilder toBuilder() =>
      new TeamMembershipBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TeamMembership &&
        url == other.url &&
        role == other.role &&
        state == other.state;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, url.hashCode), role.hashCode), state.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TeamMembership')
          ..add('url', url)
          ..add('role', role)
          ..add('state', state))
        .toString();
  }
}

class TeamMembershipBuilder
    implements Builder<TeamMembership, TeamMembershipBuilder> {
  _$TeamMembership _$v;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  TeamMembershipRoleEnum _role;
  TeamMembershipRoleEnum get role => _$this._role;
  set role(TeamMembershipRoleEnum role) => _$this._role = role;

  String _state;
  String get state => _$this._state;
  set state(String state) => _$this._state = state;

  TeamMembershipBuilder() {
    TeamMembership._initializeBuilder(this);
  }

  TeamMembershipBuilder get _$this {
    if (_$v != null) {
      _url = _$v.url;
      _role = _$v.role;
      _state = _$v.state;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TeamMembership other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$TeamMembership;
  }

  @override
  void update(void Function(TeamMembershipBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TeamMembership build() {
    final _$result =
        _$v ?? new _$TeamMembership._(url: url, role: role, state: state);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
