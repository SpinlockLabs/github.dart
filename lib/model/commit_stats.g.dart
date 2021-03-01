// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'commit_stats.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CommitStats> _$commitStatsSerializer = new _$CommitStatsSerializer();

class _$CommitStatsSerializer implements StructuredSerializer<CommitStats> {
  @override
  final Iterable<Type> types = const [CommitStats, _$CommitStats];
  @override
  final String wireName = 'CommitStats';

  @override
  Iterable<Object> serialize(Serializers serializers, CommitStats object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
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
    if (object.total != null) {
      result
        ..add('total')
        ..add(serializers.serialize(object.total,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  CommitStats deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CommitStatsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'additions':
          result.additions = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'deletions':
          result.deletions = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'total':
          result.total = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$CommitStats extends CommitStats {
  @override
  final int additions;
  @override
  final int deletions;
  @override
  final int total;

  factory _$CommitStats([void Function(CommitStatsBuilder) updates]) =>
      (new CommitStatsBuilder()..update(updates)).build();

  _$CommitStats._({this.additions, this.deletions, this.total}) : super._();

  @override
  CommitStats rebuild(void Function(CommitStatsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CommitStatsBuilder toBuilder() => new CommitStatsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CommitStats &&
        additions == other.additions &&
        deletions == other.deletions &&
        total == other.total;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, additions.hashCode), deletions.hashCode), total.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CommitStats')
          ..add('additions', additions)
          ..add('deletions', deletions)
          ..add('total', total))
        .toString();
  }
}

class CommitStatsBuilder implements Builder<CommitStats, CommitStatsBuilder> {
  _$CommitStats _$v;

  int _additions;
  int get additions => _$this._additions;
  set additions(int additions) => _$this._additions = additions;

  int _deletions;
  int get deletions => _$this._deletions;
  set deletions(int deletions) => _$this._deletions = deletions;

  int _total;
  int get total => _$this._total;
  set total(int total) => _$this._total = total;

  CommitStatsBuilder() {
    CommitStats._initializeBuilder(this);
  }

  CommitStatsBuilder get _$this {
    if (_$v != null) {
      _additions = _$v.additions;
      _deletions = _$v.deletions;
      _total = _$v.total;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CommitStats other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CommitStats;
  }

  @override
  void update(void Function(CommitStatsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CommitStats build() {
    final _$result = _$v ??
        new _$CommitStats._(
            additions: additions, deletions: deletions, total: total);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
