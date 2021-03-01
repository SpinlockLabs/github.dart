//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'issue_search_result_item_labels.g.dart';

abstract class IssueSearchResultItemLabels implements Built<IssueSearchResultItemLabels, IssueSearchResultItemLabelsBuilder> {

    @nullable
    @BuiltValueField(wireName: r'id')
    int get id;

    @nullable
    @BuiltValueField(wireName: r'node_id')
    String get nodeId;

    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    @nullable
    @BuiltValueField(wireName: r'color')
    String get color;

    @nullable
    @BuiltValueField(wireName: r'default')
    bool get default_;

    @nullable
    @BuiltValueField(wireName: r'description')
    String get description;

    // Boilerplate code needed to wire-up generated code
    IssueSearchResultItemLabels._();

    static void _initializeBuilder(IssueSearchResultItemLabelsBuilder b) => b;

    factory IssueSearchResultItemLabels([void updates(IssueSearchResultItemLabelsBuilder b)]) = _$IssueSearchResultItemLabels;
    static Serializer<IssueSearchResultItemLabels> get serializer => _$issueSearchResultItemLabelsSerializer;
}

