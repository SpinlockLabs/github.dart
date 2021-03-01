//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'content_reference_attachment.g.dart';

abstract class ContentReferenceAttachment implements Built<ContentReferenceAttachment, ContentReferenceAttachmentBuilder> {

    /// The ID of the attachment
    @nullable
    @BuiltValueField(wireName: r'id')
    int get id;

    /// The title of the attachment
    @nullable
    @BuiltValueField(wireName: r'title')
    String get title;

    /// The body of the attachment
    @nullable
    @BuiltValueField(wireName: r'body')
    String get body;

    /// The node_id of the content attachment
    @nullable
    @BuiltValueField(wireName: r'node_id')
    String get nodeId;

    // Boilerplate code needed to wire-up generated code
    ContentReferenceAttachment._();

    static void _initializeBuilder(ContentReferenceAttachmentBuilder b) => b;

    factory ContentReferenceAttachment([void updates(ContentReferenceAttachmentBuilder b)]) = _$ContentReferenceAttachment;
    static Serializer<ContentReferenceAttachment> get serializer => _$contentReferenceAttachmentSerializer;
}

