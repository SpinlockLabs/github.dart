//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:github/model/one_ofmapstring.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object91.g.dart';

abstract class InlineObject91 implements Built<InlineObject91, InlineObject91Builder> {

    /// The ref to deploy. This can be a branch, tag, or SHA.
    @nullable
    @BuiltValueField(wireName: r'ref')
    String get ref;

    /// Specifies a task to execute (e.g., `deploy` or `deploy:migrations`).
    @nullable
    @BuiltValueField(wireName: r'task')
    String get task;

    /// Attempts to automatically merge the default branch into the requested ref, if it's behind the default branch.
    @nullable
    @BuiltValueField(wireName: r'auto_merge')
    bool get autoMerge;

    /// The [status](https://docs.github.com/rest/reference/repos#statuses) contexts to verify against commit status checks. If you omit this parameter, GitHub verifies all unique contexts before creating a deployment. To bypass checking entirely, pass an empty array. Defaults to all unique contexts.
    @nullable
    @BuiltValueField(wireName: r'required_contexts')
    BuiltList<String> get requiredContexts;

    @nullable
    @BuiltValueField(wireName: r'payload')
    OneOfmapstring get payload;

    /// Name for the target deployment environment (e.g., `production`, `staging`, `qa`).
    @nullable
    @BuiltValueField(wireName: r'environment')
    String get environment;

    /// Short description of the deployment.
    @nullable
    @BuiltValueField(wireName: r'description')
    String get description;

    /// Specifies if the given environment is specific to the deployment and will no longer exist at some point in the future. Default: `false`   **Note:** This parameter requires you to use the [`application/vnd.github.ant-man-preview+json`](https://docs.github.com/rest/overview/api-previews#enhanced-deployments) custom media type. **Note:** This parameter requires you to use the [`application/vnd.github.ant-man-preview+json`](https://docs.github.com/rest/overview/api-previews#enhanced-deployments) custom media type.
    @nullable
    @BuiltValueField(wireName: r'transient_environment')
    bool get transientEnvironment;

    /// Specifies if the given environment is one that end-users directly interact with. Default: `true` when `environment` is `production` and `false` otherwise.   **Note:** This parameter requires you to use the [`application/vnd.github.ant-man-preview+json`](https://docs.github.com/rest/overview/api-previews#enhanced-deployments) custom media type.
    @nullable
    @BuiltValueField(wireName: r'production_environment')
    bool get productionEnvironment;

    @nullable
    @BuiltValueField(wireName: r'created_at')
    String get createdAt;

    // Boilerplate code needed to wire-up generated code
    InlineObject91._();

    static void _initializeBuilder(InlineObject91Builder b) => b
        ..task = 'deploy'
        ..autoMerge = true
        ..environment = 'production'
        ..description = ''
        ..transientEnvironment = false;

    factory InlineObject91([void updates(InlineObject91Builder b)]) = _$InlineObject91;
    static Serializer<InlineObject91> get serializer => _$inlineObject91Serializer;
}

