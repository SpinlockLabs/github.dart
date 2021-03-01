//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/simple_user.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'stargazer.g.dart';

abstract class Stargazer implements Built<Stargazer, StargazerBuilder> {

    @nullable
    @BuiltValueField(wireName: r'starred_at')
    DateTime get starredAt;

    @nullable
    @BuiltValueField(wireName: r'user')
    SimpleUser get user;

    // Boilerplate code needed to wire-up generated code
    Stargazer._();

    static void _initializeBuilder(StargazerBuilder b) => b;

    factory Stargazer([void updates(StargazerBuilder b)]) = _$Stargazer;
    static Serializer<Stargazer> get serializer => _$stargazerSerializer;
}

