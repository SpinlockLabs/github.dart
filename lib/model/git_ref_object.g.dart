// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'git_ref_object.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GitRefObject> _$gitRefObjectSerializer =
    new _$GitRefObjectSerializer();

class _$GitRefObjectSerializer implements StructuredSerializer<GitRefObject> {
  @override
  final Iterable<Type> types = const [GitRefObject, _$GitRefObject];
  @override
  final String wireName = 'GitRefObject';

  @override
  Iterable<Object> serialize(Serializers serializers, GitRefObject object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.type != null) {
      result
        ..add('type')
        ..add(serializers.serialize(object.type,
            specifiedType: const FullType(String)));
    }
    if (object.sha != null) {
      result
        ..add('sha')
        ..add(serializers.serialize(object.sha,
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
  GitRefObject deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GitRefObjectBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'sha':
          result.sha = serializers.deserialize(value,
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

class _$GitRefObject extends GitRefObject {
  @override
  final String type;
  @override
  final String sha;
  @override
  final String url;

  factory _$GitRefObject([void Function(GitRefObjectBuilder) updates]) =>
      (new GitRefObjectBuilder()..update(updates)).build();

  _$GitRefObject._({this.type, this.sha, this.url}) : super._();

  @override
  GitRefObject rebuild(void Function(GitRefObjectBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GitRefObjectBuilder toBuilder() => new GitRefObjectBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GitRefObject &&
        type == other.type &&
        sha == other.sha &&
        url == other.url;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, type.hashCode), sha.hashCode), url.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GitRefObject')
          ..add('type', type)
          ..add('sha', sha)
          ..add('url', url))
        .toString();
  }
}

class GitRefObjectBuilder
    implements Builder<GitRefObject, GitRefObjectBuilder> {
  _$GitRefObject _$v;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  String _sha;
  String get sha => _$this._sha;
  set sha(String sha) => _$this._sha = sha;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  GitRefObjectBuilder() {
    GitRefObject._initializeBuilder(this);
  }

  GitRefObjectBuilder get _$this {
    if (_$v != null) {
      _type = _$v.type;
      _sha = _$v.sha;
      _url = _$v.url;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GitRefObject other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GitRefObject;
  }

  @override
  void update(void Function(GitRefObjectBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GitRefObject build() {
    final _$result =
        _$v ?? new _$GitRefObject._(type: type, sha: sha, url: url);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
