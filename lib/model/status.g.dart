// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Status> _$statusSerializer = new _$StatusSerializer();

class _$StatusSerializer implements StructuredSerializer<Status> {
  @override
  final Iterable<Type> types = const [Status, _$Status];
  @override
  final String wireName = 'Status';

  @override
  Iterable<Object> serialize(Serializers serializers, Status object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.url != null) {
      result
        ..add('url')
        ..add(serializers.serialize(object.url,
            specifiedType: const FullType(String)));
    }
    if (object.avatarUrl != null) {
      result
        ..add('avatar_url')
        ..add(serializers.serialize(object.avatarUrl,
            specifiedType: const FullType(String)));
    }
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
    if (object.state != null) {
      result
        ..add('state')
        ..add(serializers.serialize(object.state,
            specifiedType: const FullType(String)));
    }
    if (object.description != null) {
      result
        ..add('description')
        ..add(serializers.serialize(object.description,
            specifiedType: const FullType(String)));
    }
    if (object.targetUrl != null) {
      result
        ..add('target_url')
        ..add(serializers.serialize(object.targetUrl,
            specifiedType: const FullType(String)));
    }
    if (object.context != null) {
      result
        ..add('context')
        ..add(serializers.serialize(object.context,
            specifiedType: const FullType(String)));
    }
    if (object.createdAt != null) {
      result
        ..add('created_at')
        ..add(serializers.serialize(object.createdAt,
            specifiedType: const FullType(String)));
    }
    if (object.updatedAt != null) {
      result
        ..add('updated_at')
        ..add(serializers.serialize(object.updatedAt,
            specifiedType: const FullType(String)));
    }
    if (object.creator != null) {
      result
        ..add('creator')
        ..add(serializers.serialize(object.creator,
            specifiedType: const FullType(SimpleUser)));
    }
    return result;
  }

  @override
  Status deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new StatusBuilder();

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
        case 'avatar_url':
          result.avatarUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'node_id':
          result.nodeId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'state':
          result.state = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'target_url':
          result.targetUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'context':
          result.context = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'updated_at':
          result.updatedAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'creator':
          result.creator.replace(serializers.deserialize(value,
              specifiedType: const FullType(SimpleUser)) as SimpleUser);
          break;
      }
    }

    return result.build();
  }
}

class _$Status extends Status {
  @override
  final String url;
  @override
  final String avatarUrl;
  @override
  final int id;
  @override
  final String nodeId;
  @override
  final String state;
  @override
  final String description;
  @override
  final String targetUrl;
  @override
  final String context;
  @override
  final String createdAt;
  @override
  final String updatedAt;
  @override
  final SimpleUser creator;

  factory _$Status([void Function(StatusBuilder) updates]) =>
      (new StatusBuilder()..update(updates)).build();

  _$Status._(
      {this.url,
      this.avatarUrl,
      this.id,
      this.nodeId,
      this.state,
      this.description,
      this.targetUrl,
      this.context,
      this.createdAt,
      this.updatedAt,
      this.creator})
      : super._();

  @override
  Status rebuild(void Function(StatusBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StatusBuilder toBuilder() => new StatusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Status &&
        url == other.url &&
        avatarUrl == other.avatarUrl &&
        id == other.id &&
        nodeId == other.nodeId &&
        state == other.state &&
        description == other.description &&
        targetUrl == other.targetUrl &&
        context == other.context &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        creator == other.creator;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc($jc(0, url.hashCode),
                                            avatarUrl.hashCode),
                                        id.hashCode),
                                    nodeId.hashCode),
                                state.hashCode),
                            description.hashCode),
                        targetUrl.hashCode),
                    context.hashCode),
                createdAt.hashCode),
            updatedAt.hashCode),
        creator.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Status')
          ..add('url', url)
          ..add('avatarUrl', avatarUrl)
          ..add('id', id)
          ..add('nodeId', nodeId)
          ..add('state', state)
          ..add('description', description)
          ..add('targetUrl', targetUrl)
          ..add('context', context)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('creator', creator))
        .toString();
  }
}

class StatusBuilder implements Builder<Status, StatusBuilder> {
  _$Status _$v;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _avatarUrl;
  String get avatarUrl => _$this._avatarUrl;
  set avatarUrl(String avatarUrl) => _$this._avatarUrl = avatarUrl;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _nodeId;
  String get nodeId => _$this._nodeId;
  set nodeId(String nodeId) => _$this._nodeId = nodeId;

  String _state;
  String get state => _$this._state;
  set state(String state) => _$this._state = state;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  String _targetUrl;
  String get targetUrl => _$this._targetUrl;
  set targetUrl(String targetUrl) => _$this._targetUrl = targetUrl;

  String _context;
  String get context => _$this._context;
  set context(String context) => _$this._context = context;

  String _createdAt;
  String get createdAt => _$this._createdAt;
  set createdAt(String createdAt) => _$this._createdAt = createdAt;

  String _updatedAt;
  String get updatedAt => _$this._updatedAt;
  set updatedAt(String updatedAt) => _$this._updatedAt = updatedAt;

  SimpleUserBuilder _creator;
  SimpleUserBuilder get creator => _$this._creator ??= new SimpleUserBuilder();
  set creator(SimpleUserBuilder creator) => _$this._creator = creator;

  StatusBuilder() {
    Status._initializeBuilder(this);
  }

  StatusBuilder get _$this {
    if (_$v != null) {
      _url = _$v.url;
      _avatarUrl = _$v.avatarUrl;
      _id = _$v.id;
      _nodeId = _$v.nodeId;
      _state = _$v.state;
      _description = _$v.description;
      _targetUrl = _$v.targetUrl;
      _context = _$v.context;
      _createdAt = _$v.createdAt;
      _updatedAt = _$v.updatedAt;
      _creator = _$v.creator?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Status other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Status;
  }

  @override
  void update(void Function(StatusBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Status build() {
    _$Status _$result;
    try {
      _$result = _$v ??
          new _$Status._(
              url: url,
              avatarUrl: avatarUrl,
              id: id,
              nodeId: nodeId,
              state: state,
              description: description,
              targetUrl: targetUrl,
              context: context,
              createdAt: createdAt,
              updatedAt: updatedAt,
              creator: _creator?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'creator';
        _creator?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Status', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
