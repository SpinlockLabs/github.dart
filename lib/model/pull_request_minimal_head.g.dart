// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'pull_request_minimal_head.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PullRequestMinimalHead> _$pullRequestMinimalHeadSerializer =
    new _$PullRequestMinimalHeadSerializer();

class _$PullRequestMinimalHeadSerializer
    implements StructuredSerializer<PullRequestMinimalHead> {
  @override
  final Iterable<Type> types = const [
    PullRequestMinimalHead,
    _$PullRequestMinimalHead
  ];
  @override
  final String wireName = 'PullRequestMinimalHead';

  @override
  Iterable<Object> serialize(
      Serializers serializers, PullRequestMinimalHead object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.ref != null) {
      result
        ..add('ref')
        ..add(serializers.serialize(object.ref,
            specifiedType: const FullType(String)));
    }
    if (object.sha != null) {
      result
        ..add('sha')
        ..add(serializers.serialize(object.sha,
            specifiedType: const FullType(String)));
    }
    if (object.repo != null) {
      result
        ..add('repo')
        ..add(serializers.serialize(object.repo,
            specifiedType: const FullType(PullRequestMinimalHeadRepo)));
    }
    return result;
  }

  @override
  PullRequestMinimalHead deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PullRequestMinimalHeadBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'ref':
          result.ref = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'sha':
          result.sha = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'repo':
          result.repo.replace(serializers.deserialize(value,
                  specifiedType: const FullType(PullRequestMinimalHeadRepo))
              as PullRequestMinimalHeadRepo);
          break;
      }
    }

    return result.build();
  }
}

class _$PullRequestMinimalHead extends PullRequestMinimalHead {
  @override
  final String ref;
  @override
  final String sha;
  @override
  final PullRequestMinimalHeadRepo repo;

  factory _$PullRequestMinimalHead(
          [void Function(PullRequestMinimalHeadBuilder) updates]) =>
      (new PullRequestMinimalHeadBuilder()..update(updates)).build();

  _$PullRequestMinimalHead._({this.ref, this.sha, this.repo}) : super._();

  @override
  PullRequestMinimalHead rebuild(
          void Function(PullRequestMinimalHeadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PullRequestMinimalHeadBuilder toBuilder() =>
      new PullRequestMinimalHeadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PullRequestMinimalHead &&
        ref == other.ref &&
        sha == other.sha &&
        repo == other.repo;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, ref.hashCode), sha.hashCode), repo.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PullRequestMinimalHead')
          ..add('ref', ref)
          ..add('sha', sha)
          ..add('repo', repo))
        .toString();
  }
}

class PullRequestMinimalHeadBuilder
    implements Builder<PullRequestMinimalHead, PullRequestMinimalHeadBuilder> {
  _$PullRequestMinimalHead _$v;

  String _ref;
  String get ref => _$this._ref;
  set ref(String ref) => _$this._ref = ref;

  String _sha;
  String get sha => _$this._sha;
  set sha(String sha) => _$this._sha = sha;

  PullRequestMinimalHeadRepoBuilder _repo;
  PullRequestMinimalHeadRepoBuilder get repo =>
      _$this._repo ??= new PullRequestMinimalHeadRepoBuilder();
  set repo(PullRequestMinimalHeadRepoBuilder repo) => _$this._repo = repo;

  PullRequestMinimalHeadBuilder() {
    PullRequestMinimalHead._initializeBuilder(this);
  }

  PullRequestMinimalHeadBuilder get _$this {
    if (_$v != null) {
      _ref = _$v.ref;
      _sha = _$v.sha;
      _repo = _$v.repo?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PullRequestMinimalHead other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PullRequestMinimalHead;
  }

  @override
  void update(void Function(PullRequestMinimalHeadBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PullRequestMinimalHead build() {
    _$PullRequestMinimalHead _$result;
    try {
      _$result = _$v ??
          new _$PullRequestMinimalHead._(
              ref: ref, sha: sha, repo: _repo?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'repo';
        _repo?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'PullRequestMinimalHead', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
