//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/allowed_actions.dart';
import 'package:github/model/enabled_repositories.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'actions_organization_permissions.g.dart';

abstract class ActionsOrganizationPermissions implements Built<ActionsOrganizationPermissions, ActionsOrganizationPermissionsBuilder> {

    @nullable
    @BuiltValueField(wireName: r'enabled_repositories')
    EnabledRepositories get enabledRepositories;
    // enum enabledRepositoriesEnum {  all,  none,  selected,  };

    /// The API URL to use to get or set the selected repositories that are allowed to run GitHub Actions, when `enabled_repositories` is set to `selected`.
    @nullable
    @BuiltValueField(wireName: r'selected_repositories_url')
    String get selectedRepositoriesUrl;

    @nullable
    @BuiltValueField(wireName: r'allowed_actions')
    AllowedActions get allowedActions;
    // enum allowedActionsEnum {  all,  local_only,  selected,  };

    /// The API URL to use to get or set the actions that are allowed to run, when `allowed_actions` is set to `selected`.
    @nullable
    @BuiltValueField(wireName: r'selected_actions_url')
    String get selectedActionsUrl;

    // Boilerplate code needed to wire-up generated code
    ActionsOrganizationPermissions._();

    static void _initializeBuilder(ActionsOrganizationPermissionsBuilder b) => b;

    factory ActionsOrganizationPermissions([void updates(ActionsOrganizationPermissionsBuilder b)]) = _$ActionsOrganizationPermissions;
    static Serializer<ActionsOrganizationPermissions> get serializer => _$actionsOrganizationPermissionsSerializer;
}

