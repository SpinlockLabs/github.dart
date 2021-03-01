//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/check_suite_preference_preferences_auto_trigger_checks.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'check_suite_preference_preferences.g.dart';

abstract class CheckSuitePreferencePreferences implements Built<CheckSuitePreferencePreferences, CheckSuitePreferencePreferencesBuilder> {

    @nullable
    @BuiltValueField(wireName: r'auto_trigger_checks')
    BuiltList<CheckSuitePreferencePreferencesAutoTriggerChecks> get autoTriggerChecks;

    // Boilerplate code needed to wire-up generated code
    CheckSuitePreferencePreferences._();

    static void _initializeBuilder(CheckSuitePreferencePreferencesBuilder b) => b;

    factory CheckSuitePreferencePreferences([void updates(CheckSuitePreferencePreferencesBuilder b)]) = _$CheckSuitePreferencePreferences;
    static Serializer<CheckSuitePreferencePreferences> get serializer => _$checkSuitePreferencePreferencesSerializer;
}

