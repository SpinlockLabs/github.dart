//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'code_scanning_alert_rule_summary.g.dart';

abstract class CodeScanningAlertRuleSummary implements Built<CodeScanningAlertRuleSummary, CodeScanningAlertRuleSummaryBuilder> {

    /// A unique identifier for the rule used to detect the alert.
    @nullable
    @BuiltValueField(wireName: r'id')
    String get id;

    /// The name of the rule used to detect the alert.
    @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    /// The severity of the alert.
    @nullable
    @BuiltValueField(wireName: r'severity')
    CodeScanningAlertRuleSummarySeverityEnum get severity;
    // enum severityEnum {  none,  note,  warning,  error,  };

    /// A short description of the rule used to detect the alert.
    @nullable
    @BuiltValueField(wireName: r'description')
    String get description;

    // Boilerplate code needed to wire-up generated code
    CodeScanningAlertRuleSummary._();

    static void _initializeBuilder(CodeScanningAlertRuleSummaryBuilder b) => b;

    factory CodeScanningAlertRuleSummary([void updates(CodeScanningAlertRuleSummaryBuilder b)]) = _$CodeScanningAlertRuleSummary;
    static Serializer<CodeScanningAlertRuleSummary> get serializer => _$codeScanningAlertRuleSummarySerializer;
}

class CodeScanningAlertRuleSummarySeverityEnum extends EnumClass {

  /// The severity of the alert.
  @BuiltValueEnumConst(wireName: r'none')
  static const CodeScanningAlertRuleSummarySeverityEnum none = _$codeScanningAlertRuleSummarySeverityEnum_none;
  /// The severity of the alert.
  @BuiltValueEnumConst(wireName: r'note')
  static const CodeScanningAlertRuleSummarySeverityEnum note = _$codeScanningAlertRuleSummarySeverityEnum_note;
  /// The severity of the alert.
  @BuiltValueEnumConst(wireName: r'warning')
  static const CodeScanningAlertRuleSummarySeverityEnum warning = _$codeScanningAlertRuleSummarySeverityEnum_warning;
  /// The severity of the alert.
  @BuiltValueEnumConst(wireName: r'error')
  static const CodeScanningAlertRuleSummarySeverityEnum error = _$codeScanningAlertRuleSummarySeverityEnum_error;

  static Serializer<CodeScanningAlertRuleSummarySeverityEnum> get serializer => _$codeScanningAlertRuleSummarySeverityEnumSerializer;

  const CodeScanningAlertRuleSummarySeverityEnum._(String name): super(name);

  static BuiltSet<CodeScanningAlertRuleSummarySeverityEnum> get values => _$codeScanningAlertRuleSummarySeverityEnumValues;
  static CodeScanningAlertRuleSummarySeverityEnum valueOf(String name) => _$codeScanningAlertRuleSummarySeverityEnumValueOf(name);
}

