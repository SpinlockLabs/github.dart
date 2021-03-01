// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'file_commit_commit_tree.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FileCommitCommitTree> _$fileCommitCommitTreeSerializer =
    new _$FileCommitCommitTreeSerializer();

class _$FileCommitCommitTreeSerializer
    implements StructuredSerializer<FileCommitCommitTree> {
  @override
  final Iterable<Type> types = const [
    FileCommitCommitTree,
    _$FileCommitCommitTree
  ];
  @override
  final String wireName = 'FileCommitCommitTree';

  @override
  Iterable<Object> serialize(
      Serializers serializers, FileCommitCommitTree object,
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
    return result;
  }

  @override
  FileCommitCommitTree deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FileCommitCommitTreeBuilder();

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
      }
    }

    return result.build();
  }
}

class _$FileCommitCommitTree extends FileCommitCommitTree {
  @override
  final String url;
  @override
  final String sha;

  factory _$FileCommitCommitTree(
          [void Function(FileCommitCommitTreeBuilder) updates]) =>
      (new FileCommitCommitTreeBuilder()..update(updates)).build();

  _$FileCommitCommitTree._({this.url, this.sha}) : super._();

  @override
  FileCommitCommitTree rebuild(
          void Function(FileCommitCommitTreeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FileCommitCommitTreeBuilder toBuilder() =>
      new FileCommitCommitTreeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FileCommitCommitTree &&
        url == other.url &&
        sha == other.sha;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, url.hashCode), sha.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FileCommitCommitTree')
          ..add('url', url)
          ..add('sha', sha))
        .toString();
  }
}

class FileCommitCommitTreeBuilder
    implements Builder<FileCommitCommitTree, FileCommitCommitTreeBuilder> {
  _$FileCommitCommitTree _$v;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _sha;
  String get sha => _$this._sha;
  set sha(String sha) => _$this._sha = sha;

  FileCommitCommitTreeBuilder() {
    FileCommitCommitTree._initializeBuilder(this);
  }

  FileCommitCommitTreeBuilder get _$this {
    if (_$v != null) {
      _url = _$v.url;
      _sha = _$v.sha;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FileCommitCommitTree other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$FileCommitCommitTree;
  }

  @override
  void update(void Function(FileCommitCommitTreeBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$FileCommitCommitTree build() {
    final _$result = _$v ?? new _$FileCommitCommitTree._(url: url, sha: sha);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
