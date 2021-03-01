//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/integration.dart';
import 'package:github/model/simple_user.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'deployment.g.dart';

abstract class Deployment implements Built<Deployment, DeploymentBuilder> {

    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    /// Unique identifier of the deployment
    @nullable
    @BuiltValueField(wireName: r'id')
    int get id;

    @nullable
    @BuiltValueField(wireName: r'node_id')
    String get nodeId;

    @nullable
    @BuiltValueField(wireName: r'sha')
    String get sha;

    /// The ref to deploy. This can be a branch, tag, or sha.
    @nullable
    @BuiltValueField(wireName: r'ref')
    String get ref;

    /// Parameter to specify a task to execute
    @nullable
    @BuiltValueField(wireName: r'task')
    String get task;

    @nullable
    @BuiltValueField(wireName: r'payload')
    JsonObject get payload;

    @nullable
    @BuiltValueField(wireName: r'original_environment')
    String get originalEnvironment;

    /// Name for the target deployment environment.
    @nullable
    @BuiltValueField(wireName: r'environment')
    String get environment;

    @nullable
    @BuiltValueField(wireName: r'description')
    String get description;

    @nullable
    @BuiltValueField(wireName: r'creator')
    SimpleUser get creator;

    @nullable
    @BuiltValueField(wireName: r'created_at')
    DateTime get createdAt;

    @nullable
    @BuiltValueField(wireName: r'updated_at')
    DateTime get updatedAt;

    @nullable
    @BuiltValueField(wireName: r'statuses_url')
    String get statusesUrl;

    @nullable
    @BuiltValueField(wireName: r'repository_url')
    String get repositoryUrl;

    /// Specifies if the given environment is will no longer exist at some point in the future. Default: false.
    @nullable
    @BuiltValueField(wireName: r'transient_environment')
    bool get transientEnvironment;

    /// Specifies if the given environment is one that end-users directly interact with. Default: false.
    @nullable
    @BuiltValueField(wireName: r'production_environment')
    bool get productionEnvironment;

    @nullable
    @BuiltValueField(wireName: r'performed_via_github_app')
    Integration get performedViaGithubApp;

    // Boilerplate code needed to wire-up generated code
    Deployment._();

    static void _initializeBuilder(DeploymentBuilder b) => b;

    factory Deployment([void updates(DeploymentBuilder b)]) = _$Deployment;
    static Serializer<Deployment> get serializer => _$deploymentSerializer;
}

