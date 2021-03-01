//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'scim_v2_enterprises_enterprise_users_emails.g.dart';

abstract class ScimV2EnterprisesEnterpriseUsersEmails implements Built<ScimV2EnterprisesEnterpriseUsersEmails, ScimV2EnterprisesEnterpriseUsersEmailsBuilder> {

    /// The email address.
    @nullable
    @BuiltValueField(wireName: r'value')
    String get value;

    /// The type of email address.
    @nullable
    @BuiltValueField(wireName: r'type')
    String get type;

    /// Whether this email address is the primary address.
    @nullable
    @BuiltValueField(wireName: r'primary')
    bool get primary;

    // Boilerplate code needed to wire-up generated code
    ScimV2EnterprisesEnterpriseUsersEmails._();

    static void _initializeBuilder(ScimV2EnterprisesEnterpriseUsersEmailsBuilder b) => b;

    factory ScimV2EnterprisesEnterpriseUsersEmails([void updates(ScimV2EnterprisesEnterpriseUsersEmailsBuilder b)]) = _$ScimV2EnterprisesEnterpriseUsersEmails;
    static Serializer<ScimV2EnterprisesEnterpriseUsersEmails> get serializer => _$scimV2EnterprisesEnterpriseUsersEmailsSerializer;
}

