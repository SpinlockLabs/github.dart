//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:github/model/one_ofstringobjectarray.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'scim_user_operations.g.dart';

abstract class ScimUserOperations implements Built<ScimUserOperations, ScimUserOperationsBuilder> {

    @nullable
    @BuiltValueField(wireName: r'op')
    ScimUserOperationsOpEnum get op;
    // enum opEnum {  add,  remove,  replace,  };

    @nullable
    @BuiltValueField(wireName: r'path')
    String get path;

    @nullable
    @BuiltValueField(wireName: r'value')
    OneOfstringobjectarray get value;

    // Boilerplate code needed to wire-up generated code
    ScimUserOperations._();

    static void _initializeBuilder(ScimUserOperationsBuilder b) => b;

    factory ScimUserOperations([void updates(ScimUserOperationsBuilder b)]) = _$ScimUserOperations;
    static Serializer<ScimUserOperations> get serializer => _$scimUserOperationsSerializer;
}

class ScimUserOperationsOpEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'add')
  static const ScimUserOperationsOpEnum add = _$scimUserOperationsOpEnum_add;
  @BuiltValueEnumConst(wireName: r'remove')
  static const ScimUserOperationsOpEnum remove = _$scimUserOperationsOpEnum_remove;
  @BuiltValueEnumConst(wireName: r'replace')
  static const ScimUserOperationsOpEnum replace = _$scimUserOperationsOpEnum_replace;

  static Serializer<ScimUserOperationsOpEnum> get serializer => _$scimUserOperationsOpEnumSerializer;

  const ScimUserOperationsOpEnum._(String name): super(name);

  static BuiltSet<ScimUserOperationsOpEnum> get values => _$scimUserOperationsOpEnumValues;
  static ScimUserOperationsOpEnum valueOf(String name) => _$scimUserOperationsOpEnumValueOf(name);
}

