//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:github/model/simple_user.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'reaction.g.dart';

abstract class Reaction implements Built<Reaction, ReactionBuilder> {

    @nullable
    @BuiltValueField(wireName: r'id')
    int get id;

    @nullable
    @BuiltValueField(wireName: r'node_id')
    String get nodeId;

    @nullable
    @BuiltValueField(wireName: r'user')
    SimpleUser get user;

    /// The reaction to use
    @nullable
    @BuiltValueField(wireName: r'content')
    ReactionContentEnum get content;
    // enum contentEnum {  +1,  -1,  laugh,  confused,  heart,  hooray,  rocket,  eyes,  };

    @nullable
    @BuiltValueField(wireName: r'created_at')
    DateTime get createdAt;

    // Boilerplate code needed to wire-up generated code
    Reaction._();

    static void _initializeBuilder(ReactionBuilder b) => b;

    factory Reaction([void updates(ReactionBuilder b)]) = _$Reaction;
    static Serializer<Reaction> get serializer => _$reactionSerializer;
}

class ReactionContentEnum extends EnumClass {

  /// The reaction to use
  @BuiltValueEnumConst(wireName: r'+1')
  static const ReactionContentEnum plus1 = _$reactionContentEnum_plus1;
  /// The reaction to use
  @BuiltValueEnumConst(wireName: r'-1')
  static const ReactionContentEnum n1 = _$reactionContentEnum_n1;
  /// The reaction to use
  @BuiltValueEnumConst(wireName: r'laugh')
  static const ReactionContentEnum laugh = _$reactionContentEnum_laugh;
  /// The reaction to use
  @BuiltValueEnumConst(wireName: r'confused')
  static const ReactionContentEnum confused = _$reactionContentEnum_confused;
  /// The reaction to use
  @BuiltValueEnumConst(wireName: r'heart')
  static const ReactionContentEnum heart = _$reactionContentEnum_heart;
  /// The reaction to use
  @BuiltValueEnumConst(wireName: r'hooray')
  static const ReactionContentEnum hooray = _$reactionContentEnum_hooray;
  /// The reaction to use
  @BuiltValueEnumConst(wireName: r'rocket')
  static const ReactionContentEnum rocket = _$reactionContentEnum_rocket;
  /// The reaction to use
  @BuiltValueEnumConst(wireName: r'eyes')
  static const ReactionContentEnum eyes = _$reactionContentEnum_eyes;

  static Serializer<ReactionContentEnum> get serializer => _$reactionContentEnumSerializer;

  const ReactionContentEnum._(String name): super(name);

  static BuiltSet<ReactionContentEnum> get values => _$reactionContentEnumValues;
  static ReactionContentEnum valueOf(String name) => _$reactionContentEnumValueOf(name);
}

