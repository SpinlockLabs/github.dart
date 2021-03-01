//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/allowed_actions.dart';
import 'package:github/model/enabled_repositories.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object25.g.dart';

abstract class InlineObject25 implements Built<InlineObject25, InlineObject25Builder> {

    @nullable
    @BuiltValueField(wireName: r'enabled_repositories')
    EnabledRepositories get enabledRepositories;
    // enum enabledRepositoriesEnum {  all,  none,  selected,  };

    @nullable
    @BuiltValueField(wireName: r'allowed_actions')
    AllowedActions get allowedActions;
    // enum allowedActionsEnum {  all,  local_only,  selected,  };

    // Boilerplate code needed to wire-up generated code
    InlineObject25._();

    static void _initializeBuilder(InlineObject25Builder b) => b;

    factory InlineObject25([void updates(InlineObject25Builder b)]) = _$InlineObject25;
    static Serializer<InlineObject25> get serializer => _$inlineObject25Serializer;
}

