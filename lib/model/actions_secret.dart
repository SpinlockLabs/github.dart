//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'actions_secret.g.dart';

abstract class ActionsSecret implements Built<ActionsSecret, ActionsSecretBuilder> {

    /// The name of the secret.
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
    ActionsSecret._();

    static void _initializeBuilder(ActionsSecretBuilder b) => b;

    factory ActionsSecret([void updates(ActionsSecretBuilder b)]) = _$ActionsSecret;
    static Serializer<ActionsSecret> get serializer => _$actionsSecretSerializer;
}

