//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object109.g.dart';

abstract class InlineObject109 implements Built<InlineObject109, InlineObject109Builder> {

    /// The permissions that the associated user will have on the repository. Valid values are `read`, `write`, `maintain`, `triage`, and `admin`.
    @nullable
    @BuiltValueField(wireName: r'permissions')
    InlineObject109PermissionsEnum get permissions;
    // enum permissionsEnum {  read,  write,  maintain,  triage,  admin,  };

    // Boilerplate code needed to wire-up generated code
    InlineObject109._();

    static void _initializeBuilder(InlineObject109Builder b) => b;

    factory InlineObject109([void updates(InlineObject109Builder b)]) = _$InlineObject109;
    static Serializer<InlineObject109> get serializer => _$inlineObject109Serializer;
}

class InlineObject109PermissionsEnum extends EnumClass {

  /// The permissions that the associated user will have on the repository. Valid values are `read`, `write`, `maintain`, `triage`, and `admin`.
  @BuiltValueEnumConst(wireName: r'read')
  static const InlineObject109PermissionsEnum read = _$inlineObject109PermissionsEnum_read;
  /// The permissions that the associated user will have on the repository. Valid values are `read`, `write`, `maintain`, `triage`, and `admin`.
  @BuiltValueEnumConst(wireName: r'write')
  static const InlineObject109PermissionsEnum write = _$inlineObject109PermissionsEnum_write;
  /// The permissions that the associated user will have on the repository. Valid values are `read`, `write`, `maintain`, `triage`, and `admin`.
  @BuiltValueEnumConst(wireName: r'maintain')
  static const InlineObject109PermissionsEnum maintain = _$inlineObject109PermissionsEnum_maintain;
  /// The permissions that the associated user will have on the repository. Valid values are `read`, `write`, `maintain`, `triage`, and `admin`.
  @BuiltValueEnumConst(wireName: r'triage')
  static const InlineObject109PermissionsEnum triage = _$inlineObject109PermissionsEnum_triage;
  /// The permissions that the associated user will have on the repository. Valid values are `read`, `write`, `maintain`, `triage`, and `admin`.
  @BuiltValueEnumConst(wireName: r'admin')
  static const InlineObject109PermissionsEnum admin = _$inlineObject109PermissionsEnum_admin;

  static Serializer<InlineObject109PermissionsEnum> get serializer => _$inlineObject109PermissionsEnumSerializer;

  const InlineObject109PermissionsEnum._(String name): super(name);

  static BuiltSet<InlineObject109PermissionsEnum> get values => _$inlineObject109PermissionsEnumValues;
  static InlineObject109PermissionsEnum valueOf(String name) => _$inlineObject109PermissionsEnumValueOf(name);
}

