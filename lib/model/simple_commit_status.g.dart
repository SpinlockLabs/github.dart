// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'simple_commit_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SimpleCommitStatus> _$simpleCommitStatusSerializer =
    new _$SimpleCommitStatusSerializer();

class _$SimpleCommitStatusSerializer
    implements StructuredSerializer<SimpleCommitStatus> {
  @override
  final Iterable<Type> types = const [SimpleCommitStatus, _$SimpleCommitStatus];
  @override
  final String wireName = 'SimpleCommitStatus';

  @override
  Iterable<Object> serialize(Serializers serializers, SimpleCommitStatus object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.description != null) {
      result
        ..add('description')
        ..add(serializers.serialize(object.description,
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
    if (object.context != null) {
      result
        ..add('context')
        ..add(serializers.serialize(object.context,
            specifiedType: const FullType(String)));
    }
    if (object.targetUrl != null) {
      result
        ..add('target_url')
        ..add(serializers.serialize(object.targetUrl,
            specifiedType: const FullType(String)));
    }
    if (object.required_ != null) {
      result
        ..add('required')
        ..add(serializers.serialize(object.required_,
            specifiedType: const FullType(bool)));
    }
    if (object.avatarUrl != null) {
      result
        ..add('avatar_url')
        ..add(serializers.serialize(object.avatarUrl,
            specifiedType: const FullType(String)));
    }
    if (object.url != null) {
      result
        ..add('url')
        ..add(serializers.serialize(object.url,
            specifiedType: const FullType(String)));
    }
    if (object.createdAt != null) {
      result
        ..add('created_at')
        ..add(serializers.serialize(object.createdAt,
            specifiedType: const FullType(DateTime)));
    }
    if (object.updatedAt != null) {
      result
        ..add('updated_at')
        ..add(serializers.serialize(object.updatedAt,
            specifiedType: const FullType(DateTime)));
    }
    return result;
  }

  @override
  SimpleCommitStatus deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SimpleCommitStatusBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'description':
          result.description = serializers.deserialize(value,
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
        case 'context':
          result.context = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'target_url':
          result.targetUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'required':
          result.required_ = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'avatar_url':
          result.avatarUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'updated_at':
          result.updatedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
      }
    }

    return result.build();
  }
}

class _$SimpleCommitStatus extends SimpleCommitStatus {
  @override
  final String description;
  @override
  final int id;
  @override
  final String nodeId;
  @override
  final String state;
  @override
  final String context;
  @override
  final String targetUrl;
  @override
  final bool required_;
  @override
  final String avatarUrl;
  @override
  final String url;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  factory _$SimpleCommitStatus(
          [void Function(SimpleCommitStatusBuilder) updates]) =>
      (new SimpleCommitStatusBuilder()..update(updates)).build();

  _$SimpleCommitStatus._(
      {this.description,
      this.id,
      this.nodeId,
      this.state,
      this.context,
      this.targetUrl,
      this.required_,
      this.avatarUrl,
      this.url,
      this.createdAt,
      this.updatedAt})
      : super._();

  @override
  SimpleCommitStatus rebuild(
          void Function(SimpleCommitStatusBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SimpleCommitStatusBuilder toBuilder() =>
      new SimpleCommitStatusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SimpleCommitStatus &&
        description == other.description &&
        id == other.id &&
        nodeId == other.nodeId &&
        state == other.state &&
        context == other.context &&
        targetUrl == other.targetUrl &&
        required_ == other.required_ &&
        avatarUrl == other.avatarUrl &&
        url == other.url &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
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
                                        $jc($jc(0, description.hashCode),
                                            id.hashCode),
                                        nodeId.hashCode),
                                    state.hashCode),
                                context.hashCode),
                            targetUrl.hashCode),
                        required_.hashCode),
                    avatarUrl.hashCode),
                url.hashCode),
            createdAt.hashCode),
        updatedAt.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SimpleCommitStatus')
          ..add('description', description)
          ..add('id', id)
          ..add('nodeId', nodeId)
          ..add('state', state)
          ..add('context', context)
          ..add('targetUrl', targetUrl)
          ..add('required_', required_)
          ..add('avatarUrl', avatarUrl)
          ..add('url', url)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class SimpleCommitStatusBuilder
    implements Builder<SimpleCommitStatus, SimpleCommitStatusBuilder> {
  _$SimpleCommitStatus _$v;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _nodeId;
  String get nodeId => _$this._nodeId;
  set nodeId(String nodeId) => _$this._nodeId = nodeId;

  String _state;
  String get state => _$this._state;
  set state(String state) => _$this._state = state;

  String _context;
  String get context => _$this._context;
  set context(String context) => _$this._context = context;

  String _targetUrl;
  String get targetUrl => _$this._targetUrl;
  set targetUrl(String targetUrl) => _$this._targetUrl = targetUrl;

  bool _required_;
  bool get required_ => _$this._required_;
  set required_(bool required_) => _$this._required_ = required_;

  String _avatarUrl;
  String get avatarUrl => _$this._avatarUrl;
  set avatarUrl(String avatarUrl) => _$this._avatarUrl = avatarUrl;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  DateTime _createdAt;
  DateTime get createdAt => _$this._createdAt;
  set createdAt(DateTime createdAt) => _$this._createdAt = createdAt;

  DateTime _updatedAt;
  DateTime get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime updatedAt) => _$this._updatedAt = updatedAt;

  SimpleCommitStatusBuilder() {
    SimpleCommitStatus._initializeBuilder(this);
  }

  SimpleCommitStatusBuilder get _$this {
    if (_$v != null) {
      _description = _$v.description;
      _id = _$v.id;
      _nodeId = _$v.nodeId;
      _state = _$v.state;
      _context = _$v.context;
      _targetUrl = _$v.targetUrl;
      _required_ = _$v.required_;
      _avatarUrl = _$v.avatarUrl;
      _url = _$v.url;
      _createdAt = _$v.createdAt;
      _updatedAt = _$v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SimpleCommitStatus other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SimpleCommitStatus;
  }

  @override
  void update(void Function(SimpleCommitStatusBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SimpleCommitStatus build() {
    final _$result = _$v ??
        new _$SimpleCommitStatus._(
            description: description,
            id: id,
            nodeId: nodeId,
            state: state,
            context: context,
            targetUrl: targetUrl,
            required_: required_,
            avatarUrl: avatarUrl,
            url: url,
            createdAt: createdAt,
            updatedAt: updatedAt);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
