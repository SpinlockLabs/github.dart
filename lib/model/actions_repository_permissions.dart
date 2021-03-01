//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/allowed_actions.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'actions_repository_permissions.g.dart';

abstract class ActionsRepositoryPermissions implements Built<ActionsRepositoryPermissions, ActionsRepositoryPermissionsBuilder> {

    /// Whether GitHub Actions is enabled on the repository.
    @nullable
    @BuiltValueField(wireName: r'enabled')
    bool get enabled;

    @nullable
    @BuiltValueField(wireName: r'allowed_actions')
    AllowedActions get allowedActions;
    // enum allowedActionsEnum {  all,  local_only,  selected,  };

    /// The API URL to use to get or set the actions that are allowed to run, when `allowed_actions` is set to `selected`.
    @nullable
    @BuiltValueField(wireName: r'selected_actions_url')
    String get selectedActionsUrl;

    // Boilerplate code needed to wire-up generated code
    ActionsRepositoryPermissions._();

    static void _initializeBuilder(ActionsRepositoryPermissionsBuilder b) => b;

    factory ActionsRepositoryPermissions([void updates(ActionsRepositoryPermissionsBuilder b)]) = _$ActionsRepositoryPermissions;
    static Serializer<ActionsRepositoryPermissions> get serializer => _$actionsRepositoryPermissionsSerializer;
}

