//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pending_deployment_environment.g.dart';

abstract class PendingDeploymentEnvironment implements Built<PendingDeploymentEnvironment, PendingDeploymentEnvironmentBuilder> {

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

    // Boilerplate code needed to wire-up generated code
    PendingDeploymentEnvironment._();

    static void _initializeBuilder(PendingDeploymentEnvironmentBuilder b) => b;

    factory PendingDeploymentEnvironment([void updates(PendingDeploymentEnvironmentBuilder b)]) = _$PendingDeploymentEnvironment;
    static Serializer<PendingDeploymentEnvironment> get serializer => _$pendingDeploymentEnvironmentSerializer;
}

