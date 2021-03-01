// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'branch_short_commit.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BranchShortCommit> _$branchShortCommitSerializer =
    new _$BranchShortCommitSerializer();

class _$BranchShortCommitSerializer
    implements StructuredSerializer<BranchShortCommit> {
  @override
  final Iterable<Type> types = const [BranchShortCommit, _$BranchShortCommit];
  @override
  final String wireName = 'BranchShortCommit';

  @override
  Iterable<Object> serialize(Serializers serializers, BranchShortCommit object,
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
  BranchShortCommit deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BranchShortCommitBuilder();

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

class _$BranchShortCommit extends BranchShortCommit {
  @override
  final String sha;
  @override
  final String url;

  factory _$BranchShortCommit(
          [void Function(BranchShortCommitBuilder) updates]) =>
      (new BranchShortCommitBuilder()..update(updates)).build();

  _$BranchShortCommit._({this.sha, this.url}) : super._();

  @override
  BranchShortCommit rebuild(void Function(BranchShortCommitBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BranchShortCommitBuilder toBuilder() =>
      new BranchShortCommitBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BranchShortCommit && sha == other.sha && url == other.url;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, sha.hashCode), url.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BranchShortCommit')
          ..add('sha', sha)
          ..add('url', url))
        .toString();
  }
}

class BranchShortCommitBuilder
    implements Builder<BranchShortCommit, BranchShortCommitBuilder> {
  _$BranchShortCommit _$v;

  String _sha;
  String get sha => _$this._sha;
  set sha(String sha) => _$this._sha = sha;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  BranchShortCommitBuilder() {
    BranchShortCommit._initializeBuilder(this);
  }

  BranchShortCommitBuilder get _$this {
    if (_$v != null) {
      _sha = _$v.sha;
      _url = _$v.url;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BranchShortCommit other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BranchShortCommit;
  }

  @override
  void update(void Function(BranchShortCommitBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BranchShortCommit build() {
    final _$result = _$v ?? new _$BranchShortCommit._(sha: sha, url: url);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
