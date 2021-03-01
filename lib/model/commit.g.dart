// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'commit.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Commit> _$commitSerializer = new _$CommitSerializer();

class _$CommitSerializer implements StructuredSerializer<Commit> {
  @override
  final Iterable<Type> types = const [Commit, _$Commit];
  @override
  final String wireName = 'Commit';

  @override
  Iterable<Object> serialize(Serializers serializers, Commit object,
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
    if (object.nodeId != null) {
      result
        ..add('node_id')
        ..add(serializers.serialize(object.nodeId,
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
            specifiedType: const FullType(CommitCommit)));
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
            specifiedType: const FullType(SimpleUser)));
    }
    if (object.parents != null) {
      result
        ..add('parents')
        ..add(serializers.serialize(object.parents,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CommitParents)])));
    }
    if (object.stats != null) {
      result
        ..add('stats')
        ..add(serializers.serialize(object.stats,
            specifiedType: const FullType(CommitStats)));
    }
    if (object.files != null) {
      result
        ..add('files')
        ..add(serializers.serialize(object.files,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CommitFiles)])));
    }
    return result;
  }

  @override
  Commit deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CommitBuilder();

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
        case 'node_id':
          result.nodeId = serializers.deserialize(value,
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
              specifiedType: const FullType(CommitCommit)) as CommitCommit);
          break;
        case 'author':
          result.author.replace(serializers.deserialize(value,
              specifiedType: const FullType(SimpleUser)) as SimpleUser);
          break;
        case 'committer':
          result.committer.replace(serializers.deserialize(value,
              specifiedType: const FullType(SimpleUser)) as SimpleUser);
          break;
        case 'parents':
          result.parents.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CommitParents)]))
              as BuiltList<Object>);
          break;
        case 'stats':
          result.stats.replace(serializers.deserialize(value,
              specifiedType: const FullType(CommitStats)) as CommitStats);
          break;
        case 'files':
          result.files.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CommitFiles)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$Commit extends Commit {
  @override
  final String url;
  @override
  final String sha;
  @override
  final String nodeId;
  @override
  final String htmlUrl;
  @override
  final String commentsUrl;
  @override
  final CommitCommit commit;
  @override
  final SimpleUser author;
  @override
  final SimpleUser committer;
  @override
  final BuiltList<CommitParents> parents;
  @override
  final CommitStats stats;
  @override
  final BuiltList<CommitFiles> files;

  factory _$Commit([void Function(CommitBuilder) updates]) =>
      (new CommitBuilder()..update(updates)).build();

  _$Commit._(
      {this.url,
      this.sha,
      this.nodeId,
      this.htmlUrl,
      this.commentsUrl,
      this.commit,
      this.author,
      this.committer,
      this.parents,
      this.stats,
      this.files})
      : super._();

  @override
  Commit rebuild(void Function(CommitBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CommitBuilder toBuilder() => new CommitBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Commit &&
        url == other.url &&
        sha == other.sha &&
        nodeId == other.nodeId &&
        htmlUrl == other.htmlUrl &&
        commentsUrl == other.commentsUrl &&
        commit == other.commit &&
        author == other.author &&
        committer == other.committer &&
        parents == other.parents &&
        stats == other.stats &&
        files == other.files;
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
                                    $jc($jc($jc(0, url.hashCode), sha.hashCode),
                                        nodeId.hashCode),
                                    htmlUrl.hashCode),
                                commentsUrl.hashCode),
                            commit.hashCode),
                        author.hashCode),
                    committer.hashCode),
                parents.hashCode),
            stats.hashCode),
        files.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Commit')
          ..add('url', url)
          ..add('sha', sha)
          ..add('nodeId', nodeId)
          ..add('htmlUrl', htmlUrl)
          ..add('commentsUrl', commentsUrl)
          ..add('commit', commit)
          ..add('author', author)
          ..add('committer', committer)
          ..add('parents', parents)
          ..add('stats', stats)
          ..add('files', files))
        .toString();
  }
}

class CommitBuilder implements Builder<Commit, CommitBuilder> {
  _$Commit _$v;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _sha;
  String get sha => _$this._sha;
  set sha(String sha) => _$this._sha = sha;

  String _nodeId;
  String get nodeId => _$this._nodeId;
  set nodeId(String nodeId) => _$this._nodeId = nodeId;

  String _htmlUrl;
  String get htmlUrl => _$this._htmlUrl;
  set htmlUrl(String htmlUrl) => _$this._htmlUrl = htmlUrl;

  String _commentsUrl;
  String get commentsUrl => _$this._commentsUrl;
  set commentsUrl(String commentsUrl) => _$this._commentsUrl = commentsUrl;

  CommitCommitBuilder _commit;
  CommitCommitBuilder get commit =>
      _$this._commit ??= new CommitCommitBuilder();
  set commit(CommitCommitBuilder commit) => _$this._commit = commit;

  SimpleUserBuilder _author;
  SimpleUserBuilder get author => _$this._author ??= new SimpleUserBuilder();
  set author(SimpleUserBuilder author) => _$this._author = author;

  SimpleUserBuilder _committer;
  SimpleUserBuilder get committer =>
      _$this._committer ??= new SimpleUserBuilder();
  set committer(SimpleUserBuilder committer) => _$this._committer = committer;

  ListBuilder<CommitParents> _parents;
  ListBuilder<CommitParents> get parents =>
      _$this._parents ??= new ListBuilder<CommitParents>();
  set parents(ListBuilder<CommitParents> parents) => _$this._parents = parents;

  CommitStatsBuilder _stats;
  CommitStatsBuilder get stats => _$this._stats ??= new CommitStatsBuilder();
  set stats(CommitStatsBuilder stats) => _$this._stats = stats;

  ListBuilder<CommitFiles> _files;
  ListBuilder<CommitFiles> get files =>
      _$this._files ??= new ListBuilder<CommitFiles>();
  set files(ListBuilder<CommitFiles> files) => _$this._files = files;

  CommitBuilder() {
    Commit._initializeBuilder(this);
  }

  CommitBuilder get _$this {
    if (_$v != null) {
      _url = _$v.url;
      _sha = _$v.sha;
      _nodeId = _$v.nodeId;
      _htmlUrl = _$v.htmlUrl;
      _commentsUrl = _$v.commentsUrl;
      _commit = _$v.commit?.toBuilder();
      _author = _$v.author?.toBuilder();
      _committer = _$v.committer?.toBuilder();
      _parents = _$v.parents?.toBuilder();
      _stats = _$v.stats?.toBuilder();
      _files = _$v.files?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Commit other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Commit;
  }

  @override
  void update(void Function(CommitBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Commit build() {
    _$Commit _$result;
    try {
      _$result = _$v ??
          new _$Commit._(
              url: url,
              sha: sha,
              nodeId: nodeId,
              htmlUrl: htmlUrl,
              commentsUrl: commentsUrl,
              commit: _commit?.build(),
              author: _author?.build(),
              committer: _committer?.build(),
              parents: _parents?.build(),
              stats: _stats?.build(),
              files: _files?.build());
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
        _$failedField = 'stats';
        _stats?.build();
        _$failedField = 'files';
        _files?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Commit', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
