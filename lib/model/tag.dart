//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/short_branch_commit.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'tag.g.dart';

abstract class Tag implements Built<Tag, TagBuilder> {

    @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    @nullable
    @BuiltValueField(wireName: r'commit')
    ShortBranchCommit get commit;

    @nullable
    @BuiltValueField(wireName: r'zipball_url')
    String get zipballUrl;

    @nullable
    @BuiltValueField(wireName: r'tarball_url')
    String get tarballUrl;

    @nullable
    @BuiltValueField(wireName: r'node_id')
    String get nodeId;

    // Boilerplate code needed to wire-up generated code
    Tag._();

    static void _initializeBuilder(TagBuilder b) => b;

    factory Tag([void updates(TagBuilder b)]) = _$Tag;
    static Serializer<Tag> get serializer => _$tagSerializer;
}

