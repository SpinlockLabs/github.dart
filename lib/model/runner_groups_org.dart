//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'runner_groups_org.g.dart';

abstract class RunnerGroupsOrg implements Built<RunnerGroupsOrg, RunnerGroupsOrgBuilder> {

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

    /// Link to the selected repositories resource for this runner group. Not present unless visibility was set to `selected`
    @nullable
    @BuiltValueField(wireName: r'selected_repositories_url')
    String get selectedRepositoriesUrl;

    @nullable
    @BuiltValueField(wireName: r'runners_url')
    String get runnersUrl;

    @nullable
    @BuiltValueField(wireName: r'inherited')
    bool get inherited;

    @nullable
    @BuiltValueField(wireName: r'inherited_allows_public_repositories')
    bool get inheritedAllowsPublicRepositories;

    @nullable
    @BuiltValueField(wireName: r'allows_public_repositories')
    bool get allowsPublicRepositories;

    // Boilerplate code needed to wire-up generated code
    RunnerGroupsOrg._();

    static void _initializeBuilder(RunnerGroupsOrgBuilder b) => b;

    factory RunnerGroupsOrg([void updates(RunnerGroupsOrgBuilder b)]) = _$RunnerGroupsOrg;
    static Serializer<RunnerGroupsOrg> get serializer => _$runnerGroupsOrgSerializer;
}

