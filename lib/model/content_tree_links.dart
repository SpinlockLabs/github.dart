//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'content_tree_links.g.dart';

abstract class ContentTreeLinks implements Built<ContentTreeLinks, ContentTreeLinksBuilder> {

    @nullable
    @BuiltValueField(wireName: r'git')
    String get git;

    @nullable
    @BuiltValueField(wireName: r'html')
    String get html;

    @nullable
    @BuiltValueField(wireName: r'self')
    String get self;

    // Boilerplate code needed to wire-up generated code
    ContentTreeLinks._();

    static void _initializeBuilder(ContentTreeLinksBuilder b) => b;

    factory ContentTreeLinks([void updates(ContentTreeLinksBuilder b)]) = _$ContentTreeLinks;
    static Serializer<ContentTreeLinks> get serializer => _$contentTreeLinksSerializer;
}

