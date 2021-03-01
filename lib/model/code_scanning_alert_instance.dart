//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/code_scanning_alert_instance_message.dart';
import 'package:github/model/code_scanning_alert_location.dart';
import 'package:built_collection/built_collection.dart';
import 'package:github/model/code_scanning_alert_classification.dart';
import 'package:github/model/code_scanning_alert_state.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'code_scanning_alert_instance.g.dart';

abstract class CodeScanningAlertInstance implements Built<CodeScanningAlertInstance, CodeScanningAlertInstanceBuilder> {

    /// The full Git reference, formatted as `refs/heads/<branch name>`.
    @nullable
    @BuiltValueField(wireName: r'ref')
    String get ref;

    /// Identifies the configuration under which the analysis was executed. For example, in GitHub Actions this includes the workflow filename and job name.
    @nullable
    @BuiltValueField(wireName: r'analysis_key')
    String get analysisKey;

    /// Identifies the variable values associated with the environment in which the analysis that generated this alert instance was performed, such as the language that was analyzed.
    @nullable
    @BuiltValueField(wireName: r'environment')
    String get environment;

    @nullable
    @BuiltValueField(wireName: r'state')
    CodeScanningAlertState get state;
    // enum stateEnum {  open,  dismissed,  fixed,  };

    @nullable
    @BuiltValueField(wireName: r'commit_sha')
    String get commitSha;

    @nullable
    @BuiltValueField(wireName: r'message')
    CodeScanningAlertInstanceMessage get message;

    @nullable
    @BuiltValueField(wireName: r'location')
    CodeScanningAlertLocation get location;

    @nullable
    @BuiltValueField(wireName: r'html_url')
    String get htmlUrl;

    /// Classifications that have been applied to the file that triggered the alert. For example identifying it as documentation, or a generated file.
    @nullable
    @BuiltValueField(wireName: r'classifications')
    BuiltList<CodeScanningAlertClassification> get classifications;

    // Boilerplate code needed to wire-up generated code
    CodeScanningAlertInstance._();

    static void _initializeBuilder(CodeScanningAlertInstanceBuilder b) => b;

    factory CodeScanningAlertInstance([void updates(CodeScanningAlertInstanceBuilder b)]) = _$CodeScanningAlertInstance;
    static Serializer<CodeScanningAlertInstance> get serializer => _$codeScanningAlertInstanceSerializer;
}

