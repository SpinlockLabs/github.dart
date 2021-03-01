//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/content_tree_entries.dart';
import 'package:built_collection/built_collection.dart';
import 'package:github/model/content_tree_links.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'content_tree.g.dart';

abstract class ContentTree implements Built<ContentTree, ContentTreeBuilder> {

    @nullable
    @BuiltValueField(wireName: r'type')
    String get type;

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
    @BuiltValueField(wireName: r'entries')
    BuiltList<ContentTreeEntries> get entries;

    @nullable
    @BuiltValueField(wireName: r'_links')
    ContentTreeLinks get links;

    // Boilerplate code needed to wire-up generated code
    ContentTree._();

    static void _initializeBuilder(ContentTreeBuilder b) => b;

    factory ContentTree([void updates(ContentTreeBuilder b)]) = _$ContentTree;
    static Serializer<ContentTree> get serializer => _$contentTreeSerializer;
}

