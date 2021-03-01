//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/page_build_error.dart';
import 'package:github/model/simple_user.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'page_build.g.dart';

abstract class PageBuild implements Built<PageBuild, PageBuildBuilder> {

    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    @nullable
    @BuiltValueField(wireName: r'status')
    String get status;

    @nullable
    @BuiltValueField(wireName: r'error')
    PageBuildError get error;

    @nullable
    @BuiltValueField(wireName: r'pusher')
    SimpleUser get pusher;

    @nullable
    @BuiltValueField(wireName: r'commit')
    String get commit;

    @nullable
    @BuiltValueField(wireName: r'duration')
    int get duration;

    @nullable
    @BuiltValueField(wireName: r'created_at')
    DateTime get createdAt;

    @nullable
    @BuiltValueField(wireName: r'updated_at')
    DateTime get updatedAt;

    // Boilerplate code needed to wire-up generated code
    PageBuild._();

    static void _initializeBuilder(PageBuildBuilder b) => b;

    factory PageBuild([void updates(PageBuildBuilder b)]) = _$PageBuild;
    static Serializer<PageBuild> get serializer => _$pageBuildSerializer;
}

