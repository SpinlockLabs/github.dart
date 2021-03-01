// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'file_commit.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FileCommit> _$fileCommitSerializer = new _$FileCommitSerializer();

class _$FileCommitSerializer implements StructuredSerializer<FileCommit> {
  @override
  final Iterable<Type> types = const [FileCommit, _$FileCommit];
  @override
  final String wireName = 'FileCommit';

  @override
  Iterable<Object> serialize(Serializers serializers, FileCommit object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.content != null) {
      result
        ..add('content')
        ..add(serializers.serialize(object.content,
            specifiedType: const FullType(FileCommitContent)));
    }
    if (object.commit != null) {
      result
        ..add('commit')
        ..add(serializers.serialize(object.commit,
            specifiedType: const FullType(FileCommitCommit)));
    }
    return result;
  }

  @override
  FileCommit deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FileCommitBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'content':
          result.content.replace(serializers.deserialize(value,
                  specifiedType: const FullType(FileCommitContent))
              as FileCommitContent);
          break;
        case 'commit':
          result.commit.replace(serializers.deserialize(value,
                  specifiedType: const FullType(FileCommitCommit))
              as FileCommitCommit);
          break;
      }
    }

    return result.build();
  }
}

class _$FileCommit extends FileCommit {
  @override
  final FileCommitContent content;
  @override
  final FileCommitCommit commit;

  factory _$FileCommit([void Function(FileCommitBuilder) updates]) =>
      (new FileCommitBuilder()..update(updates)).build();

  _$FileCommit._({this.content, this.commit}) : super._();

  @override
  FileCommit rebuild(void Function(FileCommitBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FileCommitBuilder toBuilder() => new FileCommitBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FileCommit &&
        content == other.content &&
        commit == other.commit;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, content.hashCode), commit.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FileCommit')
          ..add('content', content)
          ..add('commit', commit))
        .toString();
  }
}

class FileCommitBuilder implements Builder<FileCommit, FileCommitBuilder> {
  _$FileCommit _$v;

  FileCommitContentBuilder _content;
  FileCommitContentBuilder get content =>
      _$this._content ??= new FileCommitContentBuilder();
  set content(FileCommitContentBuilder content) => _$this._content = content;

  FileCommitCommitBuilder _commit;
  FileCommitCommitBuilder get commit =>
      _$this._commit ??= new FileCommitCommitBuilder();
  set commit(FileCommitCommitBuilder commit) => _$this._commit = commit;

  FileCommitBuilder() {
    FileCommit._initializeBuilder(this);
  }

  FileCommitBuilder get _$this {
    if (_$v != null) {
      _content = _$v.content?.toBuilder();
      _commit = _$v.commit?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FileCommit other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$FileCommit;
  }

  @override
  void update(void Function(FileCommitBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$FileCommit build() {
    _$FileCommit _$result;
    try {
      _$result = _$v ??
          new _$FileCommit._(
              content: _content?.build(), commit: _commit?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'content';
        _content?.build();
        _$failedField = 'commit';
        _commit?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'FileCommit', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
