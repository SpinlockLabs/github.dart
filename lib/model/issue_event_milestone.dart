//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'issue_event_milestone.g.dart';

abstract class IssueEventMilestone implements Built<IssueEventMilestone, IssueEventMilestoneBuilder> {

    @nullable
    @BuiltValueField(wireName: r'title')
    String get title;

    // Boilerplate code needed to wire-up generated code
    IssueEventMilestone._();

    static void _initializeBuilder(IssueEventMilestoneBuilder b) => b;

    factory IssueEventMilestone([void updates(IssueEventMilestoneBuilder b)]) = _$IssueEventMilestone;
    static Serializer<IssueEventMilestone> get serializer => _$issueEventMilestoneSerializer;
}

