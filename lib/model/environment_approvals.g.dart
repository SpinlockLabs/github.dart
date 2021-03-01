// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'environment_approvals.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const EnvironmentApprovalsStateEnum _$environmentApprovalsStateEnum_approved =
    const EnvironmentApprovalsStateEnum._('approved');
const EnvironmentApprovalsStateEnum _$environmentApprovalsStateEnum_rejected =
    const EnvironmentApprovalsStateEnum._('rejected');

EnvironmentApprovalsStateEnum _$environmentApprovalsStateEnumValueOf(
    String name) {
  switch (name) {
    case 'approved':
      return _$environmentApprovalsStateEnum_approved;
    case 'rejected':
      return _$environmentApprovalsStateEnum_rejected;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<EnvironmentApprovalsStateEnum>
    _$environmentApprovalsStateEnumValues = new BuiltSet<
        EnvironmentApprovalsStateEnum>(const <EnvironmentApprovalsStateEnum>[
  _$environmentApprovalsStateEnum_approved,
  _$environmentApprovalsStateEnum_rejected,
]);

Serializer<EnvironmentApprovals> _$environmentApprovalsSerializer =
    new _$EnvironmentApprovalsSerializer();
Serializer<EnvironmentApprovalsStateEnum>
    _$environmentApprovalsStateEnumSerializer =
    new _$EnvironmentApprovalsStateEnumSerializer();

class _$EnvironmentApprovalsSerializer
    implements StructuredSerializer<EnvironmentApprovals> {
  @override
  final Iterable<Type> types = const [
    EnvironmentApprovals,
    _$EnvironmentApprovals
  ];
  @override
  final String wireName = 'EnvironmentApprovals';

  @override
  Iterable<Object> serialize(
      Serializers serializers, EnvironmentApprovals object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.environments != null) {
      result
        ..add('environments')
        ..add(serializers.serialize(object.environments,
            specifiedType: const FullType(BuiltList,
                const [const FullType(EnvironmentApprovalsEnvironments)])));
    }
    if (object.state != null) {
      result
        ..add('state')
        ..add(serializers.serialize(object.state,
            specifiedType: const FullType(EnvironmentApprovalsStateEnum)));
    }
    if (object.user != null) {
      result
        ..add('user')
        ..add(serializers.serialize(object.user,
            specifiedType: const FullType(SimpleUser)));
    }
    if (object.comment != null) {
      result
        ..add('comment')
        ..add(serializers.serialize(object.comment,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  EnvironmentApprovals deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EnvironmentApprovalsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'environments':
          result.environments.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(EnvironmentApprovalsEnvironments)
              ])) as BuiltList<Object>);
          break;
        case 'state':
          result.state = serializers.deserialize(value,
                  specifiedType: const FullType(EnvironmentApprovalsStateEnum))
              as EnvironmentApprovalsStateEnum;
          break;
        case 'user':
          result.user.replace(serializers.deserialize(value,
              specifiedType: const FullType(SimpleUser)) as SimpleUser);
          break;
        case 'comment':
          result.comment = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$EnvironmentApprovalsStateEnumSerializer
    implements PrimitiveSerializer<EnvironmentApprovalsStateEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'approved': 'approved',
    'rejected': 'rejected',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'approved': 'approved',
    'rejected': 'rejected',
  };

  @override
  final Iterable<Type> types = const <Type>[EnvironmentApprovalsStateEnum];
  @override
  final String wireName = 'EnvironmentApprovalsStateEnum';

  @override
  Object serialize(
          Serializers serializers, EnvironmentApprovalsStateEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  EnvironmentApprovalsStateEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      EnvironmentApprovalsStateEnum.valueOf(
          _fromWire[serialized] ?? serialized as String);
}

class _$EnvironmentApprovals extends EnvironmentApprovals {
  @override
  final BuiltList<EnvironmentApprovalsEnvironments> environments;
  @override
  final EnvironmentApprovalsStateEnum state;
  @override
  final SimpleUser user;
  @override
  final String comment;

  factory _$EnvironmentApprovals(
          [void Function(EnvironmentApprovalsBuilder) updates]) =>
      (new EnvironmentApprovalsBuilder()..update(updates)).build();

  _$EnvironmentApprovals._(
      {this.environments, this.state, this.user, this.comment})
      : super._();

  @override
  EnvironmentApprovals rebuild(
          void Function(EnvironmentApprovalsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EnvironmentApprovalsBuilder toBuilder() =>
      new EnvironmentApprovalsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EnvironmentApprovals &&
        environments == other.environments &&
        state == other.state &&
        user == other.user &&
        comment == other.comment;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, environments.hashCode), state.hashCode), user.hashCode),
        comment.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('EnvironmentApprovals')
          ..add('environments', environments)
          ..add('state', state)
          ..add('user', user)
          ..add('comment', comment))
        .toString();
  }
}

class EnvironmentApprovalsBuilder
    implements Builder<EnvironmentApprovals, EnvironmentApprovalsBuilder> {
  _$EnvironmentApprovals _$v;

  ListBuilder<EnvironmentApprovalsEnvironments> _environments;
  ListBuilder<EnvironmentApprovalsEnvironments> get environments =>
      _$this._environments ??=
          new ListBuilder<EnvironmentApprovalsEnvironments>();
  set environments(
          ListBuilder<EnvironmentApprovalsEnvironments> environments) =>
      _$this._environments = environments;

  EnvironmentApprovalsStateEnum _state;
  EnvironmentApprovalsStateEnum get state => _$this._state;
  set state(EnvironmentApprovalsStateEnum state) => _$this._state = state;

  SimpleUserBuilder _user;
  SimpleUserBuilder get user => _$this._user ??= new SimpleUserBuilder();
  set user(SimpleUserBuilder user) => _$this._user = user;

  String _comment;
  String get comment => _$this._comment;
  set comment(String comment) => _$this._comment = comment;

  EnvironmentApprovalsBuilder() {
    EnvironmentApprovals._initializeBuilder(this);
  }

  EnvironmentApprovalsBuilder get _$this {
    if (_$v != null) {
      _environments = _$v.environments?.toBuilder();
      _state = _$v.state;
      _user = _$v.user?.toBuilder();
      _comment = _$v.comment;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EnvironmentApprovals other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$EnvironmentApprovals;
  }

  @override
  void update(void Function(EnvironmentApprovalsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$EnvironmentApprovals build() {
    _$EnvironmentApprovals _$result;
    try {
      _$result = _$v ??
          new _$EnvironmentApprovals._(
              environments: _environments?.build(),
              state: state,
              user: _user?.build(),
              comment: comment);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'environments';
        _environments?.build();

        _$failedField = 'user';
        _user?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'EnvironmentApprovals', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
