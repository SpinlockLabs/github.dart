//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'scim_v2_enterprises_enterprise_users_name.g.dart';

abstract class ScimV2EnterprisesEnterpriseUsersName implements Built<ScimV2EnterprisesEnterpriseUsersName, ScimV2EnterprisesEnterpriseUsersNameBuilder> {

    /// The first name of the user.
    @nullable
    @BuiltValueField(wireName: r'givenName')
    String get givenName;

    /// The last name of the user.
    @nullable
    @BuiltValueField(wireName: r'familyName')
    String get familyName;

    // Boilerplate code needed to wire-up generated code
    ScimV2EnterprisesEnterpriseUsersName._();

    static void _initializeBuilder(ScimV2EnterprisesEnterpriseUsersNameBuilder b) => b;

    factory ScimV2EnterprisesEnterpriseUsersName([void updates(ScimV2EnterprisesEnterpriseUsersNameBuilder b)]) = _$ScimV2EnterprisesEnterpriseUsersName;
    static Serializer<ScimV2EnterprisesEnterpriseUsersName> get serializer => _$scimV2EnterprisesEnterpriseUsersNameSerializer;
}

