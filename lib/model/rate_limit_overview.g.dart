// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'rate_limit_overview.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RateLimitOverview> _$rateLimitOverviewSerializer =
    new _$RateLimitOverviewSerializer();

class _$RateLimitOverviewSerializer
    implements StructuredSerializer<RateLimitOverview> {
  @override
  final Iterable<Type> types = const [RateLimitOverview, _$RateLimitOverview];
  @override
  final String wireName = 'RateLimitOverview';

  @override
  Iterable<Object> serialize(Serializers serializers, RateLimitOverview object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.resources != null) {
      result
        ..add('resources')
        ..add(serializers.serialize(object.resources,
            specifiedType: const FullType(RateLimitOverviewResources)));
    }
    if (object.rate != null) {
      result
        ..add('rate')
        ..add(serializers.serialize(object.rate,
            specifiedType: const FullType(RateLimit)));
    }
    return result;
  }

  @override
  RateLimitOverview deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RateLimitOverviewBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'resources':
          result.resources.replace(serializers.deserialize(value,
                  specifiedType: const FullType(RateLimitOverviewResources))
              as RateLimitOverviewResources);
          break;
        case 'rate':
          result.rate.replace(serializers.deserialize(value,
              specifiedType: const FullType(RateLimit)) as RateLimit);
          break;
      }
    }

    return result.build();
  }
}

class _$RateLimitOverview extends RateLimitOverview {
  @override
  final RateLimitOverviewResources resources;
  @override
  final RateLimit rate;

  factory _$RateLimitOverview(
          [void Function(RateLimitOverviewBuilder) updates]) =>
      (new RateLimitOverviewBuilder()..update(updates)).build();

  _$RateLimitOverview._({this.resources, this.rate}) : super._();

  @override
  RateLimitOverview rebuild(void Function(RateLimitOverviewBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RateLimitOverviewBuilder toBuilder() =>
      new RateLimitOverviewBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RateLimitOverview &&
        resources == other.resources &&
        rate == other.rate;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, resources.hashCode), rate.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RateLimitOverview')
          ..add('resources', resources)
          ..add('rate', rate))
        .toString();
  }
}

class RateLimitOverviewBuilder
    implements Builder<RateLimitOverview, RateLimitOverviewBuilder> {
  _$RateLimitOverview _$v;

  RateLimitOverviewResourcesBuilder _resources;
  RateLimitOverviewResourcesBuilder get resources =>
      _$this._resources ??= new RateLimitOverviewResourcesBuilder();
  set resources(RateLimitOverviewResourcesBuilder resources) =>
      _$this._resources = resources;

  RateLimitBuilder _rate;
  RateLimitBuilder get rate => _$this._rate ??= new RateLimitBuilder();
  set rate(RateLimitBuilder rate) => _$this._rate = rate;

  RateLimitOverviewBuilder() {
    RateLimitOverview._initializeBuilder(this);
  }

  RateLimitOverviewBuilder get _$this {
    if (_$v != null) {
      _resources = _$v.resources?.toBuilder();
      _rate = _$v.rate?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RateLimitOverview other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$RateLimitOverview;
  }

  @override
  void update(void Function(RateLimitOverviewBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RateLimitOverview build() {
    _$RateLimitOverview _$result;
    try {
      _$result = _$v ??
          new _$RateLimitOverview._(
              resources: _resources?.build(), rate: _rate?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'resources';
        _resources?.build();
        _$failedField = 'rate';
        _rate?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'RateLimitOverview', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
