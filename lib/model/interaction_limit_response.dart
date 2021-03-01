//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/interaction_group.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'interaction_limit_response.g.dart';

abstract class InteractionLimitResponse implements Built<InteractionLimitResponse, InteractionLimitResponseBuilder> {

    @nullable
    @BuiltValueField(wireName: r'limit')
    InteractionGroup get limit;
    // enum limitEnum {  existing_users,  contributors_only,  collaborators_only,  };

    @nullable
    @BuiltValueField(wireName: r'origin')
    String get origin;

    @nullable
    @BuiltValueField(wireName: r'expires_at')
    DateTime get expiresAt;

    // Boilerplate code needed to wire-up generated code
    InteractionLimitResponse._();

    static void _initializeBuilder(InteractionLimitResponseBuilder b) => b;

    factory InteractionLimitResponse([void updates(InteractionLimitResponseBuilder b)]) = _$InteractionLimitResponse;
    static Serializer<InteractionLimitResponse> get serializer => _$interactionLimitResponseSerializer;
}

