//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'check_annotation.g.dart';

abstract class CheckAnnotation implements Built<CheckAnnotation, CheckAnnotationBuilder> {

    @nullable
    @BuiltValueField(wireName: r'path')
    String get path;

    @nullable
    @BuiltValueField(wireName: r'start_line')
    int get startLine;

    @nullable
    @BuiltValueField(wireName: r'end_line')
    int get endLine;

    @nullable
    @BuiltValueField(wireName: r'start_column')
    int get startColumn;

    @nullable
    @BuiltValueField(wireName: r'end_column')
    int get endColumn;

    @nullable
    @BuiltValueField(wireName: r'annotation_level')
    String get annotationLevel;

    @nullable
    @BuiltValueField(wireName: r'title')
    String get title;

    @nullable
    @BuiltValueField(wireName: r'message')
    String get message;

    @nullable
    @BuiltValueField(wireName: r'raw_details')
    String get rawDetails;

    @nullable
    @BuiltValueField(wireName: r'blob_href')
    String get blobHref;

    // Boilerplate code needed to wire-up generated code
    CheckAnnotation._();

    static void _initializeBuilder(CheckAnnotationBuilder b) => b;

    factory CheckAnnotation([void updates(CheckAnnotationBuilder b)]) = _$CheckAnnotation;
    static Serializer<CheckAnnotation> get serializer => _$checkAnnotationSerializer;
}

