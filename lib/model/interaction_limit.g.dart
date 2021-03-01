// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'interaction_limit.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InteractionLimit> _$interactionLimitSerializer =
    new _$InteractionLimitSerializer();

class _$InteractionLimitSerializer
    implements StructuredSerializer<InteractionLimit> {
  @override
  final Iterable<Type> types = const [InteractionLimit, _$InteractionLimit];
  @override
  final String wireName = 'InteractionLimit';

  @override
  Iterable<Object> serialize(Serializers serializers, InteractionLimit object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.limit != null) {
      result
        ..add('limit')
        ..add(serializers.serialize(object.limit,
            specifiedType: const FullType(InteractionGroup)));
    }
    if (object.expiry != null) {
      result
        ..add('expiry')
        ..add(serializers.serialize(object.expiry,
            specifiedType: const FullType(InteractionExpiry)));
    }
    return result;
  }

  @override
  InteractionLimit deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InteractionLimitBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'limit':
          result.limit = serializers.deserialize(value,
                  specifiedType: const FullType(InteractionGroup))
              as InteractionGroup;
          break;
        case 'expiry':
          result.expiry = serializers.deserialize(value,
                  specifiedType: const FullType(InteractionExpiry))
              as InteractionExpiry;
          break;
      }
    }

    return result.build();
  }
}

class _$InteractionLimit extends InteractionLimit {
  @override
  final InteractionGroup limit;
  @override
  final InteractionExpiry expiry;

  factory _$InteractionLimit(
          [void Function(InteractionLimitBuilder) updates]) =>
      (new InteractionLimitBuilder()..update(updates)).build();

  _$InteractionLimit._({this.limit, this.expiry}) : super._();

  @override
  InteractionLimit rebuild(void Function(InteractionLimitBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InteractionLimitBuilder toBuilder() =>
      new InteractionLimitBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InteractionLimit &&
        limit == other.limit &&
        expiry == other.expiry;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, limit.hashCode), expiry.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InteractionLimit')
          ..add('limit', limit)
          ..add('expiry', expiry))
        .toString();
  }
}

class InteractionLimitBuilder
    implements Builder<InteractionLimit, InteractionLimitBuilder> {
  _$InteractionLimit _$v;

  InteractionGroup _limit;
  InteractionGroup get limit => _$this._limit;
  set limit(InteractionGroup limit) => _$this._limit = limit;

  InteractionExpiry _expiry;
  InteractionExpiry get expiry => _$this._expiry;
  set expiry(InteractionExpiry expiry) => _$this._expiry = expiry;

  InteractionLimitBuilder() {
    InteractionLimit._initializeBuilder(this);
  }

  InteractionLimitBuilder get _$this {
    if (_$v != null) {
      _limit = _$v.limit;
      _expiry = _$v.expiry;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InteractionLimit other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InteractionLimit;
  }

  @override
  void update(void Function(InteractionLimitBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InteractionLimit build() {
    final _$result =
        _$v ?? new _$InteractionLimit._(limit: limit, expiry: expiry);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
