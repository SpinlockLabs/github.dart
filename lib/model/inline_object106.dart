//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object106.g.dart';

abstract class InlineObject106 implements Built<InlineObject106, InlineObject106Builder> {

    /// The username to provide to the originating repository.
    @nullable
    @BuiltValueField(wireName: r'vcs_username')
    String get vcsUsername;

    /// The password to provide to the originating repository.
    @nullable
    @BuiltValueField(wireName: r'vcs_password')
    String get vcsPassword;

    @nullable
    @BuiltValueField(wireName: r'vcs')
    String get vcs;

    @nullable
    @BuiltValueField(wireName: r'tfvc_project')
    String get tfvcProject;

    // Boilerplate code needed to wire-up generated code
    InlineObject106._();

    static void _initializeBuilder(InlineObject106Builder b) => b;

    factory InlineObject106([void updates(InlineObject106Builder b)]) = _$InlineObject106;
    static Serializer<InlineObject106> get serializer => _$inlineObject106Serializer;
}

