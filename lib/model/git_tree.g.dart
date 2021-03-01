// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'git_tree.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GitTree> _$gitTreeSerializer = new _$GitTreeSerializer();

class _$GitTreeSerializer implements StructuredSerializer<GitTree> {
  @override
  final Iterable<Type> types = const [GitTree, _$GitTree];
  @override
  final String wireName = 'GitTree';

  @override
  Iterable<Object> serialize(Serializers serializers, GitTree object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
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
    if (object.truncated != null) {
      result
        ..add('truncated')
        ..add(serializers.serialize(object.truncated,
            specifiedType: const FullType(bool)));
    }
    if (object.tree != null) {
      result
        ..add('tree')
        ..add(serializers.serialize(object.tree,
            specifiedType: const FullType(
                BuiltList, const [const FullType(GitTreeTree)])));
    }
    return result;
  }

  @override
  GitTree deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GitTreeBuilder();

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
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'truncated':
          result.truncated = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'tree':
          result.tree.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(GitTreeTree)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$GitTree extends GitTree {
  @override
  final String sha;
  @override
  final String url;
  @override
  final bool truncated;
  @override
  final BuiltList<GitTreeTree> tree;

  factory _$GitTree([void Function(GitTreeBuilder) updates]) =>
      (new GitTreeBuilder()..update(updates)).build();

  _$GitTree._({this.sha, this.url, this.truncated, this.tree}) : super._();

  @override
  GitTree rebuild(void Function(GitTreeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GitTreeBuilder toBuilder() => new GitTreeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GitTree &&
        sha == other.sha &&
        url == other.url &&
        truncated == other.truncated &&
        tree == other.tree;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, sha.hashCode), url.hashCode), truncated.hashCode),
        tree.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GitTree')
          ..add('sha', sha)
          ..add('url', url)
          ..add('truncated', truncated)
          ..add('tree', tree))
        .toString();
  }
}

class GitTreeBuilder implements Builder<GitTree, GitTreeBuilder> {
  _$GitTree _$v;

  String _sha;
  String get sha => _$this._sha;
  set sha(String sha) => _$this._sha = sha;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  bool _truncated;
  bool get truncated => _$this._truncated;
  set truncated(bool truncated) => _$this._truncated = truncated;

  ListBuilder<GitTreeTree> _tree;
  ListBuilder<GitTreeTree> get tree =>
      _$this._tree ??= new ListBuilder<GitTreeTree>();
  set tree(ListBuilder<GitTreeTree> tree) => _$this._tree = tree;

  GitTreeBuilder() {
    GitTree._initializeBuilder(this);
  }

  GitTreeBuilder get _$this {
    if (_$v != null) {
      _sha = _$v.sha;
      _url = _$v.url;
      _truncated = _$v.truncated;
      _tree = _$v.tree?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GitTree other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GitTree;
  }

  @override
  void update(void Function(GitTreeBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GitTree build() {
    _$GitTree _$result;
    try {
      _$result = _$v ??
          new _$GitTree._(
              sha: sha, url: url, truncated: truncated, tree: _tree?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'tree';
        _tree?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GitTree', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
