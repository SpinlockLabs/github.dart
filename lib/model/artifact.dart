//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'artifact.g.dart';

abstract class Artifact implements Built<Artifact, ArtifactBuilder> {

    @nullable
    @BuiltValueField(wireName: r'id')
    int get id;

    @nullable
    @BuiltValueField(wireName: r'node_id')
    String get nodeId;

    /// The name of the artifact.
    @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    /// The size in bytes of the artifact.
    @nullable
    @BuiltValueField(wireName: r'size_in_bytes')
    int get sizeInBytes;

    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    @nullable
    @BuiltValueField(wireName: r'archive_download_url')
    String get archiveDownloadUrl;

    /// Whether or not the artifact has expired.
    @nullable
    @BuiltValueField(wireName: r'expired')
    bool get expired;

    @nullable
    @BuiltValueField(wireName: r'created_at')
    DateTime get createdAt;

    @nullable
    @BuiltValueField(wireName: r'expires_at')
    DateTime get expiresAt;

    @nullable
    @BuiltValueField(wireName: r'updated_at')
    DateTime get updatedAt;

    // Boilerplate code needed to wire-up generated code
    Artifact._();

    static void _initializeBuilder(ArtifactBuilder b) => b;

    factory Artifact([void updates(ArtifactBuilder b)]) = _$Artifact;
    static Serializer<Artifact> get serializer => _$artifactSerializer;
}

