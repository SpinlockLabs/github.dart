//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'code_scanning_alert_rule.g.dart';

abstract class CodeScanningAlertRule implements Built<CodeScanningAlertRule, CodeScanningAlertRuleBuilder> {

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
    CodeScanningAlertRuleSeverityEnum get severity;
    // enum severityEnum {  none,  note,  warning,  error,  };

    /// A short description of the rule used to detect the alert.
    @nullable
    @BuiltValueField(wireName: r'description')
    String get description;

    /// description of the rule used to detect the alert.
    @nullable
    @BuiltValueField(wireName: r'full_description')
    String get fullDescription;

    /// A set of tags applicable for the rule.
    @nullable
    @BuiltValueField(wireName: r'tags')
    BuiltList<String> get tags;

    /// Detailed documentation for the rule as GitHub Flavored Markdown.
    @nullable
    @BuiltValueField(wireName: r'help')
    String get help;

    // Boilerplate code needed to wire-up generated code
    CodeScanningAlertRule._();

    static void _initializeBuilder(CodeScanningAlertRuleBuilder b) => b;

    factory CodeScanningAlertRule([void updates(CodeScanningAlertRuleBuilder b)]) = _$CodeScanningAlertRule;
    static Serializer<CodeScanningAlertRule> get serializer => _$codeScanningAlertRuleSerializer;
}

class CodeScanningAlertRuleSeverityEnum extends EnumClass {

  /// The severity of the alert.
  @BuiltValueEnumConst(wireName: r'none')
  static const CodeScanningAlertRuleSeverityEnum none = _$codeScanningAlertRuleSeverityEnum_none;
  /// The severity of the alert.
  @BuiltValueEnumConst(wireName: r'note')
  static const CodeScanningAlertRuleSeverityEnum note = _$codeScanningAlertRuleSeverityEnum_note;
  /// The severity of the alert.
  @BuiltValueEnumConst(wireName: r'warning')
  static const CodeScanningAlertRuleSeverityEnum warning = _$codeScanningAlertRuleSeverityEnum_warning;
  /// The severity of the alert.
  @BuiltValueEnumConst(wireName: r'error')
  static const CodeScanningAlertRuleSeverityEnum error = _$codeScanningAlertRuleSeverityEnum_error;

  static Serializer<CodeScanningAlertRuleSeverityEnum> get serializer => _$codeScanningAlertRuleSeverityEnumSerializer;

  const CodeScanningAlertRuleSeverityEnum._(String name): super(name);

  static BuiltSet<CodeScanningAlertRuleSeverityEnum> get values => _$codeScanningAlertRuleSeverityEnumValues;
  static CodeScanningAlertRuleSeverityEnum valueOf(String name) => _$codeScanningAlertRuleSeverityEnumValueOf(name);
}

