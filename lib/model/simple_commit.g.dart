// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'simple_commit.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SimpleCommit> _$simpleCommitSerializer =
    new _$SimpleCommitSerializer();

class _$SimpleCommitSerializer implements StructuredSerializer<SimpleCommit> {
  @override
  final Iterable<Type> types = const [SimpleCommit, _$SimpleCommit];
  @override
  final String wireName = 'SimpleCommit';

  @override
  Iterable<Object> serialize(Serializers serializers, SimpleCommit object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(String)));
    }
    if (object.treeId != null) {
      result
        ..add('tree_id')
        ..add(serializers.serialize(object.treeId,
            specifiedType: const FullType(String)));
    }
    if (object.message != null) {
      result
        ..add('message')
        ..add(serializers.serialize(object.message,
            specifiedType: const FullType(String)));
    }
    if (object.timestamp != null) {
      result
        ..add('timestamp')
        ..add(serializers.serialize(object.timestamp,
            specifiedType: const FullType(DateTime)));
    }
    if (object.author != null) {
      result
        ..add('author')
        ..add(serializers.serialize(object.author,
            specifiedType: const FullType(SimpleCommitAuthor)));
    }
    if (object.committer != null) {
      result
        ..add('committer')
        ..add(serializers.serialize(object.committer,
            specifiedType: const FullType(SimpleCommitAuthor)));
    }
    return result;
  }

  @override
  SimpleCommit deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SimpleCommitBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'tree_id':
          result.treeId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'timestamp':
          result.timestamp = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'author':
          result.author.replace(serializers.deserialize(value,
                  specifiedType: const FullType(SimpleCommitAuthor))
              as SimpleCommitAuthor);
          break;
        case 'committer':
          result.committer.replace(serializers.deserialize(value,
                  specifiedType: const FullType(SimpleCommitAuthor))
              as SimpleCommitAuthor);
          break;
      }
    }

    return result.build();
  }
}

class _$SimpleCommit extends SimpleCommit {
  @override
  final String id;
  @override
  final String treeId;
  @override
  final String message;
  @override
  final DateTime timestamp;
  @override
  final SimpleCommitAuthor author;
  @override
  final SimpleCommitAuthor committer;

  factory _$SimpleCommit([void Function(SimpleCommitBuilder) updates]) =>
      (new SimpleCommitBuilder()..update(updates)).build();

  _$SimpleCommit._(
      {this.id,
      this.treeId,
      this.message,
      this.timestamp,
      this.author,
      this.committer})
      : super._();

  @override
  SimpleCommit rebuild(void Function(SimpleCommitBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SimpleCommitBuilder toBuilder() => new SimpleCommitBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SimpleCommit &&
        id == other.id &&
        treeId == other.treeId &&
        message == other.message &&
        timestamp == other.timestamp &&
        author == other.author &&
        committer == other.committer;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, id.hashCode), treeId.hashCode),
                    message.hashCode),
                timestamp.hashCode),
            author.hashCode),
        committer.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SimpleCommit')
          ..add('id', id)
          ..add('treeId', treeId)
          ..add('message', message)
          ..add('timestamp', timestamp)
          ..add('author', author)
          ..add('committer', committer))
        .toString();
  }
}

class SimpleCommitBuilder
    implements Builder<SimpleCommit, SimpleCommitBuilder> {
  _$SimpleCommit _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _treeId;
  String get treeId => _$this._treeId;
  set treeId(String treeId) => _$this._treeId = treeId;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  DateTime _timestamp;
  DateTime get timestamp => _$this._timestamp;
  set timestamp(DateTime timestamp) => _$this._timestamp = timestamp;

  SimpleCommitAuthorBuilder _author;
  SimpleCommitAuthorBuilder get author =>
      _$this._author ??= new SimpleCommitAuthorBuilder();
  set author(SimpleCommitAuthorBuilder author) => _$this._author = author;

  SimpleCommitAuthorBuilder _committer;
  SimpleCommitAuthorBuilder get committer =>
      _$this._committer ??= new SimpleCommitAuthorBuilder();
  set committer(SimpleCommitAuthorBuilder committer) =>
      _$this._committer = committer;

  SimpleCommitBuilder() {
    SimpleCommit._initializeBuilder(this);
  }

  SimpleCommitBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _treeId = _$v.treeId;
      _message = _$v.message;
      _timestamp = _$v.timestamp;
      _author = _$v.author?.toBuilder();
      _committer = _$v.committer?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SimpleCommit other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SimpleCommit;
  }

  @override
  void update(void Function(SimpleCommitBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SimpleCommit build() {
    _$SimpleCommit _$result;
    try {
      _$result = _$v ??
          new _$SimpleCommit._(
              id: id,
              treeId: treeId,
              message: message,
              timestamp: timestamp,
              author: _author?.build(),
              committer: _committer?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'author';
        _author?.build();
        _$failedField = 'committer';
        _committer?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SimpleCommit', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
