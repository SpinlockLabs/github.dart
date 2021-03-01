// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'git_commit_parents.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GitCommitParents> _$gitCommitParentsSerializer =
    new _$GitCommitParentsSerializer();

class _$GitCommitParentsSerializer
    implements StructuredSerializer<GitCommitParents> {
  @override
  final Iterable<Type> types = const [GitCommitParents, _$GitCommitParents];
  @override
  final String wireName = 'GitCommitParents';

  @override
  Iterable<Object> serialize(Serializers serializers, GitCommitParents object,
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
    if (object.htmlUrl != null) {
      result
        ..add('html_url')
        ..add(serializers.serialize(object.htmlUrl,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GitCommitParents deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GitCommitParentsBuilder();

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
        case 'html_url':
          result.htmlUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GitCommitParents extends GitCommitParents {
  @override
  final String sha;
  @override
  final String url;
  @override
  final String htmlUrl;

  factory _$GitCommitParents(
          [void Function(GitCommitParentsBuilder) updates]) =>
      (new GitCommitParentsBuilder()..update(updates)).build();

  _$GitCommitParents._({this.sha, this.url, this.htmlUrl}) : super._();

  @override
  GitCommitParents rebuild(void Function(GitCommitParentsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GitCommitParentsBuilder toBuilder() =>
      new GitCommitParentsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GitCommitParents &&
        sha == other.sha &&
        url == other.url &&
        htmlUrl == other.htmlUrl;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, sha.hashCode), url.hashCode), htmlUrl.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GitCommitParents')
          ..add('sha', sha)
          ..add('url', url)
          ..add('htmlUrl', htmlUrl))
        .toString();
  }
}

class GitCommitParentsBuilder
    implements Builder<GitCommitParents, GitCommitParentsBuilder> {
  _$GitCommitParents _$v;

  String _sha;
  String get sha => _$this._sha;
  set sha(String sha) => _$this._sha = sha;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _htmlUrl;
  String get htmlUrl => _$this._htmlUrl;
  set htmlUrl(String htmlUrl) => _$this._htmlUrl = htmlUrl;

  GitCommitParentsBuilder() {
    GitCommitParents._initializeBuilder(this);
  }

  GitCommitParentsBuilder get _$this {
    if (_$v != null) {
      _sha = _$v.sha;
      _url = _$v.url;
      _htmlUrl = _$v.htmlUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GitCommitParents other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GitCommitParents;
  }

  @override
  void update(void Function(GitCommitParentsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GitCommitParents build() {
    final _$result =
        _$v ?? new _$GitCommitParents._(sha: sha, url: url, htmlUrl: htmlUrl);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
