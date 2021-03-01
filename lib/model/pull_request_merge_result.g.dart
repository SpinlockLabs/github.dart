// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'pull_request_merge_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PullRequestMergeResult> _$pullRequestMergeResultSerializer =
    new _$PullRequestMergeResultSerializer();

class _$PullRequestMergeResultSerializer
    implements StructuredSerializer<PullRequestMergeResult> {
  @override
  final Iterable<Type> types = const [
    PullRequestMergeResult,
    _$PullRequestMergeResult
  ];
  @override
  final String wireName = 'PullRequestMergeResult';

  @override
  Iterable<Object> serialize(
      Serializers serializers, PullRequestMergeResult object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.sha != null) {
      result
        ..add('sha')
        ..add(serializers.serialize(object.sha,
            specifiedType: const FullType(String)));
    }
    if (object.merged != null) {
      result
        ..add('merged')
        ..add(serializers.serialize(object.merged,
            specifiedType: const FullType(bool)));
    }
    if (object.message != null) {
      result
        ..add('message')
        ..add(serializers.serialize(object.message,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  PullRequestMergeResult deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PullRequestMergeResultBuilder();

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
        case 'merged':
          result.merged = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$PullRequestMergeResult extends PullRequestMergeResult {
  @override
  final String sha;
  @override
  final bool merged;
  @override
  final String message;

  factory _$PullRequestMergeResult(
          [void Function(PullRequestMergeResultBuilder) updates]) =>
      (new PullRequestMergeResultBuilder()..update(updates)).build();

  _$PullRequestMergeResult._({this.sha, this.merged, this.message}) : super._();

  @override
  PullRequestMergeResult rebuild(
          void Function(PullRequestMergeResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PullRequestMergeResultBuilder toBuilder() =>
      new PullRequestMergeResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PullRequestMergeResult &&
        sha == other.sha &&
        merged == other.merged &&
        message == other.message;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, sha.hashCode), merged.hashCode), message.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PullRequestMergeResult')
          ..add('sha', sha)
          ..add('merged', merged)
          ..add('message', message))
        .toString();
  }
}

class PullRequestMergeResultBuilder
    implements Builder<PullRequestMergeResult, PullRequestMergeResultBuilder> {
  _$PullRequestMergeResult _$v;

  String _sha;
  String get sha => _$this._sha;
  set sha(String sha) => _$this._sha = sha;

  bool _merged;
  bool get merged => _$this._merged;
  set merged(bool merged) => _$this._merged = merged;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  PullRequestMergeResultBuilder() {
    PullRequestMergeResult._initializeBuilder(this);
  }

  PullRequestMergeResultBuilder get _$this {
    if (_$v != null) {
      _sha = _$v.sha;
      _merged = _$v.merged;
      _message = _$v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PullRequestMergeResult other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PullRequestMergeResult;
  }

  @override
  void update(void Function(PullRequestMergeResultBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PullRequestMergeResult build() {
    final _$result = _$v ??
        new _$PullRequestMergeResult._(
            sha: sha, merged: merged, message: message);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
