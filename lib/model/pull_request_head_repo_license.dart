//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pull_request_head_repo_license.g.dart';

abstract class PullRequestHeadRepoLicense implements Built<PullRequestHeadRepoLicense, PullRequestHeadRepoLicenseBuilder> {

    @nullable
    @BuiltValueField(wireName: r'key')
    String get key;

    @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    @nullable
    @BuiltValueField(wireName: r'spdx_id')
    String get spdxId;

    @nullable
    @BuiltValueField(wireName: r'node_id')
    String get nodeId;

    // Boilerplate code needed to wire-up generated code
    PullRequestHeadRepoLicense._();

    static void _initializeBuilder(PullRequestHeadRepoLicenseBuilder b) => b;

    factory PullRequestHeadRepoLicense([void updates(PullRequestHeadRepoLicenseBuilder b)]) = _$PullRequestHeadRepoLicense;
    static Serializer<PullRequestHeadRepoLicense> get serializer => _$pullRequestHeadRepoLicenseSerializer;
}

