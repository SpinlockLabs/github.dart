//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/package_version_metadata.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'package_version.g.dart';

abstract class PackageVersion implements Built<PackageVersion, PackageVersionBuilder> {

    /// Unique identifier of the package version.
    @nullable
    @BuiltValueField(wireName: r'id')
    int get id;

    /// The name of the package version.
    @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    @nullable
    @BuiltValueField(wireName: r'package_html_url')
    String get packageHtmlUrl;

    @nullable
    @BuiltValueField(wireName: r'html_url')
    String get htmlUrl;

    @nullable
    @BuiltValueField(wireName: r'license')
    String get license;

    @nullable
    @BuiltValueField(wireName: r'description')
    String get description;

    @nullable
    @BuiltValueField(wireName: r'created_at')
    DateTime get createdAt;

    @nullable
    @BuiltValueField(wireName: r'updated_at')
    DateTime get updatedAt;

    @nullable
    @BuiltValueField(wireName: r'deleted_at')
    DateTime get deletedAt;

    @nullable
    @BuiltValueField(wireName: r'metadata')
    PackageVersionMetadata get metadata;

    // Boilerplate code needed to wire-up generated code
    PackageVersion._();

    static void _initializeBuilder(PackageVersionBuilder b) => b;

    factory PackageVersion([void updates(PackageVersionBuilder b)]) = _$PackageVersion;
    static Serializer<PackageVersion> get serializer => _$packageVersionSerializer;
}

