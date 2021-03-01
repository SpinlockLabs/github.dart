//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'organization_full_plan.g.dart';

abstract class OrganizationFullPlan implements Built<OrganizationFullPlan, OrganizationFullPlanBuilder> {

    @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    @nullable
    @BuiltValueField(wireName: r'space')
    int get space;

    @nullable
    @BuiltValueField(wireName: r'private_repos')
    int get privateRepos;

    @nullable
    @BuiltValueField(wireName: r'filled_seats')
    int get filledSeats;

    @nullable
    @BuiltValueField(wireName: r'seats')
    int get seats;

    // Boilerplate code needed to wire-up generated code
    OrganizationFullPlan._();

    static void _initializeBuilder(OrganizationFullPlanBuilder b) => b;

    factory OrganizationFullPlan([void updates(OrganizationFullPlanBuilder b)]) = _$OrganizationFullPlan;
    static Serializer<OrganizationFullPlan> get serializer => _$organizationFullPlanSerializer;
}

