//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/license_simple.dart';
import 'package:github/model/community_health_file.dart';
import 'package:github/model/code_of_conduct_simple.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'community_profile_files.g.dart';

abstract class CommunityProfileFiles implements Built<CommunityProfileFiles, CommunityProfileFilesBuilder> {

    @nullable
    @BuiltValueField(wireName: r'code_of_conduct')
    CodeOfConductSimple get codeOfConduct;

    @nullable
    @BuiltValueField(wireName: r'license')
    LicenseSimple get license;

    @nullable
    @BuiltValueField(wireName: r'contributing')
    CommunityHealthFile get contributing;

    @nullable
    @BuiltValueField(wireName: r'readme')
    CommunityHealthFile get readme;

    @nullable
    @BuiltValueField(wireName: r'issue_template')
    CommunityHealthFile get issueTemplate;

    @nullable
    @BuiltValueField(wireName: r'pull_request_template')
    CommunityHealthFile get pullRequestTemplate;

    // Boilerplate code needed to wire-up generated code
    CommunityProfileFiles._();

    static void _initializeBuilder(CommunityProfileFilesBuilder b) => b;

    factory CommunityProfileFiles([void updates(CommunityProfileFilesBuilder b)]) = _$CommunityProfileFiles;
    static Serializer<CommunityProfileFiles> get serializer => _$communityProfileFilesSerializer;
}

