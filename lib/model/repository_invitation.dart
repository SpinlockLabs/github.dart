//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/minimal_repository.dart';
import 'package:built_collection/built_collection.dart';
import 'package:github/model/simple_user.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'repository_invitation.g.dart';

abstract class RepositoryInvitation implements Built<RepositoryInvitation, RepositoryInvitationBuilder> {

    /// Unique identifier of the repository invitation.
    @nullable
    @BuiltValueField(wireName: r'id')
    int get id;

    @nullable
    @BuiltValueField(wireName: r'repository')
    MinimalRepository get repository;

    @nullable
    @BuiltValueField(wireName: r'invitee')
    SimpleUser get invitee;

    @nullable
    @BuiltValueField(wireName: r'inviter')
    SimpleUser get inviter;

    /// The permission associated with the invitation.
    @nullable
    @BuiltValueField(wireName: r'permissions')
    RepositoryInvitationPermissionsEnum get permissions;
    // enum permissionsEnum {  read,  write,  admin,  };

    @nullable
    @BuiltValueField(wireName: r'created_at')
    DateTime get createdAt;

    /// Whether or not the invitation has expired
    @nullable
    @BuiltValueField(wireName: r'expired')
    bool get expired;

    /// URL for the repository invitation
    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    @nullable
    @BuiltValueField(wireName: r'html_url')
    String get htmlUrl;

    @nullable
    @BuiltValueField(wireName: r'node_id')
    String get nodeId;

    // Boilerplate code needed to wire-up generated code
    RepositoryInvitation._();

    static void _initializeBuilder(RepositoryInvitationBuilder b) => b;

    factory RepositoryInvitation([void updates(RepositoryInvitationBuilder b)]) = _$RepositoryInvitation;
    static Serializer<RepositoryInvitation> get serializer => _$repositoryInvitationSerializer;
}

class RepositoryInvitationPermissionsEnum extends EnumClass {

  /// The permission associated with the invitation.
  @BuiltValueEnumConst(wireName: r'read')
  static const RepositoryInvitationPermissionsEnum read = _$repositoryInvitationPermissionsEnum_read;
  /// The permission associated with the invitation.
  @BuiltValueEnumConst(wireName: r'write')
  static const RepositoryInvitationPermissionsEnum write = _$repositoryInvitationPermissionsEnum_write;
  /// The permission associated with the invitation.
  @BuiltValueEnumConst(wireName: r'admin')
  static const RepositoryInvitationPermissionsEnum admin = _$repositoryInvitationPermissionsEnum_admin;

  static Serializer<RepositoryInvitationPermissionsEnum> get serializer => _$repositoryInvitationPermissionsEnumSerializer;

  const RepositoryInvitationPermissionsEnum._(String name): super(name);

  static BuiltSet<RepositoryInvitationPermissionsEnum> get values => _$repositoryInvitationPermissionsEnumValues;
  static RepositoryInvitationPermissionsEnum valueOf(String name) => _$repositoryInvitationPermissionsEnumValueOf(name);
}

