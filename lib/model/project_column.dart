//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'project_column.g.dart';

abstract class ProjectColumn implements Built<ProjectColumn, ProjectColumnBuilder> {

    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    @nullable
    @BuiltValueField(wireName: r'project_url')
    String get projectUrl;

    @nullable
    @BuiltValueField(wireName: r'cards_url')
    String get cardsUrl;

    /// The unique identifier of the project column
    @nullable
    @BuiltValueField(wireName: r'id')
    int get id;

    @nullable
    @BuiltValueField(wireName: r'node_id')
    String get nodeId;

    /// Name of the project column
    @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    @nullable
    @BuiltValueField(wireName: r'created_at')
    DateTime get createdAt;

    @nullable
    @BuiltValueField(wireName: r'updated_at')
    DateTime get updatedAt;

    // Boilerplate code needed to wire-up generated code
    ProjectColumn._();

    static void _initializeBuilder(ProjectColumnBuilder b) => b;

    factory ProjectColumn([void updates(ProjectColumnBuilder b)]) = _$ProjectColumn;
    static Serializer<ProjectColumn> get serializer => _$projectColumnSerializer;
}

