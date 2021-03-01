//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/minimal_repository.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'code_search_result_item.g.dart';

abstract class CodeSearchResultItem implements Built<CodeSearchResultItem, CodeSearchResultItemBuilder> {

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
    @BuiltValueField(wireName: r'repository')
    MinimalRepository get repository;

    @nullable
    @BuiltValueField(wireName: r'score')
    int get score;

    @nullable
    @BuiltValueField(wireName: r'file_size')
    int get fileSize;

    @nullable
    @BuiltValueField(wireName: r'language')
    String get language;

    @nullable
    @BuiltValueField(wireName: r'last_modified_at')
    DateTime get lastModifiedAt;

    @nullable
    @BuiltValueField(wireName: r'line_numbers')
    BuiltList<String> get lineNumbers;

    @nullable
    @BuiltValueField(wireName: r'text_matches')
    BuiltList<JsonObject> get textMatches;

    // Boilerplate code needed to wire-up generated code
    CodeSearchResultItem._();

    static void _initializeBuilder(CodeSearchResultItemBuilder b) => b;

    factory CodeSearchResultItem([void updates(CodeSearchResultItemBuilder b)]) = _$CodeSearchResultItem;
    static Serializer<CodeSearchResultItem> get serializer => _$codeSearchResultItemSerializer;
}

