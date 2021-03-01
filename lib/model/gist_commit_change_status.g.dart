// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'gist_commit_change_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GistCommitChangeStatus> _$gistCommitChangeStatusSerializer =
    new _$GistCommitChangeStatusSerializer();

class _$GistCommitChangeStatusSerializer
    implements StructuredSerializer<GistCommitChangeStatus> {
  @override
  final Iterable<Type> types = const [
    GistCommitChangeStatus,
    _$GistCommitChangeStatus
  ];
  @override
  final String wireName = 'GistCommitChangeStatus';

  @override
  Iterable<Object> serialize(
      Serializers serializers, GistCommitChangeStatus object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.total != null) {
      result
        ..add('total')
        ..add(serializers.serialize(object.total,
            specifiedType: const FullType(int)));
    }
    if (object.additions != null) {
      result
        ..add('additions')
        ..add(serializers.serialize(object.additions,
            specifiedType: const FullType(int)));
    }
    if (object.deletions != null) {
      result
        ..add('deletions')
        ..add(serializers.serialize(object.deletions,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GistCommitChangeStatus deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GistCommitChangeStatusBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'total':
          result.total = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'additions':
          result.additions = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'deletions':
          result.deletions = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$GistCommitChangeStatus extends GistCommitChangeStatus {
  @override
  final int total;
  @override
  final int additions;
  @override
  final int deletions;

  factory _$GistCommitChangeStatus(
          [void Function(GistCommitChangeStatusBuilder) updates]) =>
      (new GistCommitChangeStatusBuilder()..update(updates)).build();

  _$GistCommitChangeStatus._({this.total, this.additions, this.deletions})
      : super._();

  @override
  GistCommitChangeStatus rebuild(
          void Function(GistCommitChangeStatusBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GistCommitChangeStatusBuilder toBuilder() =>
      new GistCommitChangeStatusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GistCommitChangeStatus &&
        total == other.total &&
        additions == other.additions &&
        deletions == other.deletions;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, total.hashCode), additions.hashCode), deletions.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GistCommitChangeStatus')
          ..add('total', total)
          ..add('additions', additions)
          ..add('deletions', deletions))
        .toString();
  }
}

class GistCommitChangeStatusBuilder
    implements Builder<GistCommitChangeStatus, GistCommitChangeStatusBuilder> {
  _$GistCommitChangeStatus _$v;

  int _total;
  int get total => _$this._total;
  set total(int total) => _$this._total = total;

  int _additions;
  int get additions => _$this._additions;
  set additions(int additions) => _$this._additions = additions;

  int _deletions;
  int get deletions => _$this._deletions;
  set deletions(int deletions) => _$this._deletions = deletions;

  GistCommitChangeStatusBuilder() {
    GistCommitChangeStatus._initializeBuilder(this);
  }

  GistCommitChangeStatusBuilder get _$this {
    if (_$v != null) {
      _total = _$v.total;
      _additions = _$v.additions;
      _deletions = _$v.deletions;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GistCommitChangeStatus other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GistCommitChangeStatus;
  }

  @override
  void update(void Function(GistCommitChangeStatusBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GistCommitChangeStatus build() {
    final _$result = _$v ??
        new _$GistCommitChangeStatus._(
            total: total, additions: additions, deletions: deletions);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
