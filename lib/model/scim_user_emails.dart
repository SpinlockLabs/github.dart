//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'scim_user_emails.g.dart';

abstract class ScimUserEmails implements Built<ScimUserEmails, ScimUserEmailsBuilder> {

    @nullable
    @BuiltValueField(wireName: r'value')
    String get value;

    @nullable
    @BuiltValueField(wireName: r'primary')
    bool get primary;

    // Boilerplate code needed to wire-up generated code
    ScimUserEmails._();

    static void _initializeBuilder(ScimUserEmailsBuilder b) => b;

    factory ScimUserEmails([void updates(ScimUserEmailsBuilder b)]) = _$ScimUserEmails;
    static Serializer<ScimUserEmails> get serializer => _$scimUserEmailsSerializer;
}

