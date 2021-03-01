// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'author_association.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AuthorAssociation _$COLLABORATOR =
    const AuthorAssociation._('COLLABORATOR');
const AuthorAssociation _$CONTRIBUTOR =
    const AuthorAssociation._('CONTRIBUTOR');
const AuthorAssociation _$FIRST_TIMER =
    const AuthorAssociation._('FIRST_TIMER');
const AuthorAssociation _$FIRST_TIME_CONTRIBUTOR =
    const AuthorAssociation._('FIRST_TIME_CONTRIBUTOR');
const AuthorAssociation _$MANNEQUIN = const AuthorAssociation._('MANNEQUIN');
const AuthorAssociation _$MEMBER = const AuthorAssociation._('MEMBER');
const AuthorAssociation _$NONE = const AuthorAssociation._('NONE');
const AuthorAssociation _$OWNER = const AuthorAssociation._('OWNER');

AuthorAssociation _$valueOf(String name) {
  switch (name) {
    case 'COLLABORATOR':
      return _$COLLABORATOR;
    case 'CONTRIBUTOR':
      return _$CONTRIBUTOR;
    case 'FIRST_TIMER':
      return _$FIRST_TIMER;
    case 'FIRST_TIME_CONTRIBUTOR':
      return _$FIRST_TIME_CONTRIBUTOR;
    case 'MANNEQUIN':
      return _$MANNEQUIN;
    case 'MEMBER':
      return _$MEMBER;
    case 'NONE':
      return _$NONE;
    case 'OWNER':
      return _$OWNER;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<AuthorAssociation> _$values =
    new BuiltSet<AuthorAssociation>(const <AuthorAssociation>[
  _$COLLABORATOR,
  _$CONTRIBUTOR,
  _$FIRST_TIMER,
  _$FIRST_TIME_CONTRIBUTOR,
  _$MANNEQUIN,
  _$MEMBER,
  _$NONE,
  _$OWNER,
]);

class _$AuthorAssociationMeta {
  const _$AuthorAssociationMeta();
  AuthorAssociation get COLLABORATOR => _$COLLABORATOR;
  AuthorAssociation get CONTRIBUTOR => _$CONTRIBUTOR;
  AuthorAssociation get FIRST_TIMER => _$FIRST_TIMER;
  AuthorAssociation get FIRST_TIME_CONTRIBUTOR => _$FIRST_TIME_CONTRIBUTOR;
  AuthorAssociation get MANNEQUIN => _$MANNEQUIN;
  AuthorAssociation get MEMBER => _$MEMBER;
  AuthorAssociation get NONE => _$NONE;
  AuthorAssociation get OWNER => _$OWNER;
  AuthorAssociation valueOf(String name) => _$valueOf(name);
  BuiltSet<AuthorAssociation> get values => _$values;
}

abstract class _$AuthorAssociationMixin {
  // ignore: non_constant_identifier_names
  _$AuthorAssociationMeta get AuthorAssociation =>
      const _$AuthorAssociationMeta();
}

Serializer<AuthorAssociation> _$authorAssociationSerializer =
    new _$AuthorAssociationSerializer();

class _$AuthorAssociationSerializer
    implements PrimitiveSerializer<AuthorAssociation> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'COLLABORATOR': 'COLLABORATOR',
    'CONTRIBUTOR': 'CONTRIBUTOR',
    'FIRST_TIMER': 'FIRST_TIMER',
    'FIRST_TIME_CONTRIBUTOR': 'FIRST_TIME_CONTRIBUTOR',
    'MANNEQUIN': 'MANNEQUIN',
    'MEMBER': 'MEMBER',
    'NONE': 'NONE',
    'OWNER': 'OWNER',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'COLLABORATOR': 'COLLABORATOR',
    'CONTRIBUTOR': 'CONTRIBUTOR',
    'FIRST_TIMER': 'FIRST_TIMER',
    'FIRST_TIME_CONTRIBUTOR': 'FIRST_TIME_CONTRIBUTOR',
    'MANNEQUIN': 'MANNEQUIN',
    'MEMBER': 'MEMBER',
    'NONE': 'NONE',
    'OWNER': 'OWNER',
  };

  @override
  final Iterable<Type> types = const <Type>[AuthorAssociation];
  @override
  final String wireName = 'AuthorAssociation';

  @override
  Object serialize(Serializers serializers, AuthorAssociation object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  AuthorAssociation deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      AuthorAssociation.valueOf(_fromWire[serialized] ?? serialized as String);
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
