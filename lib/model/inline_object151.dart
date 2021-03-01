//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object151.g.dart';

abstract class InlineObject151 implements Built<InlineObject151, InlineObject151Builder> {

    /// The username or organization name the repository will be transferred to.
    @nullable
    @BuiltValueField(wireName: r'new_owner')
    String get newOwner;

    /// ID of the team or teams to add to the repository. Teams can only be added to organization-owned repositories.
    @nullable
    @BuiltValueField(wireName: r'team_ids')
    BuiltList<int> get teamIds;

    // Boilerplate code needed to wire-up generated code
    InlineObject151._();

    static void _initializeBuilder(InlineObject151Builder b) => b;

    factory InlineObject151([void updates(InlineObject151Builder b)]) = _$InlineObject151;
    static Serializer<InlineObject151> get serializer => _$inlineObject151Serializer;
}

