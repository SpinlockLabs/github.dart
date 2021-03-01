//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object119.g.dart';

abstract class InlineObject119 implements Built<InlineObject119, InlineObject119Builder> {

    /// The reason for locking the issue or pull request conversation. Lock will fail if you don't use one of these reasons:   \\* `off-topic`   \\* `too heated`   \\* `resolved`   \\* `spam`
    @nullable
    @BuiltValueField(wireName: r'lock_reason')
    InlineObject119LockReasonEnum get lockReason;
    // enum lockReasonEnum {  off-topic,  too heated,  resolved,  spam,  };

    // Boilerplate code needed to wire-up generated code
    InlineObject119._();

    static void _initializeBuilder(InlineObject119Builder b) => b;

    factory InlineObject119([void updates(InlineObject119Builder b)]) = _$InlineObject119;
    static Serializer<InlineObject119> get serializer => _$inlineObject119Serializer;
}

class InlineObject119LockReasonEnum extends EnumClass {

  /// The reason for locking the issue or pull request conversation. Lock will fail if you don't use one of these reasons:   \\* `off-topic`   \\* `too heated`   \\* `resolved`   \\* `spam`
  @BuiltValueEnumConst(wireName: r'off-topic')
  static const InlineObject119LockReasonEnum offTopic = _$inlineObject119LockReasonEnum_offTopic;
  /// The reason for locking the issue or pull request conversation. Lock will fail if you don't use one of these reasons:   \\* `off-topic`   \\* `too heated`   \\* `resolved`   \\* `spam`
  @BuiltValueEnumConst(wireName: r'too heated')
  static const InlineObject119LockReasonEnum tooHeated = _$inlineObject119LockReasonEnum_tooHeated;
  /// The reason for locking the issue or pull request conversation. Lock will fail if you don't use one of these reasons:   \\* `off-topic`   \\* `too heated`   \\* `resolved`   \\* `spam`
  @BuiltValueEnumConst(wireName: r'resolved')
  static const InlineObject119LockReasonEnum resolved = _$inlineObject119LockReasonEnum_resolved;
  /// The reason for locking the issue or pull request conversation. Lock will fail if you don't use one of these reasons:   \\* `off-topic`   \\* `too heated`   \\* `resolved`   \\* `spam`
  @BuiltValueEnumConst(wireName: r'spam')
  static const InlineObject119LockReasonEnum spam = _$inlineObject119LockReasonEnum_spam;

  static Serializer<InlineObject119LockReasonEnum> get serializer => _$inlineObject119LockReasonEnumSerializer;

  const InlineObject119LockReasonEnum._(String name): super(name);

  static BuiltSet<InlineObject119LockReasonEnum> get values => _$inlineObject119LockReasonEnumValues;
  static InlineObject119LockReasonEnum valueOf(String name) => _$inlineObject119LockReasonEnumValueOf(name);
}

