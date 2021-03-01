//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'runner_groups_enterprise.g.dart';

abstract class RunnerGroupsEnterprise implements Built<RunnerGroupsEnterprise, RunnerGroupsEnterpriseBuilder> {

    @nullable
    @BuiltValueField(wireName: r'id')
    num get id;

    @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    @nullable
    @BuiltValueField(wireName: r'visibility')
    String get visibility;

    @nullable
    @BuiltValueField(wireName: r'default')
    bool get default_;

    @nullable
    @BuiltValueField(wireName: r'selected_organizations_url')
    String get selectedOrganizationsUrl;

    @nullable
    @BuiltValueField(wireName: r'runners_url')
    String get runnersUrl;

    @nullable
    @BuiltValueField(wireName: r'allows_public_repositories')
    bool get allowsPublicRepositories;

    // Boilerplate code needed to wire-up generated code
    RunnerGroupsEnterprise._();

    static void _initializeBuilder(RunnerGroupsEnterpriseBuilder b) => b;

    factory RunnerGroupsEnterprise([void updates(RunnerGroupsEnterpriseBuilder b)]) = _$RunnerGroupsEnterprise;
    static Serializer<RunnerGroupsEnterprise> get serializer => _$runnerGroupsEnterpriseSerializer;
}

