//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'private_user_plan.g.dart';

abstract class PrivateUserPlan implements Built<PrivateUserPlan, PrivateUserPlanBuilder> {

    @nullable
    @BuiltValueField(wireName: r'collaborators')
    int get collaborators;

    @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    @nullable
    @BuiltValueField(wireName: r'space')
    int get space;

    @nullable
    @BuiltValueField(wireName: r'private_repos')
    int get privateRepos;

    // Boilerplate code needed to wire-up generated code
    PrivateUserPlan._();

    static void _initializeBuilder(PrivateUserPlanBuilder b) => b;

    factory PrivateUserPlan([void updates(PrivateUserPlanBuilder b)]) = _$PrivateUserPlan;
    static Serializer<PrivateUserPlan> get serializer => _$privateUserPlanSerializer;
}

