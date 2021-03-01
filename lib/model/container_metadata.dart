//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'container_metadata.g.dart';

abstract class ContainerMetadata implements Built<ContainerMetadata, ContainerMetadataBuilder> {

    @nullable
    @BuiltValueField(wireName: r'tags')
    BuiltList get tags;

    // Boilerplate code needed to wire-up generated code
    ContainerMetadata._();

    static void _initializeBuilder(ContainerMetadataBuilder b) => b;

    factory ContainerMetadata([void updates(ContainerMetadataBuilder b)]) = _$ContainerMetadata;
    static Serializer<ContainerMetadata> get serializer => _$containerMetadataSerializer;
}

