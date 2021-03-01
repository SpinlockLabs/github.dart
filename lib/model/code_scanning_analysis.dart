//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/code_scanning_analysis_tool.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'code_scanning_analysis.g.dart';

abstract class CodeScanningAnalysis implements Built<CodeScanningAnalysis, CodeScanningAnalysisBuilder> {

    /// The full Git reference, formatted as `refs/heads/<branch name>`.
    @nullable
    @BuiltValueField(wireName: r'ref')
    String get ref;

    /// The SHA of the commit to which the analysis you are uploading relates.
    @nullable
    @BuiltValueField(wireName: r'commit_sha')
    String get commitSha;

    /// Identifies the configuration under which the analysis was executed. For example, in GitHub Actions this includes the workflow filename and job name.
    @nullable
    @BuiltValueField(wireName: r'analysis_key')
    String get analysisKey;

    /// Identifies the variable values associated with the environment in which this analysis was performed.
    @nullable
    @BuiltValueField(wireName: r'environment')
    String get environment;

    @nullable
    @BuiltValueField(wireName: r'error')
    String get error;

    /// The time that the analysis was created in ISO 8601 format: `YYYY-MM-DDTHH:MM:SSZ`.
    @nullable
    @BuiltValueField(wireName: r'created_at')
    DateTime get createdAt;

    /// The total number of results in the analysis.
    @nullable
    @BuiltValueField(wireName: r'results_count')
    int get resultsCount;

    /// The total number of rules used in the analysis.
    @nullable
    @BuiltValueField(wireName: r'rules_count')
    int get rulesCount;

    /// Unique identifier for this analysis.
    @nullable
    @BuiltValueField(wireName: r'id')
    int get id;

    /// The REST API URL of the analysis resource.
    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    /// An identifier for the upload.
    @nullable
    @BuiltValueField(wireName: r'sarif_id')
    String get sarifId;

    @nullable
    @BuiltValueField(wireName: r'tool')
    CodeScanningAnalysisTool get tool;

    @nullable
    @BuiltValueField(wireName: r'deletable')
    bool get deletable;

    // Boilerplate code needed to wire-up generated code
    CodeScanningAnalysis._();

    static void _initializeBuilder(CodeScanningAnalysisBuilder b) => b;

    factory CodeScanningAnalysis([void updates(CodeScanningAnalysisBuilder b)]) = _$CodeScanningAnalysis;
    static Serializer<CodeScanningAnalysis> get serializer => _$codeScanningAnalysisSerializer;
}

