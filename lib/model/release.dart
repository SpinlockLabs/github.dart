//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:github/model/simple_user.dart';
import 'package:github/model/release_asset.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'release.g.dart';

abstract class Release implements Built<Release, ReleaseBuilder> {

    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    @nullable
    @BuiltValueField(wireName: r'html_url')
    String get htmlUrl;

    @nullable
    @BuiltValueField(wireName: r'assets_url')
    String get assetsUrl;

    @nullable
    @BuiltValueField(wireName: r'upload_url')
    String get uploadUrl;

    @nullable
    @BuiltValueField(wireName: r'tarball_url')
    String get tarballUrl;

    @nullable
    @BuiltValueField(wireName: r'zipball_url')
    String get zipballUrl;

    @nullable
    @BuiltValueField(wireName: r'id')
    int get id;

    @nullable
    @BuiltValueField(wireName: r'node_id')
    String get nodeId;

    /// The name of the tag.
    @nullable
    @BuiltValueField(wireName: r'tag_name')
    String get tagName;

    /// Specifies the commitish value that determines where the Git tag is created from.
    @nullable
    @BuiltValueField(wireName: r'target_commitish')
    String get targetCommitish;

    @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    @nullable
    @BuiltValueField(wireName: r'body')
    String get body;

    /// true to create a draft (unpublished) release, false to create a published one.
    @nullable
    @BuiltValueField(wireName: r'draft')
    bool get draft;

    /// Whether to identify the release as a prerelease or a full release.
    @nullable
    @BuiltValueField(wireName: r'prerelease')
    bool get prerelease;

    @nullable
    @BuiltValueField(wireName: r'created_at')
    DateTime get createdAt;

    @nullable
    @BuiltValueField(wireName: r'published_at')
    DateTime get publishedAt;

    @nullable
    @BuiltValueField(wireName: r'author')
    SimpleUser get author;

    @nullable
    @BuiltValueField(wireName: r'assets')
    BuiltList<ReleaseAsset> get assets;

    @nullable
    @BuiltValueField(wireName: r'body_html')
    String get bodyHtml;

    @nullable
    @BuiltValueField(wireName: r'body_text')
    String get bodyText;

    // Boilerplate code needed to wire-up generated code
    Release._();

    static void _initializeBuilder(ReleaseBuilder b) => b;

    factory Release([void updates(ReleaseBuilder b)]) = _$Release;
    static Serializer<Release> get serializer => _$releaseSerializer;
}

