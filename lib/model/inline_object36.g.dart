// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object36.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const InlineObject36RoleEnum _$inlineObject36RoleEnum_admin =
    const InlineObject36RoleEnum._('admin');
const InlineObject36RoleEnum _$inlineObject36RoleEnum_directMember =
    const InlineObject36RoleEnum._('directMember');
const InlineObject36RoleEnum _$inlineObject36RoleEnum_billingManager =
    const InlineObject36RoleEnum._('billingManager');

InlineObject36RoleEnum _$inlineObject36RoleEnumValueOf(String name) {
  switch (name) {
    case 'admin':
      return _$inlineObject36RoleEnum_admin;
    case 'directMember':
      return _$inlineObject36RoleEnum_directMember;
    case 'billingManager':
      return _$inlineObject36RoleEnum_billingManager;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<InlineObject36RoleEnum> _$inlineObject36RoleEnumValues =
    new BuiltSet<InlineObject36RoleEnum>(const <InlineObject36RoleEnum>[
  _$inlineObject36RoleEnum_admin,
  _$inlineObject36RoleEnum_directMember,
  _$inlineObject36RoleEnum_billingManager,
]);

Serializer<InlineObject36> _$inlineObject36Serializer =
    new _$InlineObject36Serializer();
Serializer<InlineObject36RoleEnum> _$inlineObject36RoleEnumSerializer =
    new _$InlineObject36RoleEnumSerializer();

class _$InlineObject36Serializer
    implements StructuredSerializer<InlineObject36> {
  @override
  final Iterable<Type> types = const [InlineObject36, _$InlineObject36];
  @override
  final String wireName = 'InlineObject36';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject36 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.inviteeId != null) {
      result
        ..add('invitee_id')
        ..add(serializers.serialize(object.inviteeId,
            specifiedType: const FullType(int)));
    }
    if (object.email != null) {
      result
        ..add('email')
        ..add(serializers.serialize(object.email,
            specifiedType: const FullType(String)));
    }
    if (object.role != null) {
      result
        ..add('role')
        ..add(serializers.serialize(object.role,
            specifiedType: const FullType(InlineObject36RoleEnum)));
    }
    if (object.teamIds != null) {
      result
        ..add('team_ids')
        ..add(serializers.serialize(object.teamIds,
            specifiedType:
                const FullType(BuiltList, const [const FullType(int)])));
    }
    return result;
  }

  @override
  InlineObject36 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject36Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'invitee_id':
          result.inviteeId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'role':
          result.role = serializers.deserialize(value,
                  specifiedType: const FullType(InlineObject36RoleEnum))
              as InlineObject36RoleEnum;
          break;
        case 'team_ids':
          result.teamIds.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(int)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$InlineObject36RoleEnumSerializer
    implements PrimitiveSerializer<InlineObject36RoleEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'admin': 'admin',
    'directMember': 'direct_member',
    'billingManager': 'billing_manager',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'admin': 'admin',
    'direct_member': 'directMember',
    'billing_manager': 'billingManager',
  };

  @override
  final Iterable<Type> types = const <Type>[InlineObject36RoleEnum];
  @override
  final String wireName = 'InlineObject36RoleEnum';

  @override
  Object serialize(Serializers serializers, InlineObject36RoleEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  InlineObject36RoleEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      InlineObject36RoleEnum.valueOf(
          _fromWire[serialized] ?? serialized as String);
}

class _$InlineObject36 extends InlineObject36 {
  @override
  final int inviteeId;
  @override
  final String email;
  @override
  final InlineObject36RoleEnum role;
  @override
  final BuiltList<int> teamIds;

  factory _$InlineObject36([void Function(InlineObject36Builder) updates]) =>
      (new InlineObject36Builder()..update(updates)).build();

  _$InlineObject36._({this.inviteeId, this.email, this.role, this.teamIds})
      : super._();

  @override
  InlineObject36 rebuild(void Function(InlineObject36Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject36Builder toBuilder() =>
      new InlineObject36Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject36 &&
        inviteeId == other.inviteeId &&
        email == other.email &&
        role == other.role &&
        teamIds == other.teamIds;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, inviteeId.hashCode), email.hashCode), role.hashCode),
        teamIds.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject36')
          ..add('inviteeId', inviteeId)
          ..add('email', email)
          ..add('role', role)
          ..add('teamIds', teamIds))
        .toString();
  }
}

class InlineObject36Builder
    implements Builder<InlineObject36, InlineObject36Builder> {
  _$InlineObject36 _$v;

  int _inviteeId;
  int get inviteeId => _$this._inviteeId;
  set inviteeId(int inviteeId) => _$this._inviteeId = inviteeId;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  InlineObject36RoleEnum _role;
  InlineObject36RoleEnum get role => _$this._role;
  set role(InlineObject36RoleEnum role) => _$this._role = role;

  ListBuilder<int> _teamIds;
  ListBuilder<int> get teamIds => _$this._teamIds ??= new ListBuilder<int>();
  set teamIds(ListBuilder<int> teamIds) => _$this._teamIds = teamIds;

  InlineObject36Builder() {
    InlineObject36._initializeBuilder(this);
  }

  InlineObject36Builder get _$this {
    if (_$v != null) {
      _inviteeId = _$v.inviteeId;
      _email = _$v.email;
      _role = _$v.role;
      _teamIds = _$v.teamIds?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject36 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject36;
  }

  @override
  void update(void Function(InlineObject36Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject36 build() {
    _$InlineObject36 _$result;
    try {
      _$result = _$v ??
          new _$InlineObject36._(
              inviteeId: inviteeId,
              email: email,
              role: role,
              teamIds: _teamIds?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'teamIds';
        _teamIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'InlineObject36', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
