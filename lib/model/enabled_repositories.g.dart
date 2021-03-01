// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'enabled_repositories.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const EnabledRepositories _$all = const EnabledRepositories._('all');
const EnabledRepositories _$none = const EnabledRepositories._('none');
const EnabledRepositories _$selected = const EnabledRepositories._('selected');

EnabledRepositories _$valueOf(String name) {
  switch (name) {
    case 'all':
      return _$all;
    case 'none':
      return _$none;
    case 'selected':
      return _$selected;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<EnabledRepositories> _$values =
    new BuiltSet<EnabledRepositories>(const <EnabledRepositories>[
  _$all,
  _$none,
  _$selected,
]);

class _$EnabledRepositoriesMeta {
  const _$EnabledRepositoriesMeta();
  EnabledRepositories get all => _$all;
  EnabledRepositories get none => _$none;
  EnabledRepositories get selected => _$selected;
  EnabledRepositories valueOf(String name) => _$valueOf(name);
  BuiltSet<EnabledRepositories> get values => _$values;
}

abstract class _$EnabledRepositoriesMixin {
  // ignore: non_constant_identifier_names
  _$EnabledRepositoriesMeta get EnabledRepositories =>
      const _$EnabledRepositoriesMeta();
}

Serializer<EnabledRepositories> _$enabledRepositoriesSerializer =
    new _$EnabledRepositoriesSerializer();

class _$EnabledRepositoriesSerializer
    implements PrimitiveSerializer<EnabledRepositories> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'all': 'all',
    'none': 'none',
    'selected': 'selected',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'all': 'all',
    'none': 'none',
    'selected': 'selected',
  };

  @override
  final Iterable<Type> types = const <Type>[EnabledRepositories];
  @override
  final String wireName = 'EnabledRepositories';

  @override
  Object serialize(Serializers serializers, EnabledRepositories object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  EnabledRepositories deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      EnabledRepositories.valueOf(
          _fromWire[serialized] ?? serialized as String);
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
