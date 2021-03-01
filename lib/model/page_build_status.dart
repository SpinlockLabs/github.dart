//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'page_build_status.g.dart';

abstract class PageBuildStatus implements Built<PageBuildStatus, PageBuildStatusBuilder> {

    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    @nullable
    @BuiltValueField(wireName: r'status')
    String get status;

    // Boilerplate code needed to wire-up generated code
    PageBuildStatus._();

    static void _initializeBuilder(PageBuildStatusBuilder b) => b;

    factory PageBuildStatus([void updates(PageBuildStatusBuilder b)]) = _$PageBuildStatus;
    static Serializer<PageBuildStatus> get serializer => _$pageBuildStatusSerializer;
}

