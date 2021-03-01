//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'issue_event_project_card.g.dart';

abstract class IssueEventProjectCard implements Built<IssueEventProjectCard, IssueEventProjectCardBuilder> {

    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    @nullable
    @BuiltValueField(wireName: r'id')
    int get id;

    @nullable
    @BuiltValueField(wireName: r'project_url')
    String get projectUrl;

    @nullable
    @BuiltValueField(wireName: r'project_id')
    int get projectId;

    @nullable
    @BuiltValueField(wireName: r'column_name')
    String get columnName;

    @nullable
    @BuiltValueField(wireName: r'previous_column_name')
    String get previousColumnName;

    // Boilerplate code needed to wire-up generated code
    IssueEventProjectCard._();

    static void _initializeBuilder(IssueEventProjectCardBuilder b) => b;

    factory IssueEventProjectCard([void updates(IssueEventProjectCardBuilder b)]) = _$IssueEventProjectCard;
    static Serializer<IssueEventProjectCard> get serializer => _$issueEventProjectCardSerializer;
}

