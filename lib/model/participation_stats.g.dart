// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'participation_stats.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ParticipationStats> _$participationStatsSerializer =
    new _$ParticipationStatsSerializer();

class _$ParticipationStatsSerializer
    implements StructuredSerializer<ParticipationStats> {
  @override
  final Iterable<Type> types = const [ParticipationStats, _$ParticipationStats];
  @override
  final String wireName = 'ParticipationStats';

  @override
  Iterable<Object> serialize(Serializers serializers, ParticipationStats object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.all != null) {
      result
        ..add('all')
        ..add(serializers.serialize(object.all,
            specifiedType:
                const FullType(BuiltList, const [const FullType(int)])));
    }
    if (object.owner != null) {
      result
        ..add('owner')
        ..add(serializers.serialize(object.owner,
            specifiedType:
                const FullType(BuiltList, const [const FullType(int)])));
    }
    return result;
  }

  @override
  ParticipationStats deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ParticipationStatsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'all':
          result.all.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(int)]))
              as BuiltList<Object>);
          break;
        case 'owner':
          result.owner.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(int)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$ParticipationStats extends ParticipationStats {
  @override
  final BuiltList<int> all;
  @override
  final BuiltList<int> owner;

  factory _$ParticipationStats(
          [void Function(ParticipationStatsBuilder) updates]) =>
      (new ParticipationStatsBuilder()..update(updates)).build();

  _$ParticipationStats._({this.all, this.owner}) : super._();

  @override
  ParticipationStats rebuild(
          void Function(ParticipationStatsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ParticipationStatsBuilder toBuilder() =>
      new ParticipationStatsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ParticipationStats &&
        all == other.all &&
        owner == other.owner;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, all.hashCode), owner.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ParticipationStats')
          ..add('all', all)
          ..add('owner', owner))
        .toString();
  }
}

class ParticipationStatsBuilder
    implements Builder<ParticipationStats, ParticipationStatsBuilder> {
  _$ParticipationStats _$v;

  ListBuilder<int> _all;
  ListBuilder<int> get all => _$this._all ??= new ListBuilder<int>();
  set all(ListBuilder<int> all) => _$this._all = all;

  ListBuilder<int> _owner;
  ListBuilder<int> get owner => _$this._owner ??= new ListBuilder<int>();
  set owner(ListBuilder<int> owner) => _$this._owner = owner;

  ParticipationStatsBuilder() {
    ParticipationStats._initializeBuilder(this);
  }

  ParticipationStatsBuilder get _$this {
    if (_$v != null) {
      _all = _$v.all?.toBuilder();
      _owner = _$v.owner?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ParticipationStats other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ParticipationStats;
  }

  @override
  void update(void Function(ParticipationStatsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ParticipationStats build() {
    _$ParticipationStats _$result;
    try {
      _$result = _$v ??
          new _$ParticipationStats._(
              all: _all?.build(), owner: _owner?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'all';
        _all?.build();
        _$failedField = 'owner';
        _owner?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ParticipationStats', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
