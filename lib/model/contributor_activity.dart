//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:github/model/simple_user.dart';
import 'package:github/model/contributor_activity_weeks.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'contributor_activity.g.dart';

abstract class ContributorActivity implements Built<ContributorActivity, ContributorActivityBuilder> {

    @nullable
    @BuiltValueField(wireName: r'author')
    SimpleUser get author;

    @nullable
    @BuiltValueField(wireName: r'total')
    int get total;

    @nullable
    @BuiltValueField(wireName: r'weeks')
    BuiltList<ContributorActivityWeeks> get weeks;

    // Boilerplate code needed to wire-up generated code
    ContributorActivity._();

    static void _initializeBuilder(ContributorActivityBuilder b) => b;

    factory ContributorActivity([void updates(ContributorActivityBuilder b)]) = _$ContributorActivity;
    static Serializer<ContributorActivity> get serializer => _$contributorActivitySerializer;
}

