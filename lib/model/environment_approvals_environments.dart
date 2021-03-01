//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'environment_approvals_environments.g.dart';

abstract class EnvironmentApprovalsEnvironments implements Built<EnvironmentApprovalsEnvironments, EnvironmentApprovalsEnvironmentsBuilder> {

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

    // Boilerplate code needed to wire-up generated code
    EnvironmentApprovalsEnvironments._();

    static void _initializeBuilder(EnvironmentApprovalsEnvironmentsBuilder b) => b;

    factory EnvironmentApprovalsEnvironments([void updates(EnvironmentApprovalsEnvironmentsBuilder b)]) = _$EnvironmentApprovalsEnvironments;
    static Serializer<EnvironmentApprovalsEnvironments> get serializer => _$environmentApprovalsEnvironmentsSerializer;
}

