// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'code_scanning_alert_dismissed_reason.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CodeScanningAlertDismissedReason>
    _$codeScanningAlertDismissedReasonSerializer =
    new _$CodeScanningAlertDismissedReasonSerializer();

class _$CodeScanningAlertDismissedReasonSerializer
    implements StructuredSerializer<CodeScanningAlertDismissedReason> {
  @override
  final Iterable<Type> types = const [
    CodeScanningAlertDismissedReason,
    _$CodeScanningAlertDismissedReason
  ];
  @override
  final String wireName = 'CodeScanningAlertDismissedReason';

  @override
  Iterable<Object> serialize(
      Serializers serializers, CodeScanningAlertDismissedReason object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object>[];
  }

  @override
  CodeScanningAlertDismissedReason deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new CodeScanningAlertDismissedReasonBuilder().build();
  }
}

class _$CodeScanningAlertDismissedReason
    extends CodeScanningAlertDismissedReason {
  factory _$CodeScanningAlertDismissedReason(
          [void Function(CodeScanningAlertDismissedReasonBuilder) updates]) =>
      (new CodeScanningAlertDismissedReasonBuilder()..update(updates)).build();

  _$CodeScanningAlertDismissedReason._() : super._();

  @override
  CodeScanningAlertDismissedReason rebuild(
          void Function(CodeScanningAlertDismissedReasonBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CodeScanningAlertDismissedReasonBuilder toBuilder() =>
      new CodeScanningAlertDismissedReasonBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CodeScanningAlertDismissedReason;
  }

  @override
  int get hashCode {
    return 327283246;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('CodeScanningAlertDismissedReason')
        .toString();
  }
}

class CodeScanningAlertDismissedReasonBuilder
    implements
        Builder<CodeScanningAlertDismissedReason,
            CodeScanningAlertDismissedReasonBuilder> {
  _$CodeScanningAlertDismissedReason _$v;

  CodeScanningAlertDismissedReasonBuilder() {
    CodeScanningAlertDismissedReason._initializeBuilder(this);
  }

  @override
  void replace(CodeScanningAlertDismissedReason other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CodeScanningAlertDismissedReason;
  }

  @override
  void update(void Function(CodeScanningAlertDismissedReasonBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CodeScanningAlertDismissedReason build() {
    final _$result = _$v ?? new _$CodeScanningAlertDismissedReason._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
