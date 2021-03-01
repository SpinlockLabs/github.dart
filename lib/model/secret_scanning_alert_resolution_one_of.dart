//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'secret_scanning_alert_resolution_one_of.g.dart';

class SecretScanningAlertResolutionOneOf extends EnumClass {

  @BuiltValueEnumConst(wireName: r'false_positive')
  static const SecretScanningAlertResolutionOneOf falsePositive = _$falsePositive;
  @BuiltValueEnumConst(wireName: r'wont_fix')
  static const SecretScanningAlertResolutionOneOf wontFix = _$wontFix;
  @BuiltValueEnumConst(wireName: r'revoked')
  static const SecretScanningAlertResolutionOneOf revoked = _$revoked;
  @BuiltValueEnumConst(wireName: r'used_in_tests')
  static const SecretScanningAlertResolutionOneOf usedInTests = _$usedInTests;

  static Serializer<SecretScanningAlertResolutionOneOf> get serializer => _$secretScanningAlertResolutionOneOfSerializer;

  const SecretScanningAlertResolutionOneOf._(String name): super(name);

  static BuiltSet<SecretScanningAlertResolutionOneOf> get values => _$values;
  static SecretScanningAlertResolutionOneOf valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class SecretScanningAlertResolutionOneOfMixin = Object with _$SecretScanningAlertResolutionOneOfMixin;

