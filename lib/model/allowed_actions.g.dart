// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'allowed_actions.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AllowedActions _$all = const AllowedActions._('all');
const AllowedActions _$localOnly = const AllowedActions._('localOnly');
const AllowedActions _$selected = const AllowedActions._('selected');

AllowedActions _$valueOf(String name) {
  switch (name) {
    case 'all':
      return _$all;
    case 'localOnly':
      return _$localOnly;
    case 'selected':
      return _$selected;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<AllowedActions> _$values =
    new BuiltSet<AllowedActions>(const <AllowedActions>[
  _$all,
  _$localOnly,
  _$selected,
]);

class _$AllowedActionsMeta {
  const _$AllowedActionsMeta();
  AllowedActions get all => _$all;
  AllowedActions get localOnly => _$localOnly;
  AllowedActions get selected => _$selected;
  AllowedActions valueOf(String name) => _$valueOf(name);
  BuiltSet<AllowedActions> get values => _$values;
}

abstract class _$AllowedActionsMixin {
  // ignore: non_constant_identifier_names
  _$AllowedActionsMeta get AllowedActions => const _$AllowedActionsMeta();
}

Serializer<AllowedActions> _$allowedActionsSerializer =
    new _$AllowedActionsSerializer();

class _$AllowedActionsSerializer
    implements PrimitiveSerializer<AllowedActions> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'all': 'all',
    'localOnly': 'local_only',
    'selected': 'selected',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'all': 'all',
    'local_only': 'localOnly',
    'selected': 'selected',
  };

  @override
  final Iterable<Type> types = const <Type>[AllowedActions];
  @override
  final String wireName = 'AllowedActions';

  @override
  Object serialize(Serializers serializers, AllowedActions object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  AllowedActions deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      AllowedActions.valueOf(_fromWire[serialized] ?? serialized as String);
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
