//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'repos_owner_repo_check_suites_preferences_auto_trigger_checks.g.dart';

abstract class ReposOwnerRepoCheckSuitesPreferencesAutoTriggerChecks implements Built<ReposOwnerRepoCheckSuitesPreferencesAutoTriggerChecks, ReposOwnerRepoCheckSuitesPreferencesAutoTriggerChecksBuilder> {

    /// The `id` of the GitHub App.
    @nullable
    @BuiltValueField(wireName: r'app_id')
    int get appId;

    /// Set to `true` to enable automatic creation of CheckSuite events upon pushes to the repository, or `false` to disable them.
    @nullable
    @BuiltValueField(wireName: r'setting')
    bool get setting;

    // Boilerplate code needed to wire-up generated code
    ReposOwnerRepoCheckSuitesPreferencesAutoTriggerChecks._();

    static void _initializeBuilder(ReposOwnerRepoCheckSuitesPreferencesAutoTriggerChecksBuilder b) => b
        ..setting = true;

    factory ReposOwnerRepoCheckSuitesPreferencesAutoTriggerChecks([void updates(ReposOwnerRepoCheckSuitesPreferencesAutoTriggerChecksBuilder b)]) = _$ReposOwnerRepoCheckSuitesPreferencesAutoTriggerChecks;
    static Serializer<ReposOwnerRepoCheckSuitesPreferencesAutoTriggerChecks> get serializer => _$reposOwnerRepoCheckSuitesPreferencesAutoTriggerChecksSerializer;
}

