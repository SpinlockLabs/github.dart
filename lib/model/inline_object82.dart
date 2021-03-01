//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:github/model/repos_owner_repo_check_suites_preferences_auto_trigger_checks.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object82.g.dart';

abstract class InlineObject82 implements Built<InlineObject82, InlineObject82Builder> {

    /// Enables or disables automatic creation of CheckSuite events upon pushes to the repository. Enabled by default. See the [`auto_trigger_checks` object](https://docs.github.com/rest/reference/checks#auto_trigger_checks-object) description for details.
    @nullable
    @BuiltValueField(wireName: r'auto_trigger_checks')
    BuiltList<ReposOwnerRepoCheckSuitesPreferencesAutoTriggerChecks> get autoTriggerChecks;

    // Boilerplate code needed to wire-up generated code
    InlineObject82._();

    static void _initializeBuilder(InlineObject82Builder b) => b;

    factory InlineObject82([void updates(InlineObject82Builder b)]) = _$InlineObject82;
    static Serializer<InlineObject82> get serializer => _$inlineObject82Serializer;
}

