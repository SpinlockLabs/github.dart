// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'traffic.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Traffic> _$trafficSerializer = new _$TrafficSerializer();

class _$TrafficSerializer implements StructuredSerializer<Traffic> {
  @override
  final Iterable<Type> types = const [Traffic, _$Traffic];
  @override
  final String wireName = 'Traffic';

  @override
  Iterable<Object> serialize(Serializers serializers, Traffic object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.timestamp != null) {
      result
        ..add('timestamp')
        ..add(serializers.serialize(object.timestamp,
            specifiedType: const FullType(DateTime)));
    }
    if (object.uniques != null) {
      result
        ..add('uniques')
        ..add(serializers.serialize(object.uniques,
            specifiedType: const FullType(int)));
    }
    if (object.count != null) {
      result
        ..add('count')
        ..add(serializers.serialize(object.count,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  Traffic deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TrafficBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'timestamp':
          result.timestamp = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'uniques':
          result.uniques = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'count':
          result.count = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$Traffic extends Traffic {
  @override
  final DateTime timestamp;
  @override
  final int uniques;
  @override
  final int count;

  factory _$Traffic([void Function(TrafficBuilder) updates]) =>
      (new TrafficBuilder()..update(updates)).build();

  _$Traffic._({this.timestamp, this.uniques, this.count}) : super._();

  @override
  Traffic rebuild(void Function(TrafficBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TrafficBuilder toBuilder() => new TrafficBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Traffic &&
        timestamp == other.timestamp &&
        uniques == other.uniques &&
        count == other.count;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, timestamp.hashCode), uniques.hashCode), count.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Traffic')
          ..add('timestamp', timestamp)
          ..add('uniques', uniques)
          ..add('count', count))
        .toString();
  }
}

class TrafficBuilder implements Builder<Traffic, TrafficBuilder> {
  _$Traffic _$v;

  DateTime _timestamp;
  DateTime get timestamp => _$this._timestamp;
  set timestamp(DateTime timestamp) => _$this._timestamp = timestamp;

  int _uniques;
  int get uniques => _$this._uniques;
  set uniques(int uniques) => _$this._uniques = uniques;

  int _count;
  int get count => _$this._count;
  set count(int count) => _$this._count = count;

  TrafficBuilder() {
    Traffic._initializeBuilder(this);
  }

  TrafficBuilder get _$this {
    if (_$v != null) {
      _timestamp = _$v.timestamp;
      _uniques = _$v.uniques;
      _count = _$v.count;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Traffic other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Traffic;
  }

  @override
  void update(void Function(TrafficBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Traffic build() {
    final _$result = _$v ??
        new _$Traffic._(timestamp: timestamp, uniques: uniques, count: count);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
