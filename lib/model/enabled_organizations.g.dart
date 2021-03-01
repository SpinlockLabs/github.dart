// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'enabled_organizations.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const EnabledOrganizations _$all = const EnabledOrganizations._('all');
const EnabledOrganizations _$none = const EnabledOrganizations._('none');
const EnabledOrganizations _$selected =
    const EnabledOrganizations._('selected');

EnabledOrganizations _$valueOf(String name) {
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

final BuiltSet<EnabledOrganizations> _$values =
    new BuiltSet<EnabledOrganizations>(const <EnabledOrganizations>[
  _$all,
  _$none,
  _$selected,
]);

class _$EnabledOrganizationsMeta {
  const _$EnabledOrganizationsMeta();
  EnabledOrganizations get all => _$all;
  EnabledOrganizations get none => _$none;
  EnabledOrganizations get selected => _$selected;
  EnabledOrganizations valueOf(String name) => _$valueOf(name);
  BuiltSet<EnabledOrganizations> get values => _$values;
}

abstract class _$EnabledOrganizationsMixin {
  // ignore: non_constant_identifier_names
  _$EnabledOrganizationsMeta get EnabledOrganizations =>
      const _$EnabledOrganizationsMeta();
}

Serializer<EnabledOrganizations> _$enabledOrganizationsSerializer =
    new _$EnabledOrganizationsSerializer();

class _$EnabledOrganizationsSerializer
    implements PrimitiveSerializer<EnabledOrganizations> {
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
  final Iterable<Type> types = const <Type>[EnabledOrganizations];
  @override
  final String wireName = 'EnabledOrganizations';

  @override
  Object serialize(Serializers serializers, EnabledOrganizations object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  EnabledOrganizations deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      EnabledOrganizations.valueOf(
          _fromWire[serialized] ?? serialized as String);
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
