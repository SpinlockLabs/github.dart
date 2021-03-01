//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object126.g.dart';

abstract class InlineObject126 implements Built<InlineObject126, InlineObject126Builder> {

    /// The title of the milestone.
    @nullable
    @BuiltValueField(wireName: r'title')
    String get title;

    /// The state of the milestone. Either `open` or `closed`.
    @nullable
    @BuiltValueField(wireName: r'state')
    InlineObject126StateEnum get state;
    // enum stateEnum {  open,  closed,  };

    /// A description of the milestone.
    @nullable
    @BuiltValueField(wireName: r'description')
    String get description;

    /// The milestone due date. This is a timestamp in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format: `YYYY-MM-DDTHH:MM:SSZ`.
    @nullable
    @BuiltValueField(wireName: r'due_on')
    String get dueOn;

    // Boilerplate code needed to wire-up generated code
    InlineObject126._();

    static void _initializeBuilder(InlineObject126Builder b) => b
        ..state = const InlineObject126StateEnum._('open');

    factory InlineObject126([void updates(InlineObject126Builder b)]) = _$InlineObject126;
    static Serializer<InlineObject126> get serializer => _$inlineObject126Serializer;
}

class InlineObject126StateEnum extends EnumClass {

  /// The state of the milestone. Either `open` or `closed`.
  @BuiltValueEnumConst(wireName: r'open')
  static const InlineObject126StateEnum open = _$inlineObject126StateEnum_open;
  /// The state of the milestone. Either `open` or `closed`.
  @BuiltValueEnumConst(wireName: r'closed')
  static const InlineObject126StateEnum closed = _$inlineObject126StateEnum_closed;

  static Serializer<InlineObject126StateEnum> get serializer => _$inlineObject126StateEnumSerializer;

  const InlineObject126StateEnum._(String name): super(name);

  static BuiltSet<InlineObject126StateEnum> get values => _$inlineObject126StateEnumValues;
  static InlineObject126StateEnum valueOf(String name) => _$inlineObject126StateEnumValueOf(name);
}

