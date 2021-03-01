// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'short_branch_commit.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ShortBranchCommit> _$shortBranchCommitSerializer =
    new _$ShortBranchCommitSerializer();

class _$ShortBranchCommitSerializer
    implements StructuredSerializer<ShortBranchCommit> {
  @override
  final Iterable<Type> types = const [ShortBranchCommit, _$ShortBranchCommit];
  @override
  final String wireName = 'ShortBranchCommit';

  @override
  Iterable<Object> serialize(Serializers serializers, ShortBranchCommit object,
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
  ShortBranchCommit deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ShortBranchCommitBuilder();

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

class _$ShortBranchCommit extends ShortBranchCommit {
  @override
  final String sha;
  @override
  final String url;

  factory _$ShortBranchCommit(
          [void Function(ShortBranchCommitBuilder) updates]) =>
      (new ShortBranchCommitBuilder()..update(updates)).build();

  _$ShortBranchCommit._({this.sha, this.url}) : super._();

  @override
  ShortBranchCommit rebuild(void Function(ShortBranchCommitBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ShortBranchCommitBuilder toBuilder() =>
      new ShortBranchCommitBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ShortBranchCommit && sha == other.sha && url == other.url;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, sha.hashCode), url.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ShortBranchCommit')
          ..add('sha', sha)
          ..add('url', url))
        .toString();
  }
}

class ShortBranchCommitBuilder
    implements Builder<ShortBranchCommit, ShortBranchCommitBuilder> {
  _$ShortBranchCommit _$v;

  String _sha;
  String get sha => _$this._sha;
  set sha(String sha) => _$this._sha = sha;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  ShortBranchCommitBuilder() {
    ShortBranchCommit._initializeBuilder(this);
  }

  ShortBranchCommitBuilder get _$this {
    if (_$v != null) {
      _sha = _$v.sha;
      _url = _$v.url;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ShortBranchCommit other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ShortBranchCommit;
  }

  @override
  void update(void Function(ShortBranchCommitBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ShortBranchCommit build() {
    final _$result = _$v ?? new _$ShortBranchCommit._(sha: sha, url: url);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
