// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'deployment_reviewer_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const DeploymentReviewerType _$user = const DeploymentReviewerType._('user');
const DeploymentReviewerType _$team = const DeploymentReviewerType._('team');

DeploymentReviewerType _$valueOf(String name) {
  switch (name) {
    case 'user':
      return _$user;
    case 'team':
      return _$team;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<DeploymentReviewerType> _$values =
    new BuiltSet<DeploymentReviewerType>(const <DeploymentReviewerType>[
  _$user,
  _$team,
]);

class _$DeploymentReviewerTypeMeta {
  const _$DeploymentReviewerTypeMeta();
  DeploymentReviewerType get user => _$user;
  DeploymentReviewerType get team => _$team;
  DeploymentReviewerType valueOf(String name) => _$valueOf(name);
  BuiltSet<DeploymentReviewerType> get values => _$values;
}

abstract class _$DeploymentReviewerTypeMixin {
  // ignore: non_constant_identifier_names
  _$DeploymentReviewerTypeMeta get DeploymentReviewerType =>
      const _$DeploymentReviewerTypeMeta();
}

Serializer<DeploymentReviewerType> _$deploymentReviewerTypeSerializer =
    new _$DeploymentReviewerTypeSerializer();

class _$DeploymentReviewerTypeSerializer
    implements PrimitiveSerializer<DeploymentReviewerType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'user': 'User',
    'team': 'Team',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'User': 'user',
    'Team': 'team',
  };

  @override
  final Iterable<Type> types = const <Type>[DeploymentReviewerType];
  @override
  final String wireName = 'DeploymentReviewerType';

  @override
  Object serialize(Serializers serializers, DeploymentReviewerType object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  DeploymentReviewerType deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      DeploymentReviewerType.valueOf(
          _fromWire[serialized] ?? serialized as String);
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
