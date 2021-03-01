//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'scim_enterprise_user_emails.g.dart';

abstract class ScimEnterpriseUserEmails implements Built<ScimEnterpriseUserEmails, ScimEnterpriseUserEmailsBuilder> {

    @nullable
    @BuiltValueField(wireName: r'value')
    String get value;

    @nullable
    @BuiltValueField(wireName: r'type')
    String get type;

    @nullable
    @BuiltValueField(wireName: r'primary')
    bool get primary;

    // Boilerplate code needed to wire-up generated code
    ScimEnterpriseUserEmails._();

    static void _initializeBuilder(ScimEnterpriseUserEmailsBuilder b) => b;

    factory ScimEnterpriseUserEmails([void updates(ScimEnterpriseUserEmailsBuilder b)]) = _$ScimEnterpriseUserEmails;
    static Serializer<ScimEnterpriseUserEmails> get serializer => _$scimEnterpriseUserEmailsSerializer;
}

