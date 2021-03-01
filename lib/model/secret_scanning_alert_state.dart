//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'secret_scanning_alert_state.g.dart';

class SecretScanningAlertState extends EnumClass {

  /// Sets the state of the secret scanning alert. Can be either `open` or `resolved`. You must provide `resolution` when you set the state to `resolved`.
  @BuiltValueEnumConst(wireName: r'open')
  static const SecretScanningAlertState open = _$open;
  /// Sets the state of the secret scanning alert. Can be either `open` or `resolved`. You must provide `resolution` when you set the state to `resolved`.
  @BuiltValueEnumConst(wireName: r'resolved')
  static const SecretScanningAlertState resolved = _$resolved;

  static Serializer<SecretScanningAlertState> get serializer => _$secretScanningAlertStateSerializer;

  const SecretScanningAlertState._(String name): super(name);

  static BuiltSet<SecretScanningAlertState> get values => _$values;
  static SecretScanningAlertState valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class SecretScanningAlertStateMixin = Object with _$SecretScanningAlertStateMixin;

