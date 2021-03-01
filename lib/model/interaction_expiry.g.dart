// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'interaction_expiry.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const InteractionExpiry _$oneDay = const InteractionExpiry._('oneDay');
const InteractionExpiry _$threeDays = const InteractionExpiry._('threeDays');
const InteractionExpiry _$oneWeek = const InteractionExpiry._('oneWeek');
const InteractionExpiry _$oneMonth = const InteractionExpiry._('oneMonth');
const InteractionExpiry _$sixMonths = const InteractionExpiry._('sixMonths');

InteractionExpiry _$valueOf(String name) {
  switch (name) {
    case 'oneDay':
      return _$oneDay;
    case 'threeDays':
      return _$threeDays;
    case 'oneWeek':
      return _$oneWeek;
    case 'oneMonth':
      return _$oneMonth;
    case 'sixMonths':
      return _$sixMonths;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<InteractionExpiry> _$values =
    new BuiltSet<InteractionExpiry>(const <InteractionExpiry>[
  _$oneDay,
  _$threeDays,
  _$oneWeek,
  _$oneMonth,
  _$sixMonths,
]);

class _$InteractionExpiryMeta {
  const _$InteractionExpiryMeta();
  InteractionExpiry get oneDay => _$oneDay;
  InteractionExpiry get threeDays => _$threeDays;
  InteractionExpiry get oneWeek => _$oneWeek;
  InteractionExpiry get oneMonth => _$oneMonth;
  InteractionExpiry get sixMonths => _$sixMonths;
  InteractionExpiry valueOf(String name) => _$valueOf(name);
  BuiltSet<InteractionExpiry> get values => _$values;
}

abstract class _$InteractionExpiryMixin {
  // ignore: non_constant_identifier_names
  _$InteractionExpiryMeta get InteractionExpiry =>
      const _$InteractionExpiryMeta();
}

Serializer<InteractionExpiry> _$interactionExpirySerializer =
    new _$InteractionExpirySerializer();

class _$InteractionExpirySerializer
    implements PrimitiveSerializer<InteractionExpiry> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'oneDay': 'one_day',
    'threeDays': 'three_days',
    'oneWeek': 'one_week',
    'oneMonth': 'one_month',
    'sixMonths': 'six_months',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'one_day': 'oneDay',
    'three_days': 'threeDays',
    'one_week': 'oneWeek',
    'one_month': 'oneMonth',
    'six_months': 'sixMonths',
  };

  @override
  final Iterable<Type> types = const <Type>[InteractionExpiry];
  @override
  final String wireName = 'InteractionExpiry';

  @override
  Object serialize(Serializers serializers, InteractionExpiry object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  InteractionExpiry deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      InteractionExpiry.valueOf(_fromWire[serialized] ?? serialized as String);
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
