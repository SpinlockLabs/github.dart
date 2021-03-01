// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'interaction_group.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const InteractionGroup _$existingUsers =
    const InteractionGroup._('existingUsers');
const InteractionGroup _$contributorsOnly =
    const InteractionGroup._('contributorsOnly');
const InteractionGroup _$collaboratorsOnly =
    const InteractionGroup._('collaboratorsOnly');

InteractionGroup _$valueOf(String name) {
  switch (name) {
    case 'existingUsers':
      return _$existingUsers;
    case 'contributorsOnly':
      return _$contributorsOnly;
    case 'collaboratorsOnly':
      return _$collaboratorsOnly;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<InteractionGroup> _$values =
    new BuiltSet<InteractionGroup>(const <InteractionGroup>[
  _$existingUsers,
  _$contributorsOnly,
  _$collaboratorsOnly,
]);

class _$InteractionGroupMeta {
  const _$InteractionGroupMeta();
  InteractionGroup get existingUsers => _$existingUsers;
  InteractionGroup get contributorsOnly => _$contributorsOnly;
  InteractionGroup get collaboratorsOnly => _$collaboratorsOnly;
  InteractionGroup valueOf(String name) => _$valueOf(name);
  BuiltSet<InteractionGroup> get values => _$values;
}

abstract class _$InteractionGroupMixin {
  // ignore: non_constant_identifier_names
  _$InteractionGroupMeta get InteractionGroup => const _$InteractionGroupMeta();
}

Serializer<InteractionGroup> _$interactionGroupSerializer =
    new _$InteractionGroupSerializer();

class _$InteractionGroupSerializer
    implements PrimitiveSerializer<InteractionGroup> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'existingUsers': 'existing_users',
    'contributorsOnly': 'contributors_only',
    'collaboratorsOnly': 'collaborators_only',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'existing_users': 'existingUsers',
    'contributors_only': 'contributorsOnly',
    'collaborators_only': 'collaboratorsOnly',
  };

  @override
  final Iterable<Type> types = const <Type>[InteractionGroup];
  @override
  final String wireName = 'InteractionGroup';

  @override
  Object serialize(Serializers serializers, InteractionGroup object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  InteractionGroup deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      InteractionGroup.valueOf(_fromWire[serialized] ?? serialized as String);
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
