// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'reaction.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ReactionContentEnum _$reactionContentEnum_plus1 =
    const ReactionContentEnum._('plus1');
const ReactionContentEnum _$reactionContentEnum_n1 =
    const ReactionContentEnum._('n1');
const ReactionContentEnum _$reactionContentEnum_laugh =
    const ReactionContentEnum._('laugh');
const ReactionContentEnum _$reactionContentEnum_confused =
    const ReactionContentEnum._('confused');
const ReactionContentEnum _$reactionContentEnum_heart =
    const ReactionContentEnum._('heart');
const ReactionContentEnum _$reactionContentEnum_hooray =
    const ReactionContentEnum._('hooray');
const ReactionContentEnum _$reactionContentEnum_rocket =
    const ReactionContentEnum._('rocket');
const ReactionContentEnum _$reactionContentEnum_eyes =
    const ReactionContentEnum._('eyes');

ReactionContentEnum _$reactionContentEnumValueOf(String name) {
  switch (name) {
    case 'plus1':
      return _$reactionContentEnum_plus1;
    case 'n1':
      return _$reactionContentEnum_n1;
    case 'laugh':
      return _$reactionContentEnum_laugh;
    case 'confused':
      return _$reactionContentEnum_confused;
    case 'heart':
      return _$reactionContentEnum_heart;
    case 'hooray':
      return _$reactionContentEnum_hooray;
    case 'rocket':
      return _$reactionContentEnum_rocket;
    case 'eyes':
      return _$reactionContentEnum_eyes;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<ReactionContentEnum> _$reactionContentEnumValues =
    new BuiltSet<ReactionContentEnum>(const <ReactionContentEnum>[
  _$reactionContentEnum_plus1,
  _$reactionContentEnum_n1,
  _$reactionContentEnum_laugh,
  _$reactionContentEnum_confused,
  _$reactionContentEnum_heart,
  _$reactionContentEnum_hooray,
  _$reactionContentEnum_rocket,
  _$reactionContentEnum_eyes,
]);

Serializer<Reaction> _$reactionSerializer = new _$ReactionSerializer();
Serializer<ReactionContentEnum> _$reactionContentEnumSerializer =
    new _$ReactionContentEnumSerializer();

class _$ReactionSerializer implements StructuredSerializer<Reaction> {
  @override
  final Iterable<Type> types = const [Reaction, _$Reaction];
  @override
  final String wireName = 'Reaction';

  @override
  Iterable<Object> serialize(Serializers serializers, Reaction object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.nodeId != null) {
      result
        ..add('node_id')
        ..add(serializers.serialize(object.nodeId,
            specifiedType: const FullType(String)));
    }
    if (object.user != null) {
      result
        ..add('user')
        ..add(serializers.serialize(object.user,
            specifiedType: const FullType(SimpleUser)));
    }
    if (object.content != null) {
      result
        ..add('content')
        ..add(serializers.serialize(object.content,
            specifiedType: const FullType(ReactionContentEnum)));
    }
    if (object.createdAt != null) {
      result
        ..add('created_at')
        ..add(serializers.serialize(object.createdAt,
            specifiedType: const FullType(DateTime)));
    }
    return result;
  }

  @override
  Reaction deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ReactionBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'node_id':
          result.nodeId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'user':
          result.user.replace(serializers.deserialize(value,
              specifiedType: const FullType(SimpleUser)) as SimpleUser);
          break;
        case 'content':
          result.content = serializers.deserialize(value,
                  specifiedType: const FullType(ReactionContentEnum))
              as ReactionContentEnum;
          break;
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
      }
    }

    return result.build();
  }
}

class _$ReactionContentEnumSerializer
    implements PrimitiveSerializer<ReactionContentEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'plus1': '+1',
    'n1': '-1',
    'laugh': 'laugh',
    'confused': 'confused',
    'heart': 'heart',
    'hooray': 'hooray',
    'rocket': 'rocket',
    'eyes': 'eyes',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    '+1': 'plus1',
    '-1': 'n1',
    'laugh': 'laugh',
    'confused': 'confused',
    'heart': 'heart',
    'hooray': 'hooray',
    'rocket': 'rocket',
    'eyes': 'eyes',
  };

  @override
  final Iterable<Type> types = const <Type>[ReactionContentEnum];
  @override
  final String wireName = 'ReactionContentEnum';

  @override
  Object serialize(Serializers serializers, ReactionContentEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ReactionContentEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ReactionContentEnum.valueOf(
          _fromWire[serialized] ?? serialized as String);
}

class _$Reaction extends Reaction {
  @override
  final int id;
  @override
  final String nodeId;
  @override
  final SimpleUser user;
  @override
  final ReactionContentEnum content;
  @override
  final DateTime createdAt;

  factory _$Reaction([void Function(ReactionBuilder) updates]) =>
      (new ReactionBuilder()..update(updates)).build();

  _$Reaction._({this.id, this.nodeId, this.user, this.content, this.createdAt})
      : super._();

  @override
  Reaction rebuild(void Function(ReactionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReactionBuilder toBuilder() => new ReactionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Reaction &&
        id == other.id &&
        nodeId == other.nodeId &&
        user == other.user &&
        content == other.content &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, id.hashCode), nodeId.hashCode), user.hashCode),
            content.hashCode),
        createdAt.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Reaction')
          ..add('id', id)
          ..add('nodeId', nodeId)
          ..add('user', user)
          ..add('content', content)
          ..add('createdAt', createdAt))
        .toString();
  }
}

class ReactionBuilder implements Builder<Reaction, ReactionBuilder> {
  _$Reaction _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _nodeId;
  String get nodeId => _$this._nodeId;
  set nodeId(String nodeId) => _$this._nodeId = nodeId;

  SimpleUserBuilder _user;
  SimpleUserBuilder get user => _$this._user ??= new SimpleUserBuilder();
  set user(SimpleUserBuilder user) => _$this._user = user;

  ReactionContentEnum _content;
  ReactionContentEnum get content => _$this._content;
  set content(ReactionContentEnum content) => _$this._content = content;

  DateTime _createdAt;
  DateTime get createdAt => _$this._createdAt;
  set createdAt(DateTime createdAt) => _$this._createdAt = createdAt;

  ReactionBuilder() {
    Reaction._initializeBuilder(this);
  }

  ReactionBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _nodeId = _$v.nodeId;
      _user = _$v.user?.toBuilder();
      _content = _$v.content;
      _createdAt = _$v.createdAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Reaction other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Reaction;
  }

  @override
  void update(void Function(ReactionBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Reaction build() {
    _$Reaction _$result;
    try {
      _$result = _$v ??
          new _$Reaction._(
              id: id,
              nodeId: nodeId,
              user: _user?.build(),
              content: content,
              createdAt: createdAt);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'user';
        _user?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Reaction', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
