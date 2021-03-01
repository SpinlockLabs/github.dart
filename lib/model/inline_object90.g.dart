// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object90.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineObject90> _$inlineObject90Serializer =
    new _$InlineObject90Serializer();

class _$InlineObject90Serializer
    implements StructuredSerializer<InlineObject90> {
  @override
  final Iterable<Type> types = const [InlineObject90, _$InlineObject90];
  @override
  final String wireName = 'InlineObject90';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject90 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.message != null) {
      result
        ..add('message')
        ..add(serializers.serialize(object.message,
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
                const FullType(ReposOwnerRepoContentsPathCommitter1)));
    }
    if (object.author != null) {
      result
        ..add('author')
        ..add(serializers.serialize(object.author,
            specifiedType: const FullType(ReposOwnerRepoContentsPathAuthor1)));
    }
    return result;
  }

  @override
  InlineObject90 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject90Builder();

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
                      const FullType(ReposOwnerRepoContentsPathCommitter1))
              as ReposOwnerRepoContentsPathCommitter1);
          break;
        case 'author':
          result.author.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(ReposOwnerRepoContentsPathAuthor1))
              as ReposOwnerRepoContentsPathAuthor1);
          break;
      }
    }

    return result.build();
  }
}

class _$InlineObject90 extends InlineObject90 {
  @override
  final String message;
  @override
  final String sha;
  @override
  final String branch;
  @override
  final ReposOwnerRepoContentsPathCommitter1 committer;
  @override
  final ReposOwnerRepoContentsPathAuthor1 author;

  factory _$InlineObject90([void Function(InlineObject90Builder) updates]) =>
      (new InlineObject90Builder()..update(updates)).build();

  _$InlineObject90._(
      {this.message, this.sha, this.branch, this.committer, this.author})
      : super._();

  @override
  InlineObject90 rebuild(void Function(InlineObject90Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject90Builder toBuilder() =>
      new InlineObject90Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject90 &&
        message == other.message &&
        sha == other.sha &&
        branch == other.branch &&
        committer == other.committer &&
        author == other.author;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, message.hashCode), sha.hashCode), branch.hashCode),
            committer.hashCode),
        author.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject90')
          ..add('message', message)
          ..add('sha', sha)
          ..add('branch', branch)
          ..add('committer', committer)
          ..add('author', author))
        .toString();
  }
}

class InlineObject90Builder
    implements Builder<InlineObject90, InlineObject90Builder> {
  _$InlineObject90 _$v;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  String _sha;
  String get sha => _$this._sha;
  set sha(String sha) => _$this._sha = sha;

  String _branch;
  String get branch => _$this._branch;
  set branch(String branch) => _$this._branch = branch;

  ReposOwnerRepoContentsPathCommitter1Builder _committer;
  ReposOwnerRepoContentsPathCommitter1Builder get committer =>
      _$this._committer ??= new ReposOwnerRepoContentsPathCommitter1Builder();
  set committer(ReposOwnerRepoContentsPathCommitter1Builder committer) =>
      _$this._committer = committer;

  ReposOwnerRepoContentsPathAuthor1Builder _author;
  ReposOwnerRepoContentsPathAuthor1Builder get author =>
      _$this._author ??= new ReposOwnerRepoContentsPathAuthor1Builder();
  set author(ReposOwnerRepoContentsPathAuthor1Builder author) =>
      _$this._author = author;

  InlineObject90Builder() {
    InlineObject90._initializeBuilder(this);
  }

  InlineObject90Builder get _$this {
    if (_$v != null) {
      _message = _$v.message;
      _sha = _$v.sha;
      _branch = _$v.branch;
      _committer = _$v.committer?.toBuilder();
      _author = _$v.author?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject90 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject90;
  }

  @override
  void update(void Function(InlineObject90Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject90 build() {
    _$InlineObject90 _$result;
    try {
      _$result = _$v ??
          new _$InlineObject90._(
              message: message,
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
            'InlineObject90', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
