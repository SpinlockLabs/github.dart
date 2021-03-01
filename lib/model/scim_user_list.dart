//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/scim_user.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'scim_user_list.g.dart';

abstract class ScimUserList implements Built<ScimUserList, ScimUserListBuilder> {

    /// SCIM schema used.
    @nullable
    @BuiltValueField(wireName: r'schemas')
    BuiltList<String> get schemas;

    @nullable
    @BuiltValueField(wireName: r'totalResults')
    int get totalResults;

    @nullable
    @BuiltValueField(wireName: r'itemsPerPage')
    int get itemsPerPage;

    @nullable
    @BuiltValueField(wireName: r'startIndex')
    int get startIndex;

    @nullable
    @BuiltValueField(wireName: r'Resources')
    BuiltList<ScimUser> get resources;

    // Boilerplate code needed to wire-up generated code
    ScimUserList._();

    static void _initializeBuilder(ScimUserListBuilder b) => b;

    factory ScimUserList([void updates(ScimUserListBuilder b)]) = _$ScimUserList;
    static Serializer<ScimUserList> get serializer => _$scimUserListSerializer;
}

