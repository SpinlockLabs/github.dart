// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'rate_limit.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RateLimit> _$rateLimitSerializer = new _$RateLimitSerializer();

class _$RateLimitSerializer implements StructuredSerializer<RateLimit> {
  @override
  final Iterable<Type> types = const [RateLimit, _$RateLimit];
  @override
  final String wireName = 'RateLimit';

  @override
  Iterable<Object> serialize(Serializers serializers, RateLimit object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.limit != null) {
      result
        ..add('limit')
        ..add(serializers.serialize(object.limit,
            specifiedType: const FullType(int)));
    }
    if (object.remaining != null) {
      result
        ..add('remaining')
        ..add(serializers.serialize(object.remaining,
            specifiedType: const FullType(int)));
    }
    if (object.reset != null) {
      result
        ..add('reset')
        ..add(serializers.serialize(object.reset,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  RateLimit deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RateLimitBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'limit':
          result.limit = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'remaining':
          result.remaining = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'reset':
          result.reset = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$RateLimit extends RateLimit {
  @override
  final int limit;
  @override
  final int remaining;
  @override
  final int reset;

  factory _$RateLimit([void Function(RateLimitBuilder) updates]) =>
      (new RateLimitBuilder()..update(updates)).build();

  _$RateLimit._({this.limit, this.remaining, this.reset}) : super._();

  @override
  RateLimit rebuild(void Function(RateLimitBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RateLimitBuilder toBuilder() => new RateLimitBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RateLimit &&
        limit == other.limit &&
        remaining == other.remaining &&
        reset == other.reset;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, limit.hashCode), remaining.hashCode), reset.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RateLimit')
          ..add('limit', limit)
          ..add('remaining', remaining)
          ..add('reset', reset))
        .toString();
  }
}

class RateLimitBuilder implements Builder<RateLimit, RateLimitBuilder> {
  _$RateLimit _$v;

  int _limit;
  int get limit => _$this._limit;
  set limit(int limit) => _$this._limit = limit;

  int _remaining;
  int get remaining => _$this._remaining;
  set remaining(int remaining) => _$this._remaining = remaining;

  int _reset;
  int get reset => _$this._reset;
  set reset(int reset) => _$this._reset = reset;

  RateLimitBuilder() {
    RateLimit._initializeBuilder(this);
  }

  RateLimitBuilder get _$this {
    if (_$v != null) {
      _limit = _$v.limit;
      _remaining = _$v.remaining;
      _reset = _$v.reset;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RateLimit other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$RateLimit;
  }

  @override
  void update(void Function(RateLimitBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RateLimit build() {
    final _$result = _$v ??
        new _$RateLimit._(limit: limit, remaining: remaining, reset: reset);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
