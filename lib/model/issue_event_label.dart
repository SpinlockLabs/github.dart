//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'issue_event_label.g.dart';

abstract class IssueEventLabel implements Built<IssueEventLabel, IssueEventLabelBuilder> {

    @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    @nullable
    @BuiltValueField(wireName: r'color')
    String get color;

    // Boilerplate code needed to wire-up generated code
    IssueEventLabel._();

    static void _initializeBuilder(IssueEventLabelBuilder b) => b;

    factory IssueEventLabel([void updates(IssueEventLabelBuilder b)]) = _$IssueEventLabel;
    static Serializer<IssueEventLabel> get serializer => _$issueEventLabelSerializer;
}

