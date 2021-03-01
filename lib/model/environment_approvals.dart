//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:github/model/environment_approvals_environments.dart';
import 'package:github/model/simple_user.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'environment_approvals.g.dart';

abstract class EnvironmentApprovals implements Built<EnvironmentApprovals, EnvironmentApprovalsBuilder> {

    /// The list of environments that were approved or rejected
    @nullable
    @BuiltValueField(wireName: r'environments')
    BuiltList<EnvironmentApprovalsEnvironments> get environments;

    /// Whether deployment to the environment(s) was approved or rejected
    @nullable
    @BuiltValueField(wireName: r'state')
    EnvironmentApprovalsStateEnum get state;
    // enum stateEnum {  approved,  rejected,  };

    @nullable
    @BuiltValueField(wireName: r'user')
    SimpleUser get user;

    /// The comment submitted with the deployment review
    @nullable
    @BuiltValueField(wireName: r'comment')
    String get comment;

    // Boilerplate code needed to wire-up generated code
    EnvironmentApprovals._();

    static void _initializeBuilder(EnvironmentApprovalsBuilder b) => b;

    factory EnvironmentApprovals([void updates(EnvironmentApprovalsBuilder b)]) = _$EnvironmentApprovals;
    static Serializer<EnvironmentApprovals> get serializer => _$environmentApprovalsSerializer;
}

class EnvironmentApprovalsStateEnum extends EnumClass {

  /// Whether deployment to the environment(s) was approved or rejected
  @BuiltValueEnumConst(wireName: r'approved')
  static const EnvironmentApprovalsStateEnum approved = _$environmentApprovalsStateEnum_approved;
  /// Whether deployment to the environment(s) was approved or rejected
  @BuiltValueEnumConst(wireName: r'rejected')
  static const EnvironmentApprovalsStateEnum rejected = _$environmentApprovalsStateEnum_rejected;

  static Serializer<EnvironmentApprovalsStateEnum> get serializer => _$environmentApprovalsStateEnumSerializer;

  const EnvironmentApprovalsStateEnum._(String name): super(name);

  static BuiltSet<EnvironmentApprovalsStateEnum> get values => _$environmentApprovalsStateEnumValues;
  static EnvironmentApprovalsStateEnum valueOf(String name) => _$environmentApprovalsStateEnumValueOf(name);
}

