// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'git_commit.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GitCommit> _$gitCommitSerializer = new _$GitCommitSerializer();

class _$GitCommitSerializer implements StructuredSerializer<GitCommit> {
  @override
  final Iterable<Type> types = const [GitCommit, _$GitCommit];
  @override
  final String wireName = 'GitCommit';

  @override
  Iterable<Object> serialize(Serializers serializers, GitCommit object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.sha != null) {
      result
        ..add('sha')
        ..add(serializers.serialize(object.sha,
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
    if (object.author != null) {
      result
        ..add('author')
        ..add(serializers.serialize(object.author,
            specifiedType: const FullType(GitCommitAuthor)));
    }
    if (object.committer != null) {
      result
        ..add('committer')
        ..add(serializers.serialize(object.committer,
            specifiedType: const FullType(GitCommitAuthor)));
    }
    if (object.message != null) {
      result
        ..add('message')
        ..add(serializers.serialize(object.message,
            specifiedType: const FullType(String)));
    }
    if (object.tree != null) {
      result
        ..add('tree')
        ..add(serializers.serialize(object.tree,
            specifiedType: const FullType(GitCommitTree)));
    }
    if (object.parents != null) {
      result
        ..add('parents')
        ..add(serializers.serialize(object.parents,
            specifiedType: const FullType(
                BuiltList, const [const FullType(GitCommitParents)])));
    }
    if (object.verification != null) {
      result
        ..add('verification')
        ..add(serializers.serialize(object.verification,
            specifiedType: const FullType(GitCommitVerification)));
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
  GitCommit deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GitCommitBuilder();

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
        case 'node_id':
          result.nodeId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'author':
          result.author.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GitCommitAuthor))
              as GitCommitAuthor);
          break;
        case 'committer':
          result.committer.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GitCommitAuthor))
              as GitCommitAuthor);
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'tree':
          result.tree.replace(serializers.deserialize(value,
              specifiedType: const FullType(GitCommitTree)) as GitCommitTree);
          break;
        case 'parents':
          result.parents.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(GitCommitParents)]))
              as BuiltList<Object>);
          break;
        case 'verification':
          result.verification.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GitCommitVerification))
              as GitCommitVerification);
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

class _$GitCommit extends GitCommit {
  @override
  final String sha;
  @override
  final String nodeId;
  @override
  final String url;
  @override
  final GitCommitAuthor author;
  @override
  final GitCommitAuthor committer;
  @override
  final String message;
  @override
  final GitCommitTree tree;
  @override
  final BuiltList<GitCommitParents> parents;
  @override
  final GitCommitVerification verification;
  @override
  final String htmlUrl;

  factory _$GitCommit([void Function(GitCommitBuilder) updates]) =>
      (new GitCommitBuilder()..update(updates)).build();

  _$GitCommit._(
      {this.sha,
      this.nodeId,
      this.url,
      this.author,
      this.committer,
      this.message,
      this.tree,
      this.parents,
      this.verification,
      this.htmlUrl})
      : super._();

  @override
  GitCommit rebuild(void Function(GitCommitBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GitCommitBuilder toBuilder() => new GitCommitBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GitCommit &&
        sha == other.sha &&
        nodeId == other.nodeId &&
        url == other.url &&
        author == other.author &&
        committer == other.committer &&
        message == other.message &&
        tree == other.tree &&
        parents == other.parents &&
        verification == other.verification &&
        htmlUrl == other.htmlUrl;
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
                                $jc($jc($jc(0, sha.hashCode), nodeId.hashCode),
                                    url.hashCode),
                                author.hashCode),
                            committer.hashCode),
                        message.hashCode),
                    tree.hashCode),
                parents.hashCode),
            verification.hashCode),
        htmlUrl.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GitCommit')
          ..add('sha', sha)
          ..add('nodeId', nodeId)
          ..add('url', url)
          ..add('author', author)
          ..add('committer', committer)
          ..add('message', message)
          ..add('tree', tree)
          ..add('parents', parents)
          ..add('verification', verification)
          ..add('htmlUrl', htmlUrl))
        .toString();
  }
}

class GitCommitBuilder implements Builder<GitCommit, GitCommitBuilder> {
  _$GitCommit _$v;

  String _sha;
  String get sha => _$this._sha;
  set sha(String sha) => _$this._sha = sha;

  String _nodeId;
  String get nodeId => _$this._nodeId;
  set nodeId(String nodeId) => _$this._nodeId = nodeId;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  GitCommitAuthorBuilder _author;
  GitCommitAuthorBuilder get author =>
      _$this._author ??= new GitCommitAuthorBuilder();
  set author(GitCommitAuthorBuilder author) => _$this._author = author;

  GitCommitAuthorBuilder _committer;
  GitCommitAuthorBuilder get committer =>
      _$this._committer ??= new GitCommitAuthorBuilder();
  set committer(GitCommitAuthorBuilder committer) =>
      _$this._committer = committer;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  GitCommitTreeBuilder _tree;
  GitCommitTreeBuilder get tree => _$this._tree ??= new GitCommitTreeBuilder();
  set tree(GitCommitTreeBuilder tree) => _$this._tree = tree;

  ListBuilder<GitCommitParents> _parents;
  ListBuilder<GitCommitParents> get parents =>
      _$this._parents ??= new ListBuilder<GitCommitParents>();
  set parents(ListBuilder<GitCommitParents> parents) =>
      _$this._parents = parents;

  GitCommitVerificationBuilder _verification;
  GitCommitVerificationBuilder get verification =>
      _$this._verification ??= new GitCommitVerificationBuilder();
  set verification(GitCommitVerificationBuilder verification) =>
      _$this._verification = verification;

  String _htmlUrl;
  String get htmlUrl => _$this._htmlUrl;
  set htmlUrl(String htmlUrl) => _$this._htmlUrl = htmlUrl;

  GitCommitBuilder() {
    GitCommit._initializeBuilder(this);
  }

  GitCommitBuilder get _$this {
    if (_$v != null) {
      _sha = _$v.sha;
      _nodeId = _$v.nodeId;
      _url = _$v.url;
      _author = _$v.author?.toBuilder();
      _committer = _$v.committer?.toBuilder();
      _message = _$v.message;
      _tree = _$v.tree?.toBuilder();
      _parents = _$v.parents?.toBuilder();
      _verification = _$v.verification?.toBuilder();
      _htmlUrl = _$v.htmlUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GitCommit other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GitCommit;
  }

  @override
  void update(void Function(GitCommitBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GitCommit build() {
    _$GitCommit _$result;
    try {
      _$result = _$v ??
          new _$GitCommit._(
              sha: sha,
              nodeId: nodeId,
              url: url,
              author: _author?.build(),
              committer: _committer?.build(),
              message: message,
              tree: _tree?.build(),
              parents: _parents?.build(),
              verification: _verification?.build(),
              htmlUrl: htmlUrl);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'author';
        _author?.build();
        _$failedField = 'committer';
        _committer?.build();

        _$failedField = 'tree';
        _tree?.build();
        _$failedField = 'parents';
        _parents?.build();
        _$failedField = 'verification';
        _verification?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GitCommit', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
