//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object16.g.dart';

abstract class InlineObject16 implements Built<InlineObject16, InlineObject16Builder> {

    /// List of organization IDs that can access the runner group.
    @nullable
    @BuiltValueField(wireName: r'selected_organization_ids')
    BuiltList<int> get selectedOrganizationIds;

    // Boilerplate code needed to wire-up generated code
    InlineObject16._();

    static void _initializeBuilder(InlineObject16Builder b) => b;

    factory InlineObject16([void updates(InlineObject16Builder b)]) = _$InlineObject16;
    static Serializer<InlineObject16> get serializer => _$inlineObject16Serializer;
}

