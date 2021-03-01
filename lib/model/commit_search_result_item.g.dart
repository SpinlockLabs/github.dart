// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'commit_search_result_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CommitSearchResultItem> _$commitSearchResultItemSerializer =
    new _$CommitSearchResultItemSerializer();

class _$CommitSearchResultItemSerializer
    implements StructuredSerializer<CommitSearchResultItem> {
  @override
  final Iterable<Type> types = const [
    CommitSearchResultItem,
    _$CommitSearchResultItem
  ];
  @override
  final String wireName = 'CommitSearchResultItem';

  @override
  Iterable<Object> serialize(
      Serializers serializers, CommitSearchResultItem object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.url != null) {
      result
        ..add('url')
        ..add(serializers.serialize(object.url,
            specifiedType: const FullType(String)));
    }
    if (object.sha != null) {
      result
        ..add('sha')
        ..add(serializers.serialize(object.sha,
            specifiedType: const FullType(String)));
    }
    if (object.htmlUrl != null) {
      result
        ..add('html_url')
        ..add(serializers.serialize(object.htmlUrl,
            specifiedType: const FullType(String)));
    }
    if (object.commentsUrl != null) {
      result
        ..add('comments_url')
        ..add(serializers.serialize(object.commentsUrl,
            specifiedType: const FullType(String)));
    }
    if (object.commit != null) {
      result
        ..add('commit')
        ..add(serializers.serialize(object.commit,
            specifiedType: const FullType(CommitSearchResultItemCommit)));
    }
    if (object.author != null) {
      result
        ..add('author')
        ..add(serializers.serialize(object.author,
            specifiedType: const FullType(SimpleUser)));
    }
    if (object.committer != null) {
      result
        ..add('committer')
        ..add(serializers.serialize(object.committer,
            specifiedType: const FullType(GitUser)));
    }
    if (object.parents != null) {
      result
        ..add('parents')
        ..add(serializers.serialize(object.parents,
            specifiedType: const FullType(
                BuiltList, const [const FullType(FileCommitCommitParents)])));
    }
    if (object.repository != null) {
      result
        ..add('repository')
        ..add(serializers.serialize(object.repository,
            specifiedType: const FullType(MinimalRepository)));
    }
    if (object.score != null) {
      result
        ..add('score')
        ..add(serializers.serialize(object.score,
            specifiedType: const FullType(int)));
    }
    if (object.nodeId != null) {
      result
        ..add('node_id')
        ..add(serializers.serialize(object.nodeId,
            specifiedType: const FullType(String)));
    }
    if (object.textMatches != null) {
      result
        ..add('text_matches')
        ..add(serializers.serialize(object.textMatches,
            specifiedType:
                const FullType(BuiltList, const [const FullType(JsonObject)])));
    }
    return result;
  }

  @override
  CommitSearchResultItem deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CommitSearchResultItemBuilder();

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
        case 'sha':
          result.sha = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'html_url':
          result.htmlUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'comments_url':
          result.commentsUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'commit':
          result.commit.replace(serializers.deserialize(value,
                  specifiedType: const FullType(CommitSearchResultItemCommit))
              as CommitSearchResultItemCommit);
          break;
        case 'author':
          result.author.replace(serializers.deserialize(value,
              specifiedType: const FullType(SimpleUser)) as SimpleUser);
          break;
        case 'committer':
          result.committer.replace(serializers.deserialize(value,
              specifiedType: const FullType(GitUser)) as GitUser);
          break;
        case 'parents':
          result.parents.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(FileCommitCommitParents)
              ])) as BuiltList<Object>);
          break;
        case 'repository':
          result.repository.replace(serializers.deserialize(value,
                  specifiedType: const FullType(MinimalRepository))
              as MinimalRepository);
          break;
        case 'score':
          result.score = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'node_id':
          result.nodeId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'text_matches':
          result.textMatches.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(JsonObject)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$CommitSearchResultItem extends CommitSearchResultItem {
  @override
  final String url;
  @override
  final String sha;
  @override
  final String htmlUrl;
  @override
  final String commentsUrl;
  @override
  final CommitSearchResultItemCommit commit;
  @override
  final SimpleUser author;
  @override
  final GitUser committer;
  @override
  final BuiltList<FileCommitCommitParents> parents;
  @override
  final MinimalRepository repository;
  @override
  final int score;
  @override
  final String nodeId;
  @override
  final BuiltList<JsonObject> textMatches;

  factory _$CommitSearchResultItem(
          [void Function(CommitSearchResultItemBuilder) updates]) =>
      (new CommitSearchResultItemBuilder()..update(updates)).build();

  _$CommitSearchResultItem._(
      {this.url,
      this.sha,
      this.htmlUrl,
      this.commentsUrl,
      this.commit,
      this.author,
      this.committer,
      this.parents,
      this.repository,
      this.score,
      this.nodeId,
      this.textMatches})
      : super._();

  @override
  CommitSearchResultItem rebuild(
          void Function(CommitSearchResultItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CommitSearchResultItemBuilder toBuilder() =>
      new CommitSearchResultItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CommitSearchResultItem &&
        url == other.url &&
        sha == other.sha &&
        htmlUrl == other.htmlUrl &&
        commentsUrl == other.commentsUrl &&
        commit == other.commit &&
        author == other.author &&
        committer == other.committer &&
        parents == other.parents &&
        repository == other.repository &&
        score == other.score &&
        nodeId == other.nodeId &&
        textMatches == other.textMatches;
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
                                        $jc(
                                            $jc($jc(0, url.hashCode),
                                                sha.hashCode),
                                            htmlUrl.hashCode),
                                        commentsUrl.hashCode),
                                    commit.hashCode),
                                author.hashCode),
                            committer.hashCode),
                        parents.hashCode),
                    repository.hashCode),
                score.hashCode),
            nodeId.hashCode),
        textMatches.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CommitSearchResultItem')
          ..add('url', url)
          ..add('sha', sha)
          ..add('htmlUrl', htmlUrl)
          ..add('commentsUrl', commentsUrl)
          ..add('commit', commit)
          ..add('author', author)
          ..add('committer', committer)
          ..add('parents', parents)
          ..add('repository', repository)
          ..add('score', score)
          ..add('nodeId', nodeId)
          ..add('textMatches', textMatches))
        .toString();
  }
}

