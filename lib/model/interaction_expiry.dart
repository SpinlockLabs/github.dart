//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'interaction_expiry.g.dart';

class InteractionExpiry extends EnumClass {

  /// The duration of the interaction restriction. Can be one of: `one_day`, `three_days`, `one_week`, `one_month`, `six_months`. Default: `one_day`.
  @BuiltValueEnumConst(wireName: r'one_day')
  static const InteractionExpiry oneDay = _$oneDay;
  /// The duration of the interaction restriction. Can be one of: `one_day`, `three_days`, `one_week`, `one_month`, `six_months`. Default: `one_day`.
  @BuiltValueEnumConst(wireName: r'three_days')
  static const InteractionExpiry threeDays = _$threeDays;
  /// The duration of the interaction restriction. Can be one of: `one_day`, `three_days`, `one_week`, `one_month`, `six_months`. Default: `one_day`.
  @BuiltValueEnumConst(wireName: r'one_week')
  static const InteractionExpiry oneWeek = _$oneWeek;
  /// The duration of the interaction restriction. Can be one of: `one_day`, `three_days`, `one_week`, `one_month`, `six_months`. Default: `one_day`.
  @BuiltValueEnumConst(wireName: r'one_month')
  static const InteractionExpiry oneMonth = _$oneMonth;
  /// The duration of the interaction restriction. Can be one of: `one_day`, `three_days`, `one_week`, `one_month`, `six_months`. Default: `one_day`.
  @BuiltValueEnumConst(wireName: r'six_months')
  static const InteractionExpiry sixMonths = _$sixMonths;

  static Serializer<InteractionExpiry> get serializer => _$interactionExpirySerializer;

  const InteractionExpiry._(String name): super(name);

  static BuiltSet<InteractionExpiry> get values => _$values;
  static InteractionExpiry valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class InteractionExpiryMixin = Object with _$InteractionExpiryMixin;

