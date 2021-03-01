// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'git_ref.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GitRef> _$gitRefSerializer = new _$GitRefSerializer();

class _$GitRefSerializer implements StructuredSerializer<GitRef> {
  @override
  final Iterable<Type> types = const [GitRef, _$GitRef];
  @override
  final String wireName = 'GitRef';

  @override
  Iterable<Object> serialize(Serializers serializers, GitRef object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.ref != null) {
      result
        ..add('ref')
        ..add(serializers.serialize(object.ref,
            specifiedType: const FullType(String)));
    }
    if (object.nodeId != null) {
      result
        ..add('node_id')
        ..add(serializers.serialize(object.nodeId,
            specifiedType: const FullType(String)));
    }
    if (object.url != null) {
      result
        ..add('url')
        ..add(serializers.serialize(object.url,
            specifiedType: const FullType(String)));
    }
    if (object.object != null) {
      result
        ..add('object')
        ..add(serializers.serialize(object.object,
            specifiedType: const FullType(GitRefObject)));
    }
    return result;
  }

  @override
  GitRef deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GitRefBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'ref':
          result.ref = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'node_id':
          result.nodeId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'object':
          result.object.replace(serializers.deserialize(value,
              specifiedType: const FullType(GitRefObject)) as GitRefObject);
          break;
      }
    }

    return result.build();
  }
}

class _$GitRef extends GitRef {
  @override
  final String ref;
  @override
  final String nodeId;
  @override
  final String url;
  @override
  final GitRefObject object;

  factory _$GitRef([void Function(GitRefBuilder) updates]) =>
      (new GitRefBuilder()..update(updates)).build();

  _$GitRef._({this.ref, this.nodeId, this.url, this.object}) : super._();

  @override
  GitRef rebuild(void Function(GitRefBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GitRefBuilder toBuilder() => new GitRefBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GitRef &&
        ref == other.ref &&
        nodeId == other.nodeId &&
        url == other.url &&
        object == other.object;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, ref.hashCode), nodeId.hashCode), url.hashCode),
        object.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GitRef')
          ..add('ref', ref)
          ..add('nodeId', nodeId)
          ..add('url', url)
          ..add('object', object))
        .toString();
  }
}

class GitRefBuilder implements Builder<GitRef, GitRefBuilder> {
  _$GitRef _$v;

  String _ref;
  String get ref => _$this._ref;
  set ref(String ref) => _$this._ref = ref;

  String _nodeId;
  String get nodeId => _$this._nodeId;
  set nodeId(String nodeId) => _$this._nodeId = nodeId;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  GitRefObjectBuilder _object;
  GitRefObjectBuilder get object =>
      _$this._object ??= new GitRefObjectBuilder();
  set object(GitRefObjectBuilder object) => _$this._object = object;

  GitRefBuilder() {
    GitRef._initializeBuilder(this);
  }

  GitRefBuilder get _$this {
    if (_$v != null) {
      _ref = _$v.ref;
      _nodeId = _$v.nodeId;
      _url = _$v.url;
      _object = _$v.object?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GitRef other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GitRef;
  }

  @override
  void update(void Function(GitRefBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GitRef build() {
    _$GitRef _$result;
    try {
      _$result = _$v ??
          new _$GitRef._(
              ref: ref, nodeId: nodeId, url: url, object: _object?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'object';
        _object?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GitRef', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
