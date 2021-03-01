//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:github/model/repository.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'authentication_token.g.dart';

abstract class AuthenticationToken implements Built<AuthenticationToken, AuthenticationTokenBuilder> {

    /// The token used for authentication
    @nullable
    @BuiltValueField(wireName: r'token')
    String get token;

    /// The time this token expires
    @nullable
    @BuiltValueField(wireName: r'expires_at')
    DateTime get expiresAt;

    @nullable
    @BuiltValueField(wireName: r'permissions')
    JsonObject get permissions;

    /// The repositories this token has access to
    @nullable
    @BuiltValueField(wireName: r'repositories')
    BuiltList<Repository> get repositories;

    @nullable
    @BuiltValueField(wireName: r'single_file')
    String get singleFile;

    /// Describe whether all repositories have been selected or there's a selection involved
    @nullable
    @BuiltValueField(wireName: r'repository_selection')
    AuthenticationTokenRepositorySelectionEnum get repositorySelection;
    // enum repositorySelectionEnum {  all,  selected,  };

    // Boilerplate code needed to wire-up generated code
    AuthenticationToken._();

    static void _initializeBuilder(AuthenticationTokenBuilder b) => b;

    factory AuthenticationToken([void updates(AuthenticationTokenBuilder b)]) = _$AuthenticationToken;
    static Serializer<AuthenticationToken> get serializer => _$authenticationTokenSerializer;
}

class AuthenticationTokenRepositorySelectionEnum extends EnumClass {

  /// Describe whether all repositories have been selected or there's a selection involved
  @BuiltValueEnumConst(wireName: r'all')
  static const AuthenticationTokenRepositorySelectionEnum all = _$authenticationTokenRepositorySelectionEnum_all;
  /// Describe whether all repositories have been selected or there's a selection involved
  @BuiltValueEnumConst(wireName: r'selected')
  static const AuthenticationTokenRepositorySelectionEnum selected = _$authenticationTokenRepositorySelectionEnum_selected;

  static Serializer<AuthenticationTokenRepositorySelectionEnum> get serializer => _$authenticationTokenRepositorySelectionEnumSerializer;

  const AuthenticationTokenRepositorySelectionEnum._(String name): super(name);

  static BuiltSet<AuthenticationTokenRepositorySelectionEnum> get values => _$authenticationTokenRepositorySelectionEnumValues;
  static AuthenticationTokenRepositorySelectionEnum valueOf(String name) => _$authenticationTokenRepositorySelectionEnumValueOf(name);
}

