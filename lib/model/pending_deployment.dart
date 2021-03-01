//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/pending_deployment_environment.dart';
import 'package:built_collection/built_collection.dart';
import 'package:github/model/pending_deployment_reviewers.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pending_deployment.g.dart';

abstract class PendingDeployment implements Built<PendingDeployment, PendingDeploymentBuilder> {

    @nullable
    @BuiltValueField(wireName: r'environment')
    PendingDeploymentEnvironment get environment;

    /// The set duration of the wait timer
    @nullable
    @BuiltValueField(wireName: r'wait_timer')
    int get waitTimer;

    /// The time that the wait timer began.
    @nullable
    @BuiltValueField(wireName: r'wait_timer_started_at')
    DateTime get waitTimerStartedAt;

    /// Whether the currently authenticated user can approve the deployment
    @nullable
    @BuiltValueField(wireName: r'current_user_can_approve')
    bool get currentUserCanApprove;

    /// The people or teams that may approve jobs that reference the environment. You can list up to six users or teams as reviewers. The reviewers must have at least read access to the repository. Only one of the required reviewers needs to approve the job for it to proceed.
    @nullable
    @BuiltValueField(wireName: r'reviewers')
    BuiltList<PendingDeploymentReviewers> get reviewers;

    // Boilerplate code needed to wire-up generated code
    PendingDeployment._();

    static void _initializeBuilder(PendingDeploymentBuilder b) => b;

    factory PendingDeployment([void updates(PendingDeploymentBuilder b)]) = _$PendingDeployment;
    static Serializer<PendingDeployment> get serializer => _$pendingDeploymentSerializer;
}

