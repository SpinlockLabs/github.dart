//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/interaction_group.dart';
import 'package:github/model/interaction_expiry.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'interaction_limit.g.dart';

abstract class InteractionLimit implements Built<InteractionLimit, InteractionLimitBuilder> {

    @nullable
    @BuiltValueField(wireName: r'limit')
    InteractionGroup get limit;
    // enum limitEnum {  existing_users,  contributors_only,  collaborators_only,  };

    @nullable
    @BuiltValueField(wireName: r'expiry')
    InteractionExpiry get expiry;
    // enum expiryEnum {  one_day,  three_days,  one_week,  one_month,  six_months,  };

    // Boilerplate code needed to wire-up generated code
    InteractionLimit._();

    static void _initializeBuilder(InteractionLimitBuilder b) => b;

    factory InteractionLimit([void updates(InteractionLimitBuilder b)]) = _$InteractionLimit;
    static Serializer<InteractionLimit> get serializer => _$interactionLimitSerializer;
}

