//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object125.g.dart';

abstract class InlineObject125 implements Built<InlineObject125, InlineObject125Builder> {

    /// The title of the milestone.
    @nullable
    @BuiltValueField(wireName: r'title')
    String get title;

    /// The state of the milestone. Either `open` or `closed`.
    @nullable
    @BuiltValueField(wireName: r'state')
    InlineObject125StateEnum get state;
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
    InlineObject125._();

    static void _initializeBuilder(InlineObject125Builder b) => b
        ..state = const InlineObject125StateEnum._('open');

    factory InlineObject125([void updates(InlineObject125Builder b)]) = _$InlineObject125;
    static Serializer<InlineObject125> get serializer => _$inlineObject125Serializer;
}

class InlineObject125StateEnum extends EnumClass {

  /// The state of the milestone. Either `open` or `closed`.
  @BuiltValueEnumConst(wireName: r'open')
  static const InlineObject125StateEnum open = _$inlineObject125StateEnum_open;
  /// The state of the milestone. Either `open` or `closed`.
  @BuiltValueEnumConst(wireName: r'closed')
  static const InlineObject125StateEnum closed = _$inlineObject125StateEnum_closed;

  static Serializer<InlineObject125StateEnum> get serializer => _$inlineObject125StateEnumSerializer;

  const InlineObject125StateEnum._(String name): super(name);

  static BuiltSet<InlineObject125StateEnum> get values => _$inlineObject125StateEnumValues;
  static InlineObject125StateEnum valueOf(String name) => _$inlineObject125StateEnumValueOf(name);
}

