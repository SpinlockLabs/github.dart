//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'scim_user_list_enterprise_emails.g.dart';

abstract class ScimUserListEnterpriseEmails implements Built<ScimUserListEnterpriseEmails, ScimUserListEnterpriseEmailsBuilder> {

    @nullable
    @BuiltValueField(wireName: r'value')
    String get value;

    @nullable
    @BuiltValueField(wireName: r'primary')
    bool get primary;

    @nullable
    @BuiltValueField(wireName: r'type')
    String get type;

    // Boilerplate code needed to wire-up generated code
    ScimUserListEnterpriseEmails._();

    static void _initializeBuilder(ScimUserListEnterpriseEmailsBuilder b) => b;

    factory ScimUserListEnterpriseEmails([void updates(ScimUserListEnterpriseEmailsBuilder b)]) = _$ScimUserListEnterpriseEmails;
    static Serializer<ScimUserListEnterpriseEmails> get serializer => _$scimUserListEnterpriseEmailsSerializer;
}

