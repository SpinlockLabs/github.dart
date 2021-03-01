// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'commit_search_result_item_commit.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CommitSearchResultItemCommit>
    _$commitSearchResultItemCommitSerializer =
    new _$CommitSearchResultItemCommitSerializer();

class _$CommitSearchResultItemCommitSerializer
    implements StructuredSerializer<CommitSearchResultItemCommit> {
  @override
  final Iterable<Type> types = const [
    CommitSearchResultItemCommit,
    _$CommitSearchResultItemCommit
  ];
  @override
  final String wireName = 'CommitSearchResultItemCommit';

  @override
  Iterable<Object> serialize(
      Serializers serializers, CommitSearchResultItemCommit object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.author != null) {
      result
        ..add('author')
        ..add(serializers.serialize(object.author,
            specifiedType: const FullType(CommitSearchResultItemCommitAuthor)));
    }
    if (object.committer != null) {
      result
        ..add('committer')
        ..add(serializers.serialize(object.committer,
            specifiedType: const FullType(GitUser)));
    }
    if (object.commentCount != null) {
      result
        ..add('comment_count')
        ..add(serializers.serialize(object.commentCount,
            specifiedType: const FullType(int)));
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
            specifiedType: const FullType(ShortBranchCommit)));
    }
    if (object.url != null) {
      result
        ..add('url')
        ..add(serializers.serialize(object.url,
            specifiedType: const FullType(String)));
    }
    if (object.verification != null) {
      result
        ..add('verification')
        ..add(serializers.serialize(object.verification,
            specifiedType: const FullType(Verification)));
    }
    return result;
  }

  @override
  CommitSearchResultItemCommit deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CommitSearchResultItemCommitBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'author':
          result.author.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(CommitSearchResultItemCommitAuthor))
              as CommitSearchResultItemCommitAuthor);
          break;
        case 'committer':
          result.committer.replace(serializers.deserialize(value,
              specifiedType: const FullType(GitUser)) as GitUser);
          break;
        case 'comment_count':
          result.commentCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'tree':
          result.tree.replace(serializers.deserialize(value,
                  specifiedType: const FullType(ShortBranchCommit))
              as ShortBranchCommit);
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'verification':
          result.verification.replace(serializers.deserialize(value,
              specifiedType: const FullType(Verification)) as Verification);
          break;
      }
    }

    return result.build();
  }
}

class _$CommitSearchResultItemCommit extends CommitSearchResultItemCommit {
  @override
  final CommitSearchResultItemCommitAuthor author;
  @override
  final GitUser committer;
  @override
  final int commentCount;
  @override
  final String message;
  @override
  final ShortBranchCommit tree;
  @override
  final String url;
  @override
  final Verification verification;

  factory _$CommitSearchResultItemCommit(
          [void Function(CommitSearchResultItemCommitBuilder) updates]) =>
      (new CommitSearchResultItemCommitBuilder()..update(updates)).build();

  _$CommitSearchResultItemCommit._(
      {this.author,
      this.committer,
      this.commentCount,
      this.message,
      this.tree,
      this.url,
      this.verification})
      : super._();

  @override
  CommitSearchResultItemCommit rebuild(
          void Function(CommitSearchResultItemCommitBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CommitSearchResultItemCommitBuilder toBuilder() =>
      new CommitSearchResultItemCommitBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CommitSearchResultItemCommit &&
        author == other.author &&
        committer == other.committer &&
        commentCount == other.commentCount &&
        message == other.message &&
        tree == other.tree &&
        url == other.url &&
        verification == other.verification;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, author.hashCode), committer.hashCode),
                        commentCount.hashCode),
                    message.hashCode),
                tree.hashCode),
            url.hashCode),
        verification.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CommitSearchResultItemCommit')
          ..add('author', author)
          ..add('committer', committer)
          ..add('commentCount', commentCount)
          ..add('message', message)
          ..add('tree', tree)
          ..add('url', url)
          ..add('verification', verification))
        .toString();
  }
}

class CommitSearchResultItemCommitBuilder
    implements
        Builder<CommitSearchResultItemCommit,
            CommitSearchResultItemCommitBuilder> {
  _$CommitSearchResultItemCommit _$v;

  CommitSearchResultItemCommitAuthorBuilder _author;
  CommitSearchResultItemCommitAuthorBuilder get author =>
      _$this._author ??= new CommitSearchResultItemCommitAuthorBuilder();
  set author(CommitSearchResultItemCommitAuthorBuilder author) =>
      _$this._author = author;

  GitUserBuilder _committer;
  GitUserBuilder get committer => _$this._committer ??= new GitUserBuilder();
  set committer(GitUserBuilder committer) => _$this._committer = committer;

  int _commentCount;
  int get commentCount => _$this._commentCount;
  set commentCount(int commentCount) => _$this._commentCount = commentCount;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  ShortBranchCommitBuilder _tree;
  ShortBranchCommitBuilder get tree =>
      _$this._tree ??= new ShortBranchCommitBuilder();
  set tree(ShortBranchCommitBuilder tree) => _$this._tree = tree;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  VerificationBuilder _verification;
  VerificationBuilder get verification =>
      _$this._verification ??= new VerificationBuilder();
  set verification(VerificationBuilder verification) =>
      _$this._verification = verification;

  CommitSearchResultItemCommitBuilder() {
    CommitSearchResultItemCommit._initializeBuilder(this);
  }

  CommitSearchResultItemCommitBuilder get _$this {
    if (_$v != null) {
      _author = _$v.author?.toBuilder();
      _committer = _$v.committer?.toBuilder();
      _commentCount = _$v.commentCount;
      _message = _$v.message;
      _tree = _$v.tree?.toBuilder();
      _url = _$v.url;
      _verification = _$v.verification?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CommitSearchResultItemCommit other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CommitSearchResultItemCommit;
  }

  @override
  void update(void Function(CommitSearchResultItemCommitBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CommitSearchResultItemCommit build() {
    _$CommitSearchResultItemCommit _$result;
    try {
      _$result = _$v ??
          new _$CommitSearchResultItemCommit._(
              author: _author?.build(),
              committer: _committer?.build(),
              commentCount: commentCount,
              message: message,
              tree: _tree?.build(),
              url: url,
              verification: _verification?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'author';
        _author?.build();
        _$failedField = 'committer';
        _committer?.build();

        _$failedField = 'tree';
        _tree?.build();

        _$failedField = 'verification';
        _verification?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CommitSearchResultItemCommit', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
