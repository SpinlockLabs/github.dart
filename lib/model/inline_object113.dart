//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/one_ofstringobject.dart';
import 'package:built_collection/built_collection.dart';
import 'package:github/model/one_ofstringinteger.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object113.g.dart';

abstract class InlineObject113 implements Built<InlineObject113, InlineObject113Builder> {

    /// The title of the issue.
    @nullable
    @BuiltValueField(wireName: r'title')
    OneOfstringinteger get title;

    /// The contents of the issue.
    @nullable
    @BuiltValueField(wireName: r'body')
    String get body;

    /// Login for the user that this issue should be assigned to. **This field is deprecated.**
    @nullable
    @BuiltValueField(wireName: r'assignee')
    String get assignee;

    /// State of the issue. Either `open` or `closed`.
    @nullable
    @BuiltValueField(wireName: r'state')
    InlineObject113StateEnum get state;
    // enum stateEnum {  open,  closed,  };

    @nullable
    @BuiltValueField(wireName: r'milestone')
    OneOfstringinteger get milestone;

    /// Labels to associate with this issue. Pass one or more Labels to _replace_ the set of Labels on this Issue. Send an empty array (`[]`) to clear all Labels from the Issue. _NOTE: Only users with push access can set labels for issues. Labels are silently dropped otherwise._
    @nullable
    @BuiltValueField(wireName: r'labels')
    BuiltList<OneOfstringobject> get labels;

    /// Logins for Users to assign to this issue. Pass one or more user logins to _replace_ the set of assignees on this Issue. Send an empty array (`[]`) to clear all assignees from the Issue. _NOTE: Only users with push access can set assignees for new issues. Assignees are silently dropped otherwise._
    @nullable
    @BuiltValueField(wireName: r'assignees')
    BuiltList<String> get assignees;

    // Boilerplate code needed to wire-up generated code
    InlineObject113._();

    static void _initializeBuilder(InlineObject113Builder b) => b;

    factory InlineObject113([void updates(InlineObject113Builder b)]) = _$InlineObject113;
    static Serializer<InlineObject113> get serializer => _$inlineObject113Serializer;
}

class InlineObject113StateEnum extends EnumClass {

  /// State of the issue. Either `open` or `closed`.
  @BuiltValueEnumConst(wireName: r'open')
  static const InlineObject113StateEnum open = _$inlineObject113StateEnum_open;
  /// State of the issue. Either `open` or `closed`.
  @BuiltValueEnumConst(wireName: r'closed')
  static const InlineObject113StateEnum closed = _$inlineObject113StateEnum_closed;

  static Serializer<InlineObject113StateEnum> get serializer => _$inlineObject113StateEnumSerializer;

  const InlineObject113StateEnum._(String name): super(name);

  static BuiltSet<InlineObject113StateEnum> get values => _$inlineObject113StateEnumValues;
  static InlineObject113StateEnum valueOf(String name) => _$inlineObject113StateEnumValueOf(name);
}

