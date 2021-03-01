//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'author_association.g.dart';

class AuthorAssociation extends EnumClass {

  /// How the author is associated with the repository.
  @BuiltValueEnumConst(wireName: r'COLLABORATOR')
  static const AuthorAssociation COLLABORATOR = _$COLLABORATOR;
  /// How the author is associated with the repository.
  @BuiltValueEnumConst(wireName: r'CONTRIBUTOR')
  static const AuthorAssociation CONTRIBUTOR = _$CONTRIBUTOR;
  /// How the author is associated with the repository.
  @BuiltValueEnumConst(wireName: r'FIRST_TIMER')
  static const AuthorAssociation FIRST_TIMER = _$FIRST_TIMER;
  /// How the author is associated with the repository.
  @BuiltValueEnumConst(wireName: r'FIRST_TIME_CONTRIBUTOR')
  static const AuthorAssociation FIRST_TIME_CONTRIBUTOR = _$FIRST_TIME_CONTRIBUTOR;
  /// How the author is associated with the repository.
  @BuiltValueEnumConst(wireName: r'MANNEQUIN')
  static const AuthorAssociation MANNEQUIN = _$MANNEQUIN;
  /// How the author is associated with the repository.
  @BuiltValueEnumConst(wireName: r'MEMBER')
  static const AuthorAssociation MEMBER = _$MEMBER;
  /// How the author is associated with the repository.
  @BuiltValueEnumConst(wireName: r'NONE')
  static const AuthorAssociation NONE = _$NONE;
  /// How the author is associated with the repository.
  @BuiltValueEnumConst(wireName: r'OWNER')
  static const AuthorAssociation OWNER = _$OWNER;

  static Serializer<AuthorAssociation> get serializer => _$authorAssociationSerializer;

  const AuthorAssociation._(String name): super(name);

  static BuiltSet<AuthorAssociation> get values => _$values;
  static AuthorAssociation valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class AuthorAssociationMixin = Object with _$AuthorAssociationMixin;

