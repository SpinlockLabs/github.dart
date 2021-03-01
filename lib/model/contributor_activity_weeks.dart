//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'contributor_activity_weeks.g.dart';

abstract class ContributorActivityWeeks implements Built<ContributorActivityWeeks, ContributorActivityWeeksBuilder> {

    @nullable
    @BuiltValueField(wireName: r'w')
    String get w;

    @nullable
    @BuiltValueField(wireName: r'a')
    int get a;

    @nullable
    @BuiltValueField(wireName: r'd')
    int get d;

    @nullable
    @BuiltValueField(wireName: r'c')
    int get c;

    // Boilerplate code needed to wire-up generated code
    ContributorActivityWeeks._();

    static void _initializeBuilder(ContributorActivityWeeksBuilder b) => b;

    factory ContributorActivityWeeks([void updates(ContributorActivityWeeksBuilder b)]) = _$ContributorActivityWeeks;
    static Serializer<ContributorActivityWeeks> get serializer => _$contributorActivityWeeksSerializer;
}

