//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object13.g.dart';

abstract class InlineObject13 implements Built<InlineObject13, InlineObject13Builder> {

    /// List of organization IDs to enable for GitHub Actions.
    @nullable
    @BuiltValueField(wireName: r'selected_organization_ids')
    BuiltList<int> get selectedOrganizationIds;

    // Boilerplate code needed to wire-up generated code
    InlineObject13._();

    static void _initializeBuilder(InlineObject13Builder b) => b;

    factory InlineObject13([void updates(InlineObject13Builder b)]) = _$InlineObject13;
    static Serializer<InlineObject13> get serializer => _$inlineObject13Serializer;
}

