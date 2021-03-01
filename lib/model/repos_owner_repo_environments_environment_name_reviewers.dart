//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/deployment_reviewer_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'repos_owner_repo_environments_environment_name_reviewers.g.dart';

abstract class ReposOwnerRepoEnvironmentsEnvironmentNameReviewers implements Built<ReposOwnerRepoEnvironmentsEnvironmentNameReviewers, ReposOwnerRepoEnvironmentsEnvironmentNameReviewersBuilder> {

    @nullable
    @BuiltValueField(wireName: r'type')
    DeploymentReviewerType get type;
    // enum typeEnum {  User,  Team,  };

    /// The id of the user or team who can review the deployment
    @nullable
    @BuiltValueField(wireName: r'id')
    int get id;

    // Boilerplate code needed to wire-up generated code
    ReposOwnerRepoEnvironmentsEnvironmentNameReviewers._();

    static void _initializeBuilder(ReposOwnerRepoEnvironmentsEnvironmentNameReviewersBuilder b) => b;

    factory ReposOwnerRepoEnvironmentsEnvironmentNameReviewers([void updates(ReposOwnerRepoEnvironmentsEnvironmentNameReviewersBuilder b)]) = _$ReposOwnerRepoEnvironmentsEnvironmentNameReviewers;
    static Serializer<ReposOwnerRepoEnvironmentsEnvironmentNameReviewers> get serializer => _$reposOwnerRepoEnvironmentsEnvironmentNameReviewersSerializer;
}

