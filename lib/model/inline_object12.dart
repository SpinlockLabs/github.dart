//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/allowed_actions.dart';
import 'package:github/model/enabled_organizations.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object12.g.dart';

abstract class InlineObject12 implements Built<InlineObject12, InlineObject12Builder> {

    @nullable
    @BuiltValueField(wireName: r'enabled_organizations')
    EnabledOrganizations get enabledOrganizations;
    // enum enabledOrganizationsEnum {  all,  none,  selected,  };

    @nullable
    @BuiltValueField(wireName: r'allowed_actions')
    AllowedActions get allowedActions;
    // enum allowedActionsEnum {  all,  local_only,  selected,  };

    // Boilerplate code needed to wire-up generated code
    InlineObject12._();

    static void _initializeBuilder(InlineObject12Builder b) => b;

    factory InlineObject12([void updates(InlineObject12Builder b)]) = _$InlineObject12;
    static Serializer<InlineObject12> get serializer => _$inlineObject12Serializer;
}

