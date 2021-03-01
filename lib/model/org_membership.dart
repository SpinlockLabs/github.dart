//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/org_membership_permissions.dart';
import 'package:github/model/simple_user.dart';
import 'package:github/model/organization_simple.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'org_membership.g.dart';

abstract class OrgMembership implements Built<OrgMembership, OrgMembershipBuilder> {

    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    @nullable
    @BuiltValueField(wireName: r'state')
    String get state;

    @nullable
    @BuiltValueField(wireName: r'role')
    String get role;

    @nullable
    @BuiltValueField(wireName: r'organization_url')
    String get organizationUrl;

    @nullable
    @BuiltValueField(wireName: r'organization')
    OrganizationSimple get organization;

    @nullable
    @BuiltValueField(wireName: r'user')
    SimpleUser get user;

    @nullable
    @BuiltValueField(wireName: r'permissions')
    OrgMembershipPermissions get permissions;

    // Boilerplate code needed to wire-up generated code
    OrgMembership._();

    static void _initializeBuilder(OrgMembershipBuilder b) => b;

    factory OrgMembership([void updates(OrgMembershipBuilder b)]) = _$OrgMembership;
    static Serializer<OrgMembership> get serializer => _$orgMembershipSerializer;
}

