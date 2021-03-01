//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'code_scanning_analysis_deletion.g.dart';

abstract class CodeScanningAnalysisDeletion implements Built<CodeScanningAnalysisDeletion, CodeScanningAnalysisDeletionBuilder> {

    /// Next deletable analysis in chain, without last analysis deletion confirmation
    @nullable
    @BuiltValueField(wireName: r'next_analysis_url')
    String get nextAnalysisUrl;

    /// Next deletable analysis in chain, with last analysis deletion confirmation
    @nullable
    @BuiltValueField(wireName: r'confirm_delete_url')
    String get confirmDeleteUrl;

    // Boilerplate code needed to wire-up generated code
    CodeScanningAnalysisDeletion._();

    static void _initializeBuilder(CodeScanningAnalysisDeletionBuilder b) => b;

    factory CodeScanningAnalysisDeletion([void updates(CodeScanningAnalysisDeletionBuilder b)]) = _$CodeScanningAnalysisDeletion;
    static Serializer<CodeScanningAnalysisDeletion> get serializer => _$codeScanningAnalysisDeletionSerializer;
}

