//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/deployment_branch_policy.dart';
import 'package:built_collection/built_collection.dart';
import 'package:github/model/any_ofobjectobjectobject.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'environment.g.dart';

abstract class Environment implements Built<Environment, EnvironmentBuilder> {

    /// The id of the environment.
    @nullable
    @BuiltValueField(wireName: r'id')
    int get id;

    @nullable
    @BuiltValueField(wireName: r'node_id')
    String get nodeId;

    /// The name of the environment.
    @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    @nullable
    @BuiltValueField(wireName: r'html_url')
    String get htmlUrl;

    /// The time that the environment was created, in ISO 8601 format.
    @nullable
    @BuiltValueField(wireName: r'created_at')
    DateTime get createdAt;

    /// The time that the environment was last updated, in ISO 8601 format.
    @nullable
    @BuiltValueField(wireName: r'updated_at')
    DateTime get updatedAt;

    @nullable
    @BuiltValueField(wireName: r'protection_rules')
    BuiltList<AnyOfobjectobjectobject> get protectionRules;

    @nullable
    @BuiltValueField(wireName: r'deployment_branch_policy')
    DeploymentBranchPolicy get deploymentBranchPolicy;

    // Boilerplate code needed to wire-up generated code
    Environment._();

    static void _initializeBuilder(EnvironmentBuilder b) => b;

    factory Environment([void updates(EnvironmentBuilder b)]) = _$Environment;
    static Serializer<Environment> get serializer => _$environmentSerializer;
}

