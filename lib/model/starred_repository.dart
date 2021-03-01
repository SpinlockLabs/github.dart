//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/repository.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'starred_repository.g.dart';

abstract class StarredRepository implements Built<StarredRepository, StarredRepositoryBuilder> {

    @nullable
    @BuiltValueField(wireName: r'starred_at')
    DateTime get starredAt;

    @nullable
    @BuiltValueField(wireName: r'repo')
    Repository get repo;

    // Boilerplate code needed to wire-up generated code
    StarredRepository._();

    static void _initializeBuilder(StarredRepositoryBuilder b) => b;

    factory StarredRepository([void updates(StarredRepositoryBuilder b)]) = _$StarredRepository;
    static Serializer<StarredRepository> get serializer => _$starredRepositorySerializer;
}

