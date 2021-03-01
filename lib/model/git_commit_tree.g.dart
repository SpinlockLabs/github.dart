// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'git_commit_tree.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GitCommitTree> _$gitCommitTreeSerializer =
    new _$GitCommitTreeSerializer();

class _$GitCommitTreeSerializer implements StructuredSerializer<GitCommitTree> {
  @override
  final Iterable<Type> types = const [GitCommitTree, _$GitCommitTree];
  @override
  final String wireName = 'GitCommitTree';

  @override
  Iterable<Object> serialize(Serializers serializers, GitCommitTree object,
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
    return result;
  }

  @override
  GitCommitTree deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GitCommitTreeBuilder();

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
      }
    }

    return result.build();
  }
}

class _$GitCommitTree extends GitCommitTree {
  @override
  final String sha;
  @override
  final String url;

  factory _$GitCommitTree([void Function(GitCommitTreeBuilder) updates]) =>
      (new GitCommitTreeBuilder()..update(updates)).build();

  _$GitCommitTree._({this.sha, this.url}) : super._();

  @override
  GitCommitTree rebuild(void Function(GitCommitTreeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GitCommitTreeBuilder toBuilder() => new GitCommitTreeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GitCommitTree && sha == other.sha && url == other.url;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, sha.hashCode), url.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GitCommitTree')
          ..add('sha', sha)
          ..add('url', url))
        .toString();
  }
}

class GitCommitTreeBuilder
    implements Builder<GitCommitTree, GitCommitTreeBuilder> {
  _$GitCommitTree _$v;

  String _sha;
  String get sha => _$this._sha;
  set sha(String sha) => _$this._sha = sha;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  GitCommitTreeBuilder() {
    GitCommitTree._initializeBuilder(this);
  }

  GitCommitTreeBuilder get _$this {
    if (_$v != null) {
      _sha = _$v.sha;
      _url = _$v.url;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GitCommitTree other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GitCommitTree;
  }

  @override
  void update(void Function(GitCommitTreeBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GitCommitTree build() {
    final _$result = _$v ?? new _$GitCommitTree._(sha: sha, url: url);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
