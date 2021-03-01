//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/check_suite_preference_preferences.dart';
import 'package:github/model/repository.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'check_suite_preference.g.dart';

abstract class CheckSuitePreference implements Built<CheckSuitePreference, CheckSuitePreferenceBuilder> {

    @nullable
    @BuiltValueField(wireName: r'preferences')
    CheckSuitePreferencePreferences get preferences;

    @nullable
    @BuiltValueField(wireName: r'repository')
    Repository get repository;

    // Boilerplate code needed to wire-up generated code
    CheckSuitePreference._();

    static void _initializeBuilder(CheckSuitePreferenceBuilder b) => b;

    factory CheckSuitePreference([void updates(CheckSuitePreferenceBuilder b)]) = _$CheckSuitePreference;
    static Serializer<CheckSuitePreference> get serializer => _$checkSuitePreferenceSerializer;
}

