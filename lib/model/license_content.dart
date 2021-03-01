//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/license_simple.dart';
import 'package:github/model/content_tree_links.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'license_content.g.dart';

abstract class LicenseContent implements Built<LicenseContent, LicenseContentBuilder> {

    @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    @nullable
    @BuiltValueField(wireName: r'path')
    String get path;

    @nullable
    @BuiltValueField(wireName: r'sha')
    String get sha;

    @nullable
    @BuiltValueField(wireName: r'size')
    int get size;

    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    @nullable
    @BuiltValueField(wireName: r'html_url')
    String get htmlUrl;

    @nullable
    @BuiltValueField(wireName: r'git_url')
    String get gitUrl;

    @nullable
    @BuiltValueField(wireName: r'download_url')
    String get downloadUrl;

    @nullable
    @BuiltValueField(wireName: r'type')
    String get type;

    @nullable
    @BuiltValueField(wireName: r'content')
    String get content;

    @nullable
    @BuiltValueField(wireName: r'encoding')
    String get encoding;

    @nullable
    @BuiltValueField(wireName: r'_links')
    ContentTreeLinks get links;

    @nullable
    @BuiltValueField(wireName: r'license')
    LicenseSimple get license;

    // Boilerplate code needed to wire-up generated code
    LicenseContent._();

    static void _initializeBuilder(LicenseContentBuilder b) => b;

    factory LicenseContent([void updates(LicenseContentBuilder b)]) = _$LicenseContent;
    static Serializer<LicenseContent> get serializer => _$licenseContentSerializer;
}

