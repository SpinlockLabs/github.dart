// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'commit_commit_tree.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CommitCommitTree> _$commitCommitTreeSerializer =
    new _$CommitCommitTreeSerializer();

class _$CommitCommitTreeSerializer
    implements StructuredSerializer<CommitCommitTree> {
  @override
  final Iterable<Type> types = const [CommitCommitTree, _$CommitCommitTree];
  @override
  final String wireName = 'CommitCommitTree';

  @override
  Iterable<Object> serialize(Serializers serializers, CommitCommitTree object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.sha != null) {
      result
        ..add('sha')
        ..add(serializers.serialize(object.sha,
            specifiedType: const FullType(String)));
    }
    if (object.url != null) {
      result
        ..add('url')
        ..add(serializers.serialize(object.url,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  CommitCommitTree deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CommitCommitTreeBuilder();

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
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$CommitCommitTree extends CommitCommitTree {
  @override
  final String sha;
  @override
  final String url;

  factory _$CommitCommitTree(
          [void Function(CommitCommitTreeBuilder) updates]) =>
      (new CommitCommitTreeBuilder()..update(updates)).build();

  _$CommitCommitTree._({this.sha, this.url}) : super._();

  @override
  CommitCommitTree rebuild(void Function(CommitCommitTreeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CommitCommitTreeBuilder toBuilder() =>
      new CommitCommitTreeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CommitCommitTree && sha == other.sha && url == other.url;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, sha.hashCode), url.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CommitCommitTree')
          ..add('sha', sha)
          ..add('url', url))
        .toString();
  }
}

class CommitCommitTreeBuilder
    implements Builder<CommitCommitTree, CommitCommitTreeBuilder> {
  _$CommitCommitTree _$v;

  String _sha;
  String get sha => _$this._sha;
  set sha(String sha) => _$this._sha = sha;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  CommitCommitTreeBuilder() {
    CommitCommitTree._initializeBuilder(this);
  }

  CommitCommitTreeBuilder get _$this {
    if (_$v != null) {
      _sha = _$v.sha;
      _url = _$v.url;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CommitCommitTree other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CommitCommitTree;
  }

  @override
  void update(void Function(CommitCommitTreeBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CommitCommitTree build() {
    final _$result = _$v ?? new _$CommitCommitTree._(sha: sha, url: url);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
