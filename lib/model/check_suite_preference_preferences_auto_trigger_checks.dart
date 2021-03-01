//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'check_suite_preference_preferences_auto_trigger_checks.g.dart';

abstract class CheckSuitePreferencePreferencesAutoTriggerChecks implements Built<CheckSuitePreferencePreferencesAutoTriggerChecks, CheckSuitePreferencePreferencesAutoTriggerChecksBuilder> {

    @nullable
    @BuiltValueField(wireName: r'app_id')
    int get appId;

    @nullable
    @BuiltValueField(wireName: r'setting')
    bool get setting;

    // Boilerplate code needed to wire-up generated code
    CheckSuitePreferencePreferencesAutoTriggerChecks._();

    static void _initializeBuilder(CheckSuitePreferencePreferencesAutoTriggerChecksBuilder b) => b;

    factory CheckSuitePreferencePreferencesAutoTriggerChecks([void updates(CheckSuitePreferencePreferencesAutoTriggerChecksBuilder b)]) = _$CheckSuitePreferencePreferencesAutoTriggerChecks;
    static Serializer<CheckSuitePreferencePreferencesAutoTriggerChecks> get serializer => _$checkSuitePreferencePreferencesAutoTriggerChecksSerializer;
}

