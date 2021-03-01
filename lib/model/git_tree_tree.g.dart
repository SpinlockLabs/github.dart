// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'git_tree_tree.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GitTreeTree> _$gitTreeTreeSerializer = new _$GitTreeTreeSerializer();

class _$GitTreeTreeSerializer implements StructuredSerializer<GitTreeTree> {
  @override
  final Iterable<Type> types = const [GitTreeTree, _$GitTreeTree];
  @override
  final String wireName = 'GitTreeTree';

  @override
  Iterable<Object> serialize(Serializers serializers, GitTreeTree object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.path != null) {
      result
        ..add('path')
        ..add(serializers.serialize(object.path,
            specifiedType: const FullType(String)));
    }
    if (object.mode != null) {
      result
        ..add('mode')
        ..add(serializers.serialize(object.mode,
            specifiedType: const FullType(String)));
    }
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
    if (object.size != null) {
      result
        ..add('size')
        ..add(serializers.serialize(object.size,
            specifiedType: const FullType(int)));
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
  GitTreeTree deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GitTreeTreeBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'path':
          result.path = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'mode':
          result.mode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'sha':
          result.sha = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'size':
          result.size = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
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

class _$GitTreeTree extends GitTreeTree {
  @override
  final String path;
  @override
  final String mode;
  @override
  final String type;
  @override
  final String sha;
  @override
  final int size;
  @override
  final String url;

  factory _$GitTreeTree([void Function(GitTreeTreeBuilder) updates]) =>
      (new GitTreeTreeBuilder()..update(updates)).build();

  _$GitTreeTree._(
      {this.path, this.mode, this.type, this.sha, this.size, this.url})
      : super._();

  @override
  GitTreeTree rebuild(void Function(GitTreeTreeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GitTreeTreeBuilder toBuilder() => new GitTreeTreeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GitTreeTree &&
        path == other.path &&
        mode == other.mode &&
        type == other.type &&
        sha == other.sha &&
        size == other.size &&
        url == other.url;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc($jc(0, path.hashCode), mode.hashCode), type.hashCode),
                sha.hashCode),
            size.hashCode),
        url.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GitTreeTree')
          ..add('path', path)
          ..add('mode', mode)
          ..add('type', type)
          ..add('sha', sha)
          ..add('size', size)
          ..add('url', url))
        .toString();
  }
}

class GitTreeTreeBuilder implements Builder<GitTreeTree, GitTreeTreeBuilder> {
  _$GitTreeTree _$v;

  String _path;
  String get path => _$this._path;
  set path(String path) => _$this._path = path;

  String _mode;
  String get mode => _$this._mode;
  set mode(String mode) => _$this._mode = mode;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  String _sha;
  String get sha => _$this._sha;
  set sha(String sha) => _$this._sha = sha;

  int _size;
  int get size => _$this._size;
  set size(int size) => _$this._size = size;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  GitTreeTreeBuilder() {
    GitTreeTree._initializeBuilder(this);
  }

  GitTreeTreeBuilder get _$this {
    if (_$v != null) {
      _path = _$v.path;
      _mode = _$v.mode;
      _type = _$v.type;
      _sha = _$v.sha;
      _size = _$v.size;
      _url = _$v.url;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GitTreeTree other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GitTreeTree;
  }

  @override
  void update(void Function(GitTreeTreeBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GitTreeTree build() {
    final _$result = _$v ??
        new _$GitTreeTree._(
            path: path, mode: mode, type: type, sha: sha, size: size, url: url);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
