//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/simple_user.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'project_card.g.dart';

abstract class ProjectCard implements Built<ProjectCard, ProjectCardBuilder> {

    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    /// The project card's ID
    @nullable
    @BuiltValueField(wireName: r'id')
    int get id;

    @nullable
    @BuiltValueField(wireName: r'node_id')
    String get nodeId;

    @nullable
    @BuiltValueField(wireName: r'note')
    String get note;

    @nullable
    @BuiltValueField(wireName: r'creator')
    SimpleUser get creator;

    @nullable
    @BuiltValueField(wireName: r'created_at')
    DateTime get createdAt;

    @nullable
    @BuiltValueField(wireName: r'updated_at')
    DateTime get updatedAt;

    /// Whether or not the card is archived
    @nullable
    @BuiltValueField(wireName: r'archived')
    bool get archived;

    @nullable
    @BuiltValueField(wireName: r'column_url')
    String get columnUrl;

    @nullable
    @BuiltValueField(wireName: r'content_url')
    String get contentUrl;

    @nullable
    @BuiltValueField(wireName: r'project_url')
    String get projectUrl;

    // Boilerplate code needed to wire-up generated code
    ProjectCard._();

    static void _initializeBuilder(ProjectCardBuilder b) => b;

    factory ProjectCard([void updates(ProjectCardBuilder b)]) = _$ProjectCard;
    static Serializer<ProjectCard> get serializer => _$projectCardSerializer;
}

