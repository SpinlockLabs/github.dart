// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'secret_scanning_alert_resolution.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SecretScanningAlertResolution>
    _$secretScanningAlertResolutionSerializer =
    new _$SecretScanningAlertResolutionSerializer();

class _$SecretScanningAlertResolutionSerializer
    implements StructuredSerializer<SecretScanningAlertResolution> {
  @override
  final Iterable<Type> types = const [
    SecretScanningAlertResolution,
    _$SecretScanningAlertResolution
  ];
  @override
  final String wireName = 'SecretScanningAlertResolution';

  @override
  Iterable<Object> serialize(
      Serializers serializers, SecretScanningAlertResolution object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object>[];
  }

  @override
  SecretScanningAlertResolution deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new SecretScanningAlertResolutionBuilder().build();
  }
}

class _$SecretScanningAlertResolution extends SecretScanningAlertResolution {
  factory _$SecretScanningAlertResolution(
          [void Function(SecretScanningAlertResolutionBuilder) updates]) =>
      (new SecretScanningAlertResolutionBuilder()..update(updates)).build();

  _$SecretScanningAlertResolution._() : super._();

  @override
  SecretScanningAlertResolution rebuild(
          void Function(SecretScanningAlertResolutionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SecretScanningAlertResolutionBuilder toBuilder() =>
      new SecretScanningAlertResolutionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SecretScanningAlertResolution;
  }

  @override
  int get hashCode {
    return 509379892;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('SecretScanningAlertResolution')
        .toString();
  }
}

class SecretScanningAlertResolutionBuilder
    implements
        Builder<SecretScanningAlertResolution,
            SecretScanningAlertResolutionBuilder> {
  _$SecretScanningAlertResolution _$v;

  SecretScanningAlertResolutionBuilder() {
    SecretScanningAlertResolution._initializeBuilder(this);
  }

  @override
  void replace(SecretScanningAlertResolution other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SecretScanningAlertResolution;
  }

  @override
  void update(void Function(SecretScanningAlertResolutionBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SecretScanningAlertResolution build() {
    final _$result = _$v ?? new _$SecretScanningAlertResolution._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
