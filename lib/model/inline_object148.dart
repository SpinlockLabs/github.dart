//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object148.g.dart';

abstract class InlineObject148 implements Built<InlineObject148, InlineObject148Builder> {

    /// The state of the status. Can be one of `error`, `failure`, `pending`, or `success`.
    @nullable
    @BuiltValueField(wireName: r'state')
    InlineObject148StateEnum get state;
    // enum stateEnum {  error,  failure,  pending,  success,  };

    /// The target URL to associate with this status. This URL will be linked from the GitHub UI to allow users to easily see the source of the status.   For example, if your continuous integration system is posting build status, you would want to provide the deep link for the build output for this specific SHA:   `http://ci.example.com/user/repo/build/sha`
    @nullable
    @BuiltValueField(wireName: r'target_url')
    String get targetUrl;

    /// A short description of the status.
    @nullable
    @BuiltValueField(wireName: r'description')
    String get description;

    /// A string label to differentiate this status from the status of other systems. This field is case-insensitive.
    @nullable
    @BuiltValueField(wireName: r'context')
    String get context;

    // Boilerplate code needed to wire-up generated code
    InlineObject148._();

    static void _initializeBuilder(InlineObject148Builder b) => b
        ..context = 'default';

    factory InlineObject148([void updates(InlineObject148Builder b)]) = _$InlineObject148;
    static Serializer<InlineObject148> get serializer => _$inlineObject148Serializer;
}

class InlineObject148StateEnum extends EnumClass {

  /// The state of the status. Can be one of `error`, `failure`, `pending`, or `success`.
  @BuiltValueEnumConst(wireName: r'error')
  static const InlineObject148StateEnum error = _$inlineObject148StateEnum_error;
  /// The state of the status. Can be one of `error`, `failure`, `pending`, or `success`.
  @BuiltValueEnumConst(wireName: r'failure')
  static const InlineObject148StateEnum failure = _$inlineObject148StateEnum_failure;
  /// The state of the status. Can be one of `error`, `failure`, `pending`, or `success`.
  @BuiltValueEnumConst(wireName: r'pending')
  static const InlineObject148StateEnum pending = _$inlineObject148StateEnum_pending;
  /// The state of the status. Can be one of `error`, `failure`, `pending`, or `success`.
  @BuiltValueEnumConst(wireName: r'success')
  static const InlineObject148StateEnum success = _$inlineObject148StateEnum_success;

  static Serializer<InlineObject148StateEnum> get serializer => _$inlineObject148StateEnumSerializer;

  const InlineObject148StateEnum._(String name): super(name);

  static BuiltSet<InlineObject148StateEnum> get values => _$inlineObject148StateEnumValues;
  static InlineObject148StateEnum valueOf(String name) => _$inlineObject148StateEnumValueOf(name);
}

