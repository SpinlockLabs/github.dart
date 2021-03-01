//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/community_profile_files.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'community_profile.g.dart';

abstract class CommunityProfile implements Built<CommunityProfile, CommunityProfileBuilder> {

    @nullable
    @BuiltValueField(wireName: r'health_percentage')
    int get healthPercentage;

    @nullable
    @BuiltValueField(wireName: r'description')
    String get description;

    @nullable
    @BuiltValueField(wireName: r'documentation')
    String get documentation;

    @nullable
    @BuiltValueField(wireName: r'files')
    CommunityProfileFiles get files;

    @nullable
    @BuiltValueField(wireName: r'updated_at')
    DateTime get updatedAt;

    @nullable
    @BuiltValueField(wireName: r'content_reports_enabled')
    bool get contentReportsEnabled;

    // Boilerplate code needed to wire-up generated code
    CommunityProfile._();

    static void _initializeBuilder(CommunityProfileBuilder b) => b;

    factory CommunityProfile([void updates(CommunityProfileBuilder b)]) = _$CommunityProfile;
    static Serializer<CommunityProfile> get serializer => _$communityProfileSerializer;
}

