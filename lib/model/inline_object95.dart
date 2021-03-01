//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object95.g.dart';

abstract class InlineObject95 implements Built<InlineObject95, InlineObject95Builder> {

    /// Optional parameter to specify the organization name if forking into an organization.
    @nullable
    @BuiltValueField(wireName: r'organization')
    String get organization;

    // Boilerplate code needed to wire-up generated code
    InlineObject95._();

    static void _initializeBuilder(InlineObject95Builder b) => b;

    factory InlineObject95([void updates(InlineObject95Builder b)]) = _$InlineObject95;
    static Serializer<InlineObject95> get serializer => _$inlineObject95Serializer;
}

