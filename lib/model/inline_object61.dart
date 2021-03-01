//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/allowed_actions.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object61.g.dart';

abstract class InlineObject61 implements Built<InlineObject61, InlineObject61Builder> {

    /// Whether GitHub Actions is enabled on the repository.
    @nullable
    @BuiltValueField(wireName: r'enabled')
    bool get enabled;

    @nullable
    @BuiltValueField(wireName: r'allowed_actions')
    AllowedActions get allowedActions;
    // enum allowedActionsEnum {  all,  local_only,  selected,  };

    // Boilerplate code needed to wire-up generated code
    InlineObject61._();

    static void _initializeBuilder(InlineObject61Builder b) => b;

    factory InlineObject61([void updates(InlineObject61Builder b)]) = _$InlineObject61;
    static Serializer<InlineObject61> get serializer => _$inlineObject61Serializer;
}

