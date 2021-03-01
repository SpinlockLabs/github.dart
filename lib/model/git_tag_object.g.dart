// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'git_tag_object.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GitTagObject> _$gitTagObjectSerializer =
    new _$GitTagObjectSerializer();

class _$GitTagObjectSerializer implements StructuredSerializer<GitTagObject> {
  @override
  final Iterable<Type> types = const [GitTagObject, _$GitTagObject];
  @override
  final String wireName = 'GitTagObject';

  @override
  Iterable<Object> serialize(Serializers serializers, GitTagObject object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.sha != null) {
      result
        ..add('sha')
        ..add(serializers.serialize(object.sha,
            specifiedType: const FullType(String)));
    }
    if (object.type != null) {
      result
        ..add('type')
        ..add(serializers.serialize(object.type,
            specifiedType: const FullType(String)));
    }
    if (object.url != null) {
      result
        ..add('url')
        ..add(serializers.serialize(object.url,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GitTagObject deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GitTagObjectBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'sha':
          result.sha = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GitTagObject extends GitTagObject {
  @override
  final String sha;
  @override
  final String type;
  @override
  final String url;

  factory _$GitTagObject([void Function(GitTagObjectBuilder) updates]) =>
      (new GitTagObjectBuilder()..update(updates)).build();

  _$GitTagObject._({this.sha, this.type, this.url}) : super._();

  @override
  GitTagObject rebuild(void Function(GitTagObjectBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GitTagObjectBuilder toBuilder() => new GitTagObjectBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GitTagObject &&
        sha == other.sha &&
        type == other.type &&
        url == other.url;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, sha.hashCode), type.hashCode), url.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GitTagObject')
          ..add('sha', sha)
          ..add('type', type)
          ..add('url', url))
        .toString();
  }
}

class GitTagObjectBuilder
    implements Builder<GitTagObject, GitTagObjectBuilder> {
  _$GitTagObject _$v;

  String _sha;
  String get sha => _$this._sha;
  set sha(String sha) => _$this._sha = sha;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  GitTagObjectBuilder() {
    GitTagObject._initializeBuilder(this);
  }

  GitTagObjectBuilder get _$this {
    if (_$v != null) {
      _sha = _$v.sha;
      _type = _$v.type;
      _url = _$v.url;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GitTagObject other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GitTagObject;
  }

  @override
  void update(void Function(GitTagObjectBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GitTagObject build() {
    final _$result =
        _$v ?? new _$GitTagObject._(sha: sha, type: type, url: url);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
