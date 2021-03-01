//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/any_ofsimple_userteam_simple.dart';
import 'package:github/model/deployment_reviewer_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pending_deployment_reviewers.g.dart';

abstract class PendingDeploymentReviewers implements Built<PendingDeploymentReviewers, PendingDeploymentReviewersBuilder> {

    @nullable
    @BuiltValueField(wireName: r'type')
    DeploymentReviewerType get type;
    // enum typeEnum {  User,  Team,  };

    @nullable
    @BuiltValueField(wireName: r'reviewer')
    AnyOfsimpleUserteamSimple get reviewer;

    // Boilerplate code needed to wire-up generated code
    PendingDeploymentReviewers._();

    static void _initializeBuilder(PendingDeploymentReviewersBuilder b) => b;

    factory PendingDeploymentReviewers([void updates(PendingDeploymentReviewersBuilder b)]) = _$PendingDeploymentReviewers;
    static Serializer<PendingDeploymentReviewers> get serializer => _$pendingDeploymentReviewersSerializer;
}

