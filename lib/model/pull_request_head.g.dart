// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'pull_request_head.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PullRequestHead> _$pullRequestHeadSerializer =
    new _$PullRequestHeadSerializer();

class _$PullRequestHeadSerializer
    implements StructuredSerializer<PullRequestHead> {
  @override
  final Iterable<Type> types = const [PullRequestHead, _$PullRequestHead];
  @override
  final String wireName = 'PullRequestHead';

  @override
  Iterable<Object> serialize(Serializers serializers, PullRequestHead object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.label != null) {
      result
        ..add('label')
        ..add(serializers.serialize(object.label,
            specifiedType: const FullType(String)));
    }
    if (object.ref != null) {
      result
        ..add('ref')
        ..add(serializers.serialize(object.ref,
            specifiedType: const FullType(String)));
    }
    if (object.repo != null) {
      result
        ..add('repo')
        ..add(serializers.serialize(object.repo,
            specifiedType: const FullType(PullRequestHeadRepo)));
    }
    if (object.sha != null) {
      result
        ..add('sha')
        ..add(serializers.serialize(object.sha,
            specifiedType: const FullType(String)));
    }
    if (object.user != null) {
      result
        ..add('user')
        ..add(serializers.serialize(object.user,
            specifiedType: const FullType(PullRequestHeadRepoOwner)));
    }
    return result;
  }

  @override
  PullRequestHead deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PullRequestHeadBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'label':
          result.label = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'ref':
          result.ref = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'repo':
          result.repo.replace(serializers.deserialize(value,
                  specifiedType: const FullType(PullRequestHeadRepo))
              as PullRequestHeadRepo);
          break;
        case 'sha':
          result.sha = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'user':
          result.user.replace(serializers.deserialize(value,
                  specifiedType: const FullType(PullRequestHeadRepoOwner))
              as PullRequestHeadRepoOwner);
          break;
      }
    }

    return result.build();
  }
}

class _$PullRequestHead extends PullRequestHead {
  @override
  final String label;
  @override
  final String ref;
  @override
  final PullRequestHeadRepo repo;
  @override
  final String sha;
  @override
  final PullRequestHeadRepoOwner user;

  factory _$PullRequestHead([void Function(PullRequestHeadBuilder) updates]) =>
      (new PullRequestHeadBuilder()..update(updates)).build();

  _$PullRequestHead._({this.label, this.ref, this.repo, this.sha, this.user})
      : super._();

  @override
  PullRequestHead rebuild(void Function(PullRequestHeadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PullRequestHeadBuilder toBuilder() =>
      new PullRequestHeadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PullRequestHead &&
        label == other.label &&
        ref == other.ref &&
        repo == other.repo &&
        sha == other.sha &&
        user == other.user;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, label.hashCode), ref.hashCode), repo.hashCode),
            sha.hashCode),
        user.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PullRequestHead')
          ..add('label', label)
          ..add('ref', ref)
          ..add('repo', repo)
          ..add('sha', sha)
          ..add('user', user))
        .toString();
  }
}

class PullRequestHeadBuilder
    implements Builder<PullRequestHead, PullRequestHeadBuilder> {
  _$PullRequestHead _$v;

  String _label;
  String get label => _$this._label;
  set label(String label) => _$this._label = label;

  String _ref;
  String get ref => _$this._ref;
  set ref(String ref) => _$this._ref = ref;

  PullRequestHeadRepoBuilder _repo;
  PullRequestHeadRepoBuilder get repo =>
      _$this._repo ??= new PullRequestHeadRepoBuilder();
  set repo(PullRequestHeadRepoBuilder repo) => _$this._repo = repo;

  String _sha;
  String get sha => _$this._sha;
  set sha(String sha) => _$this._sha = sha;

  PullRequestHeadRepoOwnerBuilder _user;
  PullRequestHeadRepoOwnerBuilder get user =>
      _$this._user ??= new PullRequestHeadRepoOwnerBuilder();
  set user(PullRequestHeadRepoOwnerBuilder user) => _$this._user = user;

  PullRequestHeadBuilder() {
    PullRequestHead._initializeBuilder(this);
  }

  PullRequestHeadBuilder get _$this {
    if (_$v != null) {
      _label = _$v.label;
      _ref = _$v.ref;
      _repo = _$v.repo?.toBuilder();
      _sha = _$v.sha;
      _user = _$v.user?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PullRequestHead other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PullRequestHead;
  }

  @override
  void update(void Function(PullRequestHeadBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PullRequestHead build() {
    _$PullRequestHead _$result;
    try {
      _$result = _$v ??
          new _$PullRequestHead._(
              label: label,
              ref: ref,
              repo: _repo?.build(),
              sha: sha,
              user: _user?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'repo';
        _repo?.build();

        _$failedField = 'user';
        _user?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'PullRequestHead', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
