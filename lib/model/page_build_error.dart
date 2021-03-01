//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'page_build_error.g.dart';

abstract class PageBuildError implements Built<PageBuildError, PageBuildErrorBuilder> {

    @nullable
    @BuiltValueField(wireName: r'message')
    String get message;

    // Boilerplate code needed to wire-up generated code
    PageBuildError._();

    static void _initializeBuilder(PageBuildErrorBuilder b) => b;

    factory PageBuildError([void updates(PageBuildErrorBuilder b)]) = _$PageBuildError;
    static Serializer<PageBuildError> get serializer => _$pageBuildErrorSerializer;
}

