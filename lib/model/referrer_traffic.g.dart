// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'referrer_traffic.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ReferrerTraffic> _$referrerTrafficSerializer =
    new _$ReferrerTrafficSerializer();

class _$ReferrerTrafficSerializer
    implements StructuredSerializer<ReferrerTraffic> {
  @override
  final Iterable<Type> types = const [ReferrerTraffic, _$ReferrerTraffic];
  @override
  final String wireName = 'ReferrerTraffic';

  @override
  Iterable<Object> serialize(Serializers serializers, ReferrerTraffic object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.referrer != null) {
      result
        ..add('referrer')
        ..add(serializers.serialize(object.referrer,
            specifiedType: const FullType(String)));
    }
    if (object.count != null) {
      result
        ..add('count')
        ..add(serializers.serialize(object.count,
            specifiedType: const FullType(int)));
    }
    if (object.uniques != null) {
      result
        ..add('uniques')
        ..add(serializers.serialize(object.uniques,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  ReferrerTraffic deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ReferrerTrafficBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'referrer':
          result.referrer = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'count':
          result.count = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'uniques':
          result.uniques = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$ReferrerTraffic extends ReferrerTraffic {
  @override
  final String referrer;
  @override
  final int count;
  @override
  final int uniques;

  factory _$ReferrerTraffic([void Function(ReferrerTrafficBuilder) updates]) =>
      (new ReferrerTrafficBuilder()..update(updates)).build();

  _$ReferrerTraffic._({this.referrer, this.count, this.uniques}) : super._();

  @override
  ReferrerTraffic rebuild(void Function(ReferrerTrafficBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReferrerTrafficBuilder toBuilder() =>
      new ReferrerTrafficBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReferrerTraffic &&
        referrer == other.referrer &&
        count == other.count &&
        uniques == other.uniques;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, referrer.hashCode), count.hashCode), uniques.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ReferrerTraffic')
          ..add('referrer', referrer)
          ..add('count', count)
          ..add('uniques', uniques))
        .toString();
  }
}

class ReferrerTrafficBuilder
    implements Builder<ReferrerTraffic, ReferrerTrafficBuilder> {
  _$ReferrerTraffic _$v;

  String _referrer;
  String get referrer => _$this._referrer;
  set referrer(String referrer) => _$this._referrer = referrer;

  int _count;
  int get count => _$this._count;
  set count(int count) => _$this._count = count;

  int _uniques;
  int get uniques => _$this._uniques;
  set uniques(int uniques) => _$this._uniques = uniques;

  ReferrerTrafficBuilder() {
    ReferrerTraffic._initializeBuilder(this);
  }

  ReferrerTrafficBuilder get _$this {
    if (_$v != null) {
      _referrer = _$v.referrer;
      _count = _$v.count;
      _uniques = _$v.uniques;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReferrerTraffic other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ReferrerTraffic;
  }

  @override
  void update(void Function(ReferrerTrafficBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ReferrerTraffic build() {
    final _$result = _$v ??
        new _$ReferrerTraffic._(
            referrer: referrer, count: count, uniques: uniques);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
