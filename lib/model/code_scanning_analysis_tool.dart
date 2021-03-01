//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'code_scanning_analysis_tool.g.dart';

abstract class CodeScanningAnalysisTool implements Built<CodeScanningAnalysisTool, CodeScanningAnalysisToolBuilder> {

    /// The name of the tool used to generate the code scanning analysis.
    @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    /// The version of the tool used to generate the code scanning analysis.
    @nullable
    @BuiltValueField(wireName: r'version')
    String get version;

    /// The GUID of the tool used to generate the code scanning analysis, if provided in the uploaded SARIF data.
    @nullable
    @BuiltValueField(wireName: r'guid')
    String get guid;

    // Boilerplate code needed to wire-up generated code
    CodeScanningAnalysisTool._();

    static void _initializeBuilder(CodeScanningAnalysisToolBuilder b) => b;

    factory CodeScanningAnalysisTool([void updates(CodeScanningAnalysisToolBuilder b)]) = _$CodeScanningAnalysisTool;
    static Serializer<CodeScanningAnalysisTool> get serializer => _$codeScanningAnalysisToolSerializer;
}

