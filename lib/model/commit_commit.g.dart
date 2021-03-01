// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'commit_commit.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CommitCommit> _$commitCommitSerializer =
    new _$CommitCommitSerializer();

class _$CommitCommitSerializer implements StructuredSerializer<CommitCommit> {
  @override
  final Iterable<Type> types = const [CommitCommit, _$CommitCommit];
  @override
  final String wireName = 'CommitCommit';

  @override
  Iterable<Object> serialize(Serializers serializers, CommitCommit object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
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
            specifiedType: const FullType(GitUser)));
    }
    if (object.committer != null) {
      result
        ..add('committer')
        ..add(serializers.serialize(object.committer,
            specifiedType: const FullType(GitUser)));
    }
    if (object.message != null) {
      result
        ..add('message')
        ..add(serializers.serialize(object.message,
            specifiedType: const FullType(String)));
    }
    if (object.commentCount != null) {
      result
        ..add('comment_count')
        ..add(serializers.serialize(object.commentCount,
            specifiedType: const FullType(int)));
    }
    if (object.tree != null) {
      result
        ..add('tree')
        ..add(serializers.serialize(object.tree,
            specifiedType: const FullType(CommitCommitTree)));
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
  CommitCommit deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CommitCommitBuilder();

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
        case 'author':
          result.author.replace(serializers.deserialize(value,
              specifiedType: const FullType(GitUser)) as GitUser);
          break;
        case 'committer':
          result.committer.replace(serializers.deserialize(value,
              specifiedType: const FullType(GitUser)) as GitUser);
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'comment_count':
          result.commentCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'tree':
          result.tree.replace(serializers.deserialize(value,
                  specifiedType: const FullType(CommitCommitTree))
              as CommitCommitTree);
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

class _$CommitCommit extends CommitCommit {
  @override
  final String url;
  @override
  final GitUser author;
  @override
  final GitUser committer;
  @override
  final String message;
  @override
  final int commentCount;
  @override
  final CommitCommitTree tree;
  @override
  final Verification verification;

  factory _$CommitCommit([void Function(CommitCommitBuilder) updates]) =>
      (new CommitCommitBuilder()..update(updates)).build();

  _$CommitCommit._(
      {this.url,
      this.author,
      this.committer,
      this.message,
      this.commentCount,
      this.tree,
      this.verification})
      : super._();

  @override
  CommitCommit rebuild(void Function(CommitCommitBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CommitCommitBuilder toBuilder() => new CommitCommitBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CommitCommit &&
        url == other.url &&
        author == other.author &&
        committer == other.committer &&
        message == other.message &&
        commentCount == other.commentCount &&
        tree == other.tree &&
        verification == other.verification;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, url.hashCode), author.hashCode),
                        committer.hashCode),
                    message.hashCode),
                commentCount.hashCode),
            tree.hashCode),
        verification.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CommitCommit')
          ..add('url', url)
          ..add('author', author)
          ..add('committer', committer)
          ..add('message', message)
          ..add('commentCount', commentCount)
          ..add('tree', tree)
          ..add('verification', verification))
        .toString();
  }
}

class CommitCommitBuilder
    implements Builder<CommitCommit, CommitCommitBuilder> {
  _$CommitCommit _$v;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  GitUserBuilder _author;
  GitUserBuilder get author => _$this._author ??= new GitUserBuilder();
  set author(GitUserBuilder author) => _$this._author = author;

  GitUserBuilder _committer;
  GitUserBuilder get committer => _$this._committer ??= new GitUserBuilder();
  set committer(GitUserBuilder committer) => _$this._committer = committer;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  int _commentCount;
  int get commentCount => _$this._commentCount;
  set commentCount(int commentCount) => _$this._commentCount = commentCount;

  CommitCommitTreeBuilder _tree;
  CommitCommitTreeBuilder get tree =>
      _$this._tree ??= new CommitCommitTreeBuilder();
  set tree(CommitCommitTreeBuilder tree) => _$this._tree = tree;

  VerificationBuilder _verification;
  VerificationBuilder get verification =>
      _$this._verification ??= new VerificationBuilder();
  set verification(VerificationBuilder verification) =>
      _$this._verification = verification;

  CommitCommitBuilder() {
    CommitCommit._initializeBuilder(this);
  }

  CommitCommitBuilder get _$this {
    if (_$v != null) {
      _url = _$v.url;
      _author = _$v.author?.toBuilder();
      _committer = _$v.committer?.toBuilder();
      _message = _$v.message;
      _commentCount = _$v.commentCount;
      _tree = _$v.tree?.toBuilder();
      _verification = _$v.verification?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CommitCommit other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CommitCommit;
  }

  @override
  void update(void Function(CommitCommitBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CommitCommit build() {
    _$CommitCommit _$result;
    try {
      _$result = _$v ??
          new _$CommitCommit._(
              url: url,
              author: _author?.build(),
              committer: _committer?.build(),
              message: message,
              commentCount: commentCount,
              tree: _tree?.build(),
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
            'CommitCommit', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