class CommitSearchResultItemBuilder
    implements Builder<CommitSearchResultItem, CommitSearchResultItemBuilder> {
  _$CommitSearchResultItem _$v;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _sha;
  String get sha => _$this._sha;
  set sha(String sha) => _$this._sha = sha;

  String _htmlUrl;
  String get htmlUrl => _$this._htmlUrl;
  set htmlUrl(String htmlUrl) => _$this._htmlUrl = htmlUrl;

  String _commentsUrl;
  String get commentsUrl => _$this._commentsUrl;
  set commentsUrl(String commentsUrl) => _$this._commentsUrl = commentsUrl;

  CommitSearchResultItemCommitBuilder _commit;
  CommitSearchResultItemCommitBuilder get commit =>
      _$this._commit ??= new CommitSearchResultItemCommitBuilder();
  set commit(CommitSearchResultItemCommitBuilder commit) =>
      _$this._commit = commit;

  SimpleUserBuilder _author;
  SimpleUserBuilder get author => _$this._author ??= new SimpleUserBuilder();
  set author(SimpleUserBuilder author) => _$this._author = author;

  GitUserBuilder _committer;
  GitUserBuilder get committer => _$this._committer ??= new GitUserBuilder();
  set committer(GitUserBuilder committer) => _$this._committer = committer;

  ListBuilder<FileCommitCommitParents> _parents;
  ListBuilder<FileCommitCommitParents> get parents =>
      _$this._parents ??= new ListBuilder<FileCommitCommitParents>();
  set parents(ListBuilder<FileCommitCommitParents> parents) =>
      _$this._parents = parents;

  MinimalRepositoryBuilder _repository;
  MinimalRepositoryBuilder get repository =>
      _$this._repository ??= new MinimalRepositoryBuilder();
  set repository(MinimalRepositoryBuilder repository) =>
      _$this._repository = repository;

  int _score;
  int get score => _$this._score;
  set score(int score) => _$this._score = score;

  String _nodeId;
  String get nodeId => _$this._nodeId;
  set nodeId(String nodeId) => _$this._nodeId = nodeId;

  ListBuilder<JsonObject> _textMatches;
  ListBuilder<JsonObject> get textMatches =>
      _$this._textMatches ??= new ListBuilder<JsonObject>();
  set textMatches(ListBuilder<JsonObject> textMatches) =>
      _$this._textMatches = textMatches;

  CommitSearchResultItemBuilder() {
    CommitSearchResultItem._initializeBuilder(this);
  }

  CommitSearchResultItemBuilder get _$this {
    if (_$v != null) {
      _url = _$v.url;
      _sha = _$v.sha;
      _htmlUrl = _$v.htmlUrl;
      _commentsUrl = _$v.commentsUrl;
      _commit = _$v.commit?.toBuilder();
      _author = _$v.author?.toBuilder();
      _committer = _$v.committer?.toBuilder();
      _parents = _$v.parents?.toBuilder();
      _repository = _$v.repository?.toBuilder();
      _score = _$v.score;
      _nodeId = _$v.nodeId;
      _textMatches = _$v.textMatches?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CommitSearchResultItem other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CommitSearchResultItem;
  }

  @override
  void update(void Function(CommitSearchResultItemBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CommitSearchResultItem build() {
    _$CommitSearchResultItem _$result;
    try {
      _$result = _$v ??
          new _$CommitSearchResultItem._(
              url: url,
              sha: sha,
              htmlUrl: htmlUrl,
              commentsUrl: commentsUrl,
              commit: _commit?.build(),
              author: _author?.build(),
              committer: _committer?.build(),
              parents: _parents?.build(),
              repository: _repository?.build(),
              score: score,
              nodeId: nodeId,
              textMatches: _textMatches?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'commit';
        _commit?.build();
        _$failedField = 'author';
        _author?.build();
        _$failedField = 'committer';
        _committer?.build();
        _$failedField = 'parents';
        _parents?.build();
        _$failedField = 'repository';
        _repository?.build();

        _$failedField = 'textMatches';
        _textMatches?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CommitSearchResultItem', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
