//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/content_tree_links.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'content_file.g.dart';

abstract class ContentFile implements Built<ContentFile, ContentFileBuilder> {

    @nullable
    @BuiltValueField(wireName: r'type')
    String get type;

    @nullable
    @BuiltValueField(wireName: r'encoding')
    String get encoding;

    @nullable
    @BuiltValueField(wireName: r'size')
    int get size;

    @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    @nullable
    @BuiltValueField(wireName: r'path')
    String get path;

    @nullable
    @BuiltValueField(wireName: r'content')
    String get content;

    @nullable
    @BuiltValueField(wireName: r'sha')
    String get sha;

    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    @nullable
    @BuiltValueField(wireName: r'git_url')
    String get gitUrl;

    @nullable
    @BuiltValueField(wireName: r'html_url')
    String get htmlUrl;

    @nullable
    @BuiltValueField(wireName: r'download_url')
    String get downloadUrl;

    @nullable
    @BuiltValueField(wireName: r'_links')
    ContentTreeLinks get links;

    @nullable
    @BuiltValueField(wireName: r'target')
    String get target;

    @nullable
    @BuiltValueField(wireName: r'submodule_git_url')
    String get submoduleGitUrl;

    // Boilerplate code needed to wire-up generated code
    ContentFile._();

    static void _initializeBuilder(ContentFileBuilder b) => b;

    factory ContentFile([void updates(ContentFileBuilder b)]) = _$ContentFile;
    static Serializer<ContentFile> get serializer => _$contentFileSerializer;
}

