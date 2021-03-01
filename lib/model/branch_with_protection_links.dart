//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'branch_with_protection_links.g.dart';

abstract class BranchWithProtectionLinks implements Built<BranchWithProtectionLinks, BranchWithProtectionLinksBuilder> {

    @nullable
    @BuiltValueField(wireName: r'html')
    String get html;

    @nullable
    @BuiltValueField(wireName: r'self')
    String get self;

    // Boilerplate code needed to wire-up generated code
    BranchWithProtectionLinks._();

    static void _initializeBuilder(BranchWithProtectionLinksBuilder b) => b;

    factory BranchWithProtectionLinks([void updates(BranchWithProtectionLinksBuilder b)]) = _$BranchWithProtectionLinks;
    static Serializer<BranchWithProtectionLinks> get serializer => _$branchWithProtectionLinksSerializer;
}

