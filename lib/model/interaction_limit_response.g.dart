// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'interaction_limit_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InteractionLimitResponse> _$interactionLimitResponseSerializer =
    new _$InteractionLimitResponseSerializer();

class _$InteractionLimitResponseSerializer
    implements StructuredSerializer<InteractionLimitResponse> {
  @override
  final Iterable<Type> types = const [
    InteractionLimitResponse,
    _$InteractionLimitResponse
  ];
  @override
  final String wireName = 'InteractionLimitResponse';

  @override
  Iterable<Object> serialize(
      Serializers serializers, InteractionLimitResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.limit != null) {
      result
        ..add('limit')
        ..add(serializers.serialize(object.limit,
            specifiedType: const FullType(InteractionGroup)));
    }
    if (object.origin != null) {
      result
        ..add('origin')
        ..add(serializers.serialize(object.origin,
            specifiedType: const FullType(String)));
    }
    if (object.expiresAt != null) {
      result
        ..add('expires_at')
        ..add(serializers.serialize(object.expiresAt,
            specifiedType: const FullType(DateTime)));
    }
    return result;
  }

  @override
  InteractionLimitResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InteractionLimitResponseBuilder();

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
        case 'origin':
          result.origin = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'expires_at':
          result.expiresAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
      }
    }

    return result.build();
  }
}

class _$InteractionLimitResponse extends InteractionLimitResponse {
  @override
  final InteractionGroup limit;
  @override
  final String origin;
  @override
  final DateTime expiresAt;

  factory _$InteractionLimitResponse(
          [void Function(InteractionLimitResponseBuilder) updates]) =>
      (new InteractionLimitResponseBuilder()..update(updates)).build();

  _$InteractionLimitResponse._({this.limit, this.origin, this.expiresAt})
      : super._();

  @override
  InteractionLimitResponse rebuild(
          void Function(InteractionLimitResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InteractionLimitResponseBuilder toBuilder() =>
      new InteractionLimitResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InteractionLimitResponse &&
        limit == other.limit &&
        origin == other.origin &&
        expiresAt == other.expiresAt;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, limit.hashCode), origin.hashCode), expiresAt.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InteractionLimitResponse')
          ..add('limit', limit)
          ..add('origin', origin)
          ..add('expiresAt', expiresAt))
        .toString();
  }
}

class InteractionLimitResponseBuilder
    implements
        Builder<InteractionLimitResponse, InteractionLimitResponseBuilder> {
  _$InteractionLimitResponse _$v;

  InteractionGroup _limit;
  InteractionGroup get limit => _$this._limit;
  set limit(InteractionGroup limit) => _$this._limit = limit;

  String _origin;
  String get origin => _$this._origin;
  set origin(String origin) => _$this._origin = origin;

  DateTime _expiresAt;
  DateTime get expiresAt => _$this._expiresAt;
  set expiresAt(DateTime expiresAt) => _$this._expiresAt = expiresAt;

  InteractionLimitResponseBuilder() {
    InteractionLimitResponse._initializeBuilder(this);
  }

  InteractionLimitResponseBuilder get _$this {
    if (_$v != null) {
      _limit = _$v.limit;
      _origin = _$v.origin;
      _expiresAt = _$v.expiresAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InteractionLimitResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InteractionLimitResponse;
  }

  @override
  void update(void Function(InteractionLimitResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InteractionLimitResponse build() {
    final _$result = _$v ??
        new _$InteractionLimitResponse._(
            limit: limit, origin: origin, expiresAt: expiresAt);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
