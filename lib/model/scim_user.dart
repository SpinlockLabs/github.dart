//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/scim_user_emails.dart';
import 'package:github/model/scim_user_operations.dart';
import 'package:built_collection/built_collection.dart';
import 'package:github/model/scim_user_name.dart';
import 'package:github/model/scim_user_meta.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'scim_user.g.dart';

abstract class ScimUser implements Built<ScimUser, ScimUserBuilder> {

    /// SCIM schema used.
    @nullable
    @BuiltValueField(wireName: r'schemas')
    BuiltList<String> get schemas;

    /// Unique identifier of an external identity
    @nullable
    @BuiltValueField(wireName: r'id')
    String get id;

    /// The ID of the User.
    @nullable
    @BuiltValueField(wireName: r'externalId')
    String get externalId;

    /// Configured by the admin. Could be an email, login, or username
    @nullable
    @BuiltValueField(wireName: r'userName')
    String get userName;

    /// The name of the user, suitable for display to end-users
    @nullable
    @BuiltValueField(wireName: r'displayName')
    String get displayName;

    @nullable
    @BuiltValueField(wireName: r'name')
    ScimUserName get name;

    /// user emails
    @nullable
    @BuiltValueField(wireName: r'emails')
    BuiltList<ScimUserEmails> get emails;

    /// The active status of the User.
    @nullable
    @BuiltValueField(wireName: r'active')
    bool get active;

    @nullable
    @BuiltValueField(wireName: r'meta')
    ScimUserMeta get meta;

    /// The ID of the organization.
    @nullable
    @BuiltValueField(wireName: r'organization_id')
    int get organizationId;

    /// Set of operations to be performed
    @nullable
    @BuiltValueField(wireName: r'operations')
    BuiltList<ScimUserOperations> get operations;

    /// associated groups
    @nullable
    @BuiltValueField(wireName: r'groups')
    BuiltList<JsonObject> get groups;

    // Boilerplate code needed to wire-up generated code
    ScimUser._();

    static void _initializeBuilder(ScimUserBuilder b) => b;

    factory ScimUser([void updates(ScimUserBuilder b)]) = _$ScimUser;
    static Serializer<ScimUser> get serializer => _$scimUserSerializer;
}

