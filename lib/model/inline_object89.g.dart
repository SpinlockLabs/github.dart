// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object89.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineObject89> _$inlineObject89Serializer =
    new _$InlineObject89Serializer();

class _$InlineObject89Serializer
    implements StructuredSerializer<InlineObject89> {
  @override
  final Iterable<Type> types = const [InlineObject89, _$InlineObject89];
  @override
  final String wireName = 'InlineObject89';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject89 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.message != null) {
      result
        ..add('message')
        ..add(serializers.serialize(object.message,
            specifiedType: const FullType(String)));
    }
    if (object.content != null) {
      result
        ..add('content')
        ..add(serializers.serialize(object.content,
            specifiedType: const FullType(String)));
    }
    if (object.sha != null) {
      result
        ..add('sha')
        ..add(serializers.serialize(object.sha,
            specifiedType: const FullType(String)));
    }
    if (object.branch != null) {
      result
        ..add('branch')
        ..add(serializers.serialize(object.branch,
            specifiedType: const FullType(String)));
    }
    if (object.committer != null) {
      result
        ..add('committer')
        ..add(serializers.serialize(object.committer,
            specifiedType:
                const FullType(ReposOwnerRepoContentsPathCommitter)));
    }
    if (object.author != null) {
      result
        ..add('author')
        ..add(serializers.serialize(object.author,
            specifiedType: const FullType(ReposOwnerRepoContentsPathAuthor)));
    }
    return result;
  }

  @override
  InlineObject89 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject89Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'content':
          result.content = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'sha':
          result.sha = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'branch':
          result.branch = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'committer':
          result.committer.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(ReposOwnerRepoContentsPathCommitter))
              as ReposOwnerRepoContentsPathCommitter);
          break;
        case 'author':
          result.author.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(ReposOwnerRepoContentsPathAuthor))
              as ReposOwnerRepoContentsPathAuthor);
          break;
      }
    }

    return result.build();
  }
}

class _$InlineObject89 extends InlineObject89 {
  @override
  final String message;
  @override
  final String content;
  @override
  final String sha;
  @override
  final String branch;
  @override
  final ReposOwnerRepoContentsPathCommitter committer;
  @override
  final ReposOwnerRepoContentsPathAuthor author;

  factory _$InlineObject89([void Function(InlineObject89Builder) updates]) =>
      (new InlineObject89Builder()..update(updates)).build();

  _$InlineObject89._(
      {this.message,
      this.content,
      this.sha,
      this.branch,
      this.committer,
      this.author})
      : super._();

  @override
  InlineObject89 rebuild(void Function(InlineObject89Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject89Builder toBuilder() =>
      new InlineObject89Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject89 &&
        message == other.message &&
        content == other.content &&
        sha == other.sha &&
        branch == other.branch &&
        committer == other.committer &&
        author == other.author;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, message.hashCode), content.hashCode),
                    sha.hashCode),
                branch.hashCode),
            committer.hashCode),
        author.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject89')
          ..add('message', message)
          ..add('content', content)
          ..add('sha', sha)
          ..add('branch', branch)
          ..add('committer', committer)
          ..add('author', author))
        .toString();
  }
}

class InlineObject89Builder
    implements Builder<InlineObject89, InlineObject89Builder> {
  _$InlineObject89 _$v;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  String _content;
  String get content => _$this._content;
  set content(String content) => _$this._content = content;

  String _sha;
  String get sha => _$this._sha;
  set sha(String sha) => _$this._sha = sha;

  String _branch;
  String get branch => _$this._branch;
  set branch(String branch) => _$this._branch = branch;

  ReposOwnerRepoContentsPathCommitterBuilder _committer;
  ReposOwnerRepoContentsPathCommitterBuilder get committer =>
      _$this._committer ??= new ReposOwnerRepoContentsPathCommitterBuilder();
  set committer(ReposOwnerRepoContentsPathCommitterBuilder committer) =>
      _$this._committer = committer;

  ReposOwnerRepoContentsPathAuthorBuilder _author;
  ReposOwnerRepoContentsPathAuthorBuilder get author =>
      _$this._author ??= new ReposOwnerRepoContentsPathAuthorBuilder();
  set author(ReposOwnerRepoContentsPathAuthorBuilder author) =>
      _$this._author = author;

  InlineObject89Builder() {
    InlineObject89._initializeBuilder(this);
  }

  InlineObject89Builder get _$this {
    if (_$v != null) {
      _message = _$v.message;
      _content = _$v.content;
      _sha = _$v.sha;
      _branch = _$v.branch;
      _committer = _$v.committer?.toBuilder();
      _author = _$v.author?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject89 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject89;
  }

  @override
  void update(void Function(InlineObject89Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject89 build() {
    _$InlineObject89 _$result;
    try {
      _$result = _$v ??
          new _$InlineObject89._(
              message: message,
              content: content,
              sha: sha,
              branch: branch,
              committer: _committer?.build(),
              author: _author?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'committer';
        _committer?.build();
        _$failedField = 'author';
        _author?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'InlineObject89', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
