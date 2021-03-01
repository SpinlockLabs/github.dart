//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object134.g.dart';

abstract class InlineObject134 implements Built<InlineObject134, InlineObject134Builder> {

    /// The title of the pull request.
    @nullable
    @BuiltValueField(wireName: r'title')
    String get title;

    /// The contents of the pull request.
    @nullable
    @BuiltValueField(wireName: r'body')
    String get body;

    /// State of this Pull Request. Either `open` or `closed`.
    @nullable
    @BuiltValueField(wireName: r'state')
    InlineObject134StateEnum get state;
    // enum stateEnum {  open,  closed,  };

    /// The name of the branch you want your changes pulled into. This should be an existing branch on the current repository. You cannot update the base branch on a pull request to point to another repository.
    @nullable
    @BuiltValueField(wireName: r'base')
    String get base;

    /// Indicates whether [maintainers can modify](https://help.github.com/articles/allowing-changes-to-a-pull-request-branch-created-from-a-fork/) the pull request.
    @nullable
    @BuiltValueField(wireName: r'maintainer_can_modify')
    bool get maintainerCanModify;

    // Boilerplate code needed to wire-up generated code
    InlineObject134._();

    static void _initializeBuilder(InlineObject134Builder b) => b;

    factory InlineObject134([void updates(InlineObject134Builder b)]) = _$InlineObject134;
    static Serializer<InlineObject134> get serializer => _$inlineObject134Serializer;
}

class InlineObject134StateEnum extends EnumClass {

  /// State of this Pull Request. Either `open` or `closed`.
  @BuiltValueEnumConst(wireName: r'open')
  static const InlineObject134StateEnum open = _$inlineObject134StateEnum_open;
  /// State of this Pull Request. Either `open` or `closed`.
  @BuiltValueEnumConst(wireName: r'closed')
  static const InlineObject134StateEnum closed = _$inlineObject134StateEnum_closed;

  static Serializer<InlineObject134StateEnum> get serializer => _$inlineObject134StateEnumSerializer;

  const InlineObject134StateEnum._(String name): super(name);

  static BuiltSet<InlineObject134StateEnum> get values => _$inlineObject134StateEnumValues;
  static InlineObject134StateEnum valueOf(String name) => _$inlineObject134StateEnumValueOf(name);
}

