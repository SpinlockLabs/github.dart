//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object121.g.dart';

abstract class InlineObject121 implements Built<InlineObject121, InlineObject121Builder> {

    /// A name for the key.
    @nullable
    @BuiltValueField(wireName: r'title')
    String get title;

    /// The contents of the key.
    @nullable
    @BuiltValueField(wireName: r'key')
    String get key;

    /// If `true`, the key will only be able to read repository contents. Otherwise, the key will be able to read and write.      Deploy keys with write access can perform the same actions as an organization member with admin access, or a collaborator on a personal repository. For more information, see \"[Repository permission levels for an organization](https://help.github.com/articles/repository-permission-levels-for-an-organization/)\" and \"[Permission levels for a user account repository](https://help.github.com/articles/permission-levels-for-a-user-account-repository/).\"
    @nullable
    @BuiltValueField(wireName: r'read_only')
    bool get readOnly;

    // Boilerplate code needed to wire-up generated code
    InlineObject121._();

    static void _initializeBuilder(InlineObject121Builder b) => b;

    factory InlineObject121([void updates(InlineObject121Builder b)]) = _$InlineObject121;
    static Serializer<InlineObject121> get serializer => _$inlineObject121Serializer;
}

