// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object97.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineObject97> _$inlineObject97Serializer =
    new _$InlineObject97Serializer();

class _$InlineObject97Serializer
    implements StructuredSerializer<InlineObject97> {
  @override
  final Iterable<Type> types = const [InlineObject97, _$InlineObject97];
  @override
  final String wireName = 'InlineObject97';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject97 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
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
            specifiedType: const FullType(String)));
    }
    if (object.parents != null) {
      result
        ..add('parents')
        ..add(serializers.serialize(object.parents,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.author != null) {
      result
        ..add('author')
        ..add(serializers.serialize(object.author,
            specifiedType: const FullType(ReposOwnerRepoGitCommitsAuthor)));
    }
    if (object.committer != null) {
      result
        ..add('committer')
        ..add(serializers.serialize(object.committer,
            specifiedType: const FullType(ReposOwnerRepoGitCommitsCommitter)));
    }
    if (object.signature != null) {
      result
        ..add('signature')
        ..add(serializers.serialize(object.signature,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  InlineObject97 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject97Builder();

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
        case 'tree':
          result.tree = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'parents':
          result.parents.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'author':
          result.author.replace(serializers.deserialize(value,
                  specifiedType: const FullType(ReposOwnerRepoGitCommitsAuthor))
              as ReposOwnerRepoGitCommitsAuthor);
          break;
        case 'committer':
          result.committer.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(ReposOwnerRepoGitCommitsCommitter))
              as ReposOwnerRepoGitCommitsCommitter);
          break;
        case 'signature':
          result.signature = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$InlineObject97 extends InlineObject97 {
  @override
  final String message;
  @override
  final String tree;
  @override
  final BuiltList<String> parents;
  @override
  final ReposOwnerRepoGitCommitsAuthor author;
  @override
  final ReposOwnerRepoGitCommitsCommitter committer;
  @override
  final String signature;

  factory _$InlineObject97([void Function(InlineObject97Builder) updates]) =>
      (new InlineObject97Builder()..update(updates)).build();

  _$InlineObject97._(
      {this.message,
      this.tree,
      this.parents,
      this.author,
      this.committer,
      this.signature})
      : super._();

  @override
  InlineObject97 rebuild(void Function(InlineObject97Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject97Builder toBuilder() =>
      new InlineObject97Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject97 &&
        message == other.message &&
        tree == other.tree &&
        parents == other.parents &&
        author == other.author &&
        committer == other.committer &&
        signature == other.signature;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, message.hashCode), tree.hashCode),
                    parents.hashCode),
                author.hashCode),
            committer.hashCode),
        signature.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject97')
          ..add('message', message)
          ..add('tree', tree)
          ..add('parents', parents)
          ..add('author', author)
          ..add('committer', committer)
          ..add('signature', signature))
        .toString();
  }
}

class InlineObject97Builder
    implements Builder<InlineObject97, InlineObject97Builder> {
  _$InlineObject97 _$v;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  String _tree;
  String get tree => _$this._tree;
  set tree(String tree) => _$this._tree = tree;

  ListBuilder<String> _parents;
  ListBuilder<String> get parents =>
      _$this._parents ??= new ListBuilder<String>();
  set parents(ListBuilder<String> parents) => _$this._parents = parents;

  ReposOwnerRepoGitCommitsAuthorBuilder _author;
  ReposOwnerRepoGitCommitsAuthorBuilder get author =>
      _$this._author ??= new ReposOwnerRepoGitCommitsAuthorBuilder();
  set author(ReposOwnerRepoGitCommitsAuthorBuilder author) =>
      _$this._author = author;

  ReposOwnerRepoGitCommitsCommitterBuilder _committer;
  ReposOwnerRepoGitCommitsCommitterBuilder get committer =>
      _$this._committer ??= new ReposOwnerRepoGitCommitsCommitterBuilder();
  set committer(ReposOwnerRepoGitCommitsCommitterBuilder committer) =>
      _$this._committer = committer;

  String _signature;
  String get signature => _$this._signature;
  set signature(String signature) => _$this._signature = signature;

  InlineObject97Builder() {
    InlineObject97._initializeBuilder(this);
  }

  InlineObject97Builder get _$this {
    if (_$v != null) {
      _message = _$v.message;
      _tree = _$v.tree;
      _parents = _$v.parents?.toBuilder();
      _author = _$v.author?.toBuilder();
      _committer = _$v.committer?.toBuilder();
      _signature = _$v.signature;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject97 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject97;
  }

  @override
  void update(void Function(InlineObject97Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject97 build() {
    _$InlineObject97 _$result;
    try {
      _$result = _$v ??
          new _$InlineObject97._(
              message: message,
              tree: tree,
              parents: _parents?.build(),
              author: _author?.build(),
              committer: _committer?.build(),
              signature: signature);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'parents';
        _parents?.build();
        _$failedField = 'author';
        _author?.build();
        _$failedField = 'committer';
        _committer?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'InlineObject97', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
