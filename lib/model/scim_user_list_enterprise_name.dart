//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'scim_user_list_enterprise_name.g.dart';

abstract class ScimUserListEnterpriseName implements Built<ScimUserListEnterpriseName, ScimUserListEnterpriseNameBuilder> {

    @nullable
    @BuiltValueField(wireName: r'givenName')
    String get givenName;

    @nullable
    @BuiltValueField(wireName: r'familyName')
    String get familyName;

    // Boilerplate code needed to wire-up generated code
    ScimUserListEnterpriseName._();

    static void _initializeBuilder(ScimUserListEnterpriseNameBuilder b) => b;

    factory ScimUserListEnterpriseName([void updates(ScimUserListEnterpriseNameBuilder b)]) = _$ScimUserListEnterpriseName;
    static Serializer<ScimUserListEnterpriseName> get serializer => _$scimUserListEnterpriseNameSerializer;
}

