//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'docker_metadata.g.dart';

abstract class DockerMetadata implements Built<DockerMetadata, DockerMetadataBuilder> {

    @nullable
    @BuiltValueField(wireName: r'tag')
    BuiltList get tag;

    // Boilerplate code needed to wire-up generated code
    DockerMetadata._();

    static void _initializeBuilder(DockerMetadataBuilder b) => b;

    factory DockerMetadata([void updates(DockerMetadataBuilder b)]) = _$DockerMetadata;
    static Serializer<DockerMetadata> get serializer => _$dockerMetadataSerializer;
}

