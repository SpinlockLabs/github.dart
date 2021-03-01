//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object175.g.dart';

abstract class InlineObject175 implements Built<InlineObject175, InlineObject175Builder> {

    /// An email address associated with the GitHub user account to manage.
    @nullable
    @BuiltValueField(wireName: r'email')
    String get email;

    /// Denotes whether an email is publically visible.
    @nullable
    @BuiltValueField(wireName: r'visibility')
    InlineObject175VisibilityEnum get visibility;
    // enum visibilityEnum {  public,  private,  };

    // Boilerplate code needed to wire-up generated code
    InlineObject175._();

    static void _initializeBuilder(InlineObject175Builder b) => b;

    factory InlineObject175([void updates(InlineObject175Builder b)]) = _$InlineObject175;
    static Serializer<InlineObject175> get serializer => _$inlineObject175Serializer;
}

class InlineObject175VisibilityEnum extends EnumClass {

  /// Denotes whether an email is publically visible.
  @BuiltValueEnumConst(wireName: r'public')
  static const InlineObject175VisibilityEnum public = _$inlineObject175VisibilityEnum_public;
  /// Denotes whether an email is publically visible.
  @BuiltValueEnumConst(wireName: r'private')
  static const InlineObject175VisibilityEnum private = _$inlineObject175VisibilityEnum_private;

  static Serializer<InlineObject175VisibilityEnum> get serializer => _$inlineObject175VisibilityEnumSerializer;

  const InlineObject175VisibilityEnum._(String name): super(name);

  static BuiltSet<InlineObject175VisibilityEnum> get values => _$inlineObject175VisibilityEnumValues;
  static InlineObject175VisibilityEnum valueOf(String name) => _$inlineObject175VisibilityEnumValueOf(name);
}

