//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'community_health_file.g.dart';

abstract class CommunityHealthFile implements Built<CommunityHealthFile, CommunityHealthFileBuilder> {

    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    @nullable
    @BuiltValueField(wireName: r'html_url')
    String get htmlUrl;

    // Boilerplate code needed to wire-up generated code
    CommunityHealthFile._();

    static void _initializeBuilder(CommunityHealthFileBuilder b) => b;

    factory CommunityHealthFile([void updates(CommunityHealthFileBuilder b)]) = _$CommunityHealthFile;
    static Serializer<CommunityHealthFile> get serializer => _$communityHealthFileSerializer;
}

