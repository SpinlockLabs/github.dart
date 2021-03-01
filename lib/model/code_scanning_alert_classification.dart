//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'code_scanning_alert_classification.g.dart';

class CodeScanningAlertClassification extends EnumClass {

  /// A classification of the file. For example to identify it as generated.
  @BuiltValueEnumConst(wireName: r'source')
  static const CodeScanningAlertClassification source_ = _$source_;
  /// A classification of the file. For example to identify it as generated.
  @BuiltValueEnumConst(wireName: r'generated')
  static const CodeScanningAlertClassification generated = _$generated;
  /// A classification of the file. For example to identify it as generated.
  @BuiltValueEnumConst(wireName: r'test')
  static const CodeScanningAlertClassification test = _$test;
  /// A classification of the file. For example to identify it as generated.
  @BuiltValueEnumConst(wireName: r'library')
  static const CodeScanningAlertClassification library_ = _$library_;

  static Serializer<CodeScanningAlertClassification> get serializer => _$codeScanningAlertClassificationSerializer;

  const CodeScanningAlertClassification._(String name): super(name);

  static BuiltSet<CodeScanningAlertClassification> get values => _$values;
  static CodeScanningAlertClassification valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class CodeScanningAlertClassificationMixin = Object with _$CodeScanningAlertClassificationMixin;

