//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/repos_owner_repo_environments_environment_name_reviewers.dart';
import 'package:github/model/deployment_branch_policy.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object94.g.dart';

abstract class InlineObject94 implements Built<InlineObject94, InlineObject94Builder> {

    /// The amount of time to delay a job after the job is initially triggered. The time (in minutes) must be an integer between 0 and 43,200 (30 days).
    @nullable
    @BuiltValueField(wireName: r'wait_timer')
    int get waitTimer;

    /// The people or teams that may review jobs that reference the environment. You can list up to six users or teams as reviewers. The reviewers must have at least read access to the repository. Only one of the required reviewers needs to approve the job for it to proceed.
    @nullable
    @BuiltValueField(wireName: r'reviewers')
    BuiltList<ReposOwnerRepoEnvironmentsEnvironmentNameReviewers> get reviewers;

    @nullable
    @BuiltValueField(wireName: r'deployment_branch_policy')
    DeploymentBranchPolicy get deploymentBranchPolicy;

    // Boilerplate code needed to wire-up generated code
    InlineObject94._();

    static void _initializeBuilder(InlineObject94Builder b) => b;

    factory InlineObject94([void updates(InlineObject94Builder b)]) = _$InlineObject94;
    static Serializer<InlineObject94> get serializer => _$inlineObject94Serializer;
}

