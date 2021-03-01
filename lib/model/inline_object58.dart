//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object58.g.dart';

abstract class InlineObject58 implements Built<InlineObject58, InlineObject58Builder> {

    /// The permission to grant the collaborator.
    @nullable
    @BuiltValueField(wireName: r'permission')
    InlineObject58PermissionEnum get permission;
    // enum permissionEnum {  read,  write,  admin,  };

    // Boilerplate code needed to wire-up generated code
    InlineObject58._();

    static void _initializeBuilder(InlineObject58Builder b) => b
        ..permission = const InlineObject58PermissionEnum._('write');

    factory InlineObject58([void updates(InlineObject58Builder b)]) = _$InlineObject58;
    static Serializer<InlineObject58> get serializer => _$inlineObject58Serializer;
}

class InlineObject58PermissionEnum extends EnumClass {

  /// The permission to grant the collaborator.
  @BuiltValueEnumConst(wireName: r'read')
  static const InlineObject58PermissionEnum read = _$inlineObject58PermissionEnum_read;
  /// The permission to grant the collaborator.
  @BuiltValueEnumConst(wireName: r'write')
  static const InlineObject58PermissionEnum write = _$inlineObject58PermissionEnum_write;
  /// The permission to grant the collaborator.
  @BuiltValueEnumConst(wireName: r'admin')
  static const InlineObject58PermissionEnum admin = _$inlineObject58PermissionEnum_admin;

  static Serializer<InlineObject58PermissionEnum> get serializer => _$inlineObject58PermissionEnumSerializer;

  const InlineObject58PermissionEnum._(String name): super(name);

  static BuiltSet<InlineObject58PermissionEnum> get values => _$inlineObject58PermissionEnumValues;
  static InlineObject58PermissionEnum valueOf(String name) => _$inlineObject58PermissionEnumValueOf(name);
}

