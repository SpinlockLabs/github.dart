//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/code_scanning_alert_dismissed_reason.dart';
import 'package:github/model/code_scanning_analysis_tool.dart';
import 'package:github/model/code_scanning_alert_rule.dart';
import 'package:github/model/simple_user.dart';
import 'package:github/model/code_scanning_alert_state.dart';
import 'package:github/model/code_scanning_alert_instance.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'code_scanning_alert.g.dart';

abstract class CodeScanningAlert implements Built<CodeScanningAlert, CodeScanningAlertBuilder> {

    /// The security alert number.
    @nullable
    @BuiltValueField(wireName: r'number')
    int get number;

    /// The time that the alert was created in ISO 8601 format: `YYYY-MM-DDTHH:MM:SSZ`.
    @nullable
    @BuiltValueField(wireName: r'created_at')
    DateTime get createdAt;

    /// The REST API URL of the alert resource.
    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    /// The GitHub URL of the alert resource.
    @nullable
    @BuiltValueField(wireName: r'html_url')
    String get htmlUrl;

    /// The REST API URL for fetching the list of instances for an alert.
    @nullable
    @BuiltValueField(wireName: r'instances_url')
    String get instancesUrl;

    @nullable
    @BuiltValueField(wireName: r'state')
    CodeScanningAlertState get state;
    // enum stateEnum {  open,  dismissed,  fixed,  };

    @nullable
    @BuiltValueField(wireName: r'dismissed_by')
    SimpleUser get dismissedBy;

    /// The time that the alert was dismissed in ISO 8601 format: `YYYY-MM-DDTHH:MM:SSZ`.
    @nullable
    @BuiltValueField(wireName: r'dismissed_at')
    DateTime get dismissedAt;

    @nullable
    @BuiltValueField(wireName: r'dismissed_reason')
    CodeScanningAlertDismissedReason get dismissedReason;

    @nullable
    @BuiltValueField(wireName: r'rule')
    CodeScanningAlertRule get rule;

    @nullable
    @BuiltValueField(wireName: r'tool')
    CodeScanningAnalysisTool get tool;

    @nullable
    @BuiltValueField(wireName: r'most_recent_instance')
    CodeScanningAlertInstance get mostRecentInstance;

    // Boilerplate code needed to wire-up generated code
    CodeScanningAlert._();

    static void _initializeBuilder(CodeScanningAlertBuilder b) => b;

    factory CodeScanningAlert([void updates(CodeScanningAlertBuilder b)]) = _$CodeScanningAlert;
    static Serializer<CodeScanningAlert> get serializer => _$codeScanningAlertSerializer;
}

