// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'file_commit_commit.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FileCommitCommit> _$fileCommitCommitSerializer =
    new _$FileCommitCommitSerializer();

class _$FileCommitCommitSerializer
    implements StructuredSerializer<FileCommitCommit> {
  @override
  final Iterable<Type> types = const [FileCommitCommit, _$FileCommitCommit];
  @override
  final String wireName = 'FileCommitCommit';

  @override
  Iterable<Object> serialize(Serializers serializers, FileCommitCommit object,
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
    if (object.htmlUrl != null) {
      result
        ..add('html_url')
        ..add(serializers.serialize(object.htmlUrl,
            specifiedType: const FullType(String)));
    }
    if (object.author != null) {
      result
        ..add('author')
        ..add(serializers.serialize(object.author,
            specifiedType: const FullType(FileCommitCommitAuthor)));
    }
    if (object.committer != null) {
      result
        ..add('committer')
        ..add(serializers.serialize(object.committer,
            specifiedType: const FullType(FileCommitCommitAuthor)));
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
            specifiedType: const FullType(FileCommitCommitTree)));
    }
    if (object.parents != null) {
      result
        ..add('parents')
        ..add(serializers.serialize(object.parents,
            specifiedType: const FullType(
                BuiltList, const [const FullType(FileCommitCommitParents)])));
    }
    if (object.verification != null) {
      result
        ..add('verification')
        ..add(serializers.serialize(object.verification,
            specifiedType: const FullType(FileCommitCommitVerification)));
    }
    return result;
  }

  @override
  FileCommitCommit deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FileCommitCommitBuilder();

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
        case 'html_url':
          result.htmlUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'author':
          result.author.replace(serializers.deserialize(value,
                  specifiedType: const FullType(FileCommitCommitAuthor))
              as FileCommitCommitAuthor);
          break;
        case 'committer':
          result.committer.replace(serializers.deserialize(value,
                  specifiedType: const FullType(FileCommitCommitAuthor))
              as FileCommitCommitAuthor);
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'tree':
          result.tree.replace(serializers.deserialize(value,
                  specifiedType: const FullType(FileCommitCommitTree))
              as FileCommitCommitTree);
          break;
        case 'parents':
          result.parents.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(FileCommitCommitParents)
              ])) as BuiltList<Object>);
          break;
        case 'verification':
          result.verification.replace(serializers.deserialize(value,
                  specifiedType: const FullType(FileCommitCommitVerification))
              as FileCommitCommitVerification);
          break;
      }
    }

    return result.build();
  }
}

class _$FileCommitCommit extends FileCommitCommit {
  @override
  final String sha;
  @override
  final String nodeId;
  @override
  final String url;
  @override
  final String htmlUrl;
  @override
  final FileCommitCommitAuthor author;
  @override
  final FileCommitCommitAuthor committer;
  @override
  final String message;
  @override
  final FileCommitCommitTree tree;
  @override
  final BuiltList<FileCommitCommitParents> parents;
  @override
  final FileCommitCommitVerification verification;

  factory _$FileCommitCommit(
          [void Function(FileCommitCommitBuilder) updates]) =>
      (new FileCommitCommitBuilder()..update(updates)).build();

  _$FileCommitCommit._(
      {this.sha,
      this.nodeId,
      this.url,
      this.htmlUrl,
      this.author,
      this.committer,
      this.message,
      this.tree,
      this.parents,
      this.verification})
      : super._();

  @override
  FileCommitCommit rebuild(void Function(FileCommitCommitBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FileCommitCommitBuilder toBuilder() =>
      new FileCommitCommitBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FileCommitCommit &&
        sha == other.sha &&
        nodeId == other.nodeId &&
        url == other.url &&
        htmlUrl == other.htmlUrl &&
        author == other.author &&
        committer == other.committer &&
        message == other.message &&
        tree == other.tree &&
        parents == other.parents &&
        verification == other.verification;
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
                                htmlUrl.hashCode),
                            author.hashCode),
                        committer.hashCode),
                    message.hashCode),
                tree.hashCode),
            parents.hashCode),
        verification.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FileCommitCommit')
          ..add('sha', sha)
          ..add('nodeId', nodeId)
          ..add('url', url)
          ..add('htmlUrl', htmlUrl)
          ..add('author', author)
          ..add('committer', committer)
          ..add('message', message)
          ..add('tree', tree)
          ..add('parents', parents)
          ..add('verification', verification))
        .toString();
  }
}

class FileCommitCommitBuilder
    implements Builder<FileCommitCommit, FileCommitCommitBuilder> {
  _$FileCommitCommit _$v;

  String _sha;
  String get sha => _$this._sha;
  set sha(String sha) => _$this._sha = sha;

  String _nodeId;
  String get nodeId => _$this._nodeId;
  set nodeId(String nodeId) => _$this._nodeId = nodeId;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _htmlUrl;
  String get htmlUrl => _$this._htmlUrl;
  set htmlUrl(String htmlUrl) => _$this._htmlUrl = htmlUrl;

  FileCommitCommitAuthorBuilder _author;
  FileCommitCommitAuthorBuilder get author =>
      _$this._author ??= new FileCommitCommitAuthorBuilder();
  set author(FileCommitCommitAuthorBuilder author) => _$this._author = author;

  FileCommitCommitAuthorBuilder _committer;
  FileCommitCommitAuthorBuilder get committer =>
      _$this._committer ??= new FileCommitCommitAuthorBuilder();
  set committer(FileCommitCommitAuthorBuilder committer) =>
      _$this._committer = committer;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  FileCommitCommitTreeBuilder _tree;
  FileCommitCommitTreeBuilder get tree =>
      _$this._tree ??= new FileCommitCommitTreeBuilder();
  set tree(FileCommitCommitTreeBuilder tree) => _$this._tree = tree;

  ListBuilder<FileCommitCommitParents> _parents;
  ListBuilder<FileCommitCommitParents> get parents =>
      _$this._parents ??= new ListBuilder<FileCommitCommitParents>();
  set parents(ListBuilder<FileCommitCommitParents> parents) =>
      _$this._parents = parents;

  FileCommitCommitVerificationBuilder _verification;
  FileCommitCommitVerificationBuilder get verification =>
      _$this._verification ??= new FileCommitCommitVerificationBuilder();
  set verification(FileCommitCommitVerificationBuilder verification) =>
      _$this._verification = verification;

  FileCommitCommitBuilder() {
    FileCommitCommit._initializeBuilder(this);
  }

  FileCommitCommitBuilder get _$this {
    if (_$v != null) {
      _sha = _$v.sha;
      _nodeId = _$v.nodeId;
      _url = _$v.url;
      _htmlUrl = _$v.htmlUrl;
      _author = _$v.author?.toBuilder();
      _committer = _$v.committer?.toBuilder();
      _message = _$v.message;
      _tree = _$v.tree?.toBuilder();
      _parents = _$v.parents?.toBuilder();
      _verification = _$v.verification?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FileCommitCommit other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$FileCommitCommit;
  }

  @override
  void update(void Function(FileCommitCommitBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$FileCommitCommit build() {
    _$FileCommitCommit _$result;
    try {
      _$result = _$v ??
          new _$FileCommitCommit._(
              sha: sha,
              nodeId: nodeId,
              url: url,
              htmlUrl: htmlUrl,
              author: _author?.build(),
              committer: _committer?.build(),
              message: message,
              tree: _tree?.build(),
              parents: _parents?.build(),
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
        _$failedField = 'parents';
        _parents?.build();
        _$failedField = 'verification';
        _verification?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'FileCommitCommit', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
