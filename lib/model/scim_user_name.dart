//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'scim_user_name.g.dart';

abstract class ScimUserName implements Built<ScimUserName, ScimUserNameBuilder> {

    @nullable
    @BuiltValueField(wireName: r'givenName')
    String get givenName;

    @nullable
    @BuiltValueField(wireName: r'familyName')
    String get familyName;

    @nullable
    @BuiltValueField(wireName: r'formatted')
    String get formatted;

    // Boilerplate code needed to wire-up generated code
    ScimUserName._();

    static void _initializeBuilder(ScimUserNameBuilder b) => b;

    factory ScimUserName([void updates(ScimUserNameBuilder b)]) = _$ScimUserName;
    static Serializer<ScimUserName> get serializer => _$scimUserNameSerializer;
}

