//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/allowed_actions.dart';
import 'package:github/model/enabled_organizations.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'actions_enterprise_permissions.g.dart';

abstract class ActionsEnterprisePermissions implements Built<ActionsEnterprisePermissions, ActionsEnterprisePermissionsBuilder> {

    @nullable
    @BuiltValueField(wireName: r'enabled_organizations')
    EnabledOrganizations get enabledOrganizations;
    // enum enabledOrganizationsEnum {  all,  none,  selected,  };

    /// The API URL to use to get or set the selected organizations that are allowed to run GitHub Actions, when `enabled_organizations` is set to `selected`.
    @nullable
    @BuiltValueField(wireName: r'selected_organizations_url')
    String get selectedOrganizationsUrl;

    @nullable
    @BuiltValueField(wireName: r'allowed_actions')
    AllowedActions get allowedActions;
    // enum allowedActionsEnum {  all,  local_only,  selected,  };

    /// The API URL to use to get or set the actions that are allowed to run, when `allowed_actions` is set to `selected`.
    @nullable
    @BuiltValueField(wireName: r'selected_actions_url')
    String get selectedActionsUrl;

    // Boilerplate code needed to wire-up generated code
    ActionsEnterprisePermissions._();

    static void _initializeBuilder(ActionsEnterprisePermissionsBuilder b) => b;

    factory ActionsEnterprisePermissions([void updates(ActionsEnterprisePermissionsBuilder b)]) = _$ActionsEnterprisePermissions;
    static Serializer<ActionsEnterprisePermissions> get serializer => _$actionsEnterprisePermissionsSerializer;
}

