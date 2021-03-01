//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'code_scanning_alert_location.g.dart';

abstract class CodeScanningAlertLocation implements Built<CodeScanningAlertLocation, CodeScanningAlertLocationBuilder> {

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

    // Boilerplate code needed to wire-up generated code
    CodeScanningAlertLocation._();

    static void _initializeBuilder(CodeScanningAlertLocationBuilder b) => b;

    factory CodeScanningAlertLocation([void updates(CodeScanningAlertLocationBuilder b)]) = _$CodeScanningAlertLocation;
    static Serializer<CodeScanningAlertLocation> get serializer => _$codeScanningAlertLocationSerializer;
}

