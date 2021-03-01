// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'actions_organization_permissions.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ActionsOrganizationPermissions>
    _$actionsOrganizationPermissionsSerializer =
    new _$ActionsOrganizationPermissionsSerializer();

class _$ActionsOrganizationPermissionsSerializer
    implements StructuredSerializer<ActionsOrganizationPermissions> {
  @override
  final Iterable<Type> types = const [
    ActionsOrganizationPermissions,
    _$ActionsOrganizationPermissions
  ];
  @override
  final String wireName = 'ActionsOrganizationPermissions';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ActionsOrganizationPermissions object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.enabledRepositories != null) {
      result
        ..add('enabled_repositories')
        ..add(serializers.serialize(object.enabledRepositories,
            specifiedType: const FullType(EnabledRepositories)));
    }
    if (object.selectedRepositoriesUrl != null) {
      result
        ..add('selected_repositories_url')
        ..add(serializers.serialize(object.selectedRepositoriesUrl,
            specifiedType: const FullType(String)));
    }
    if (object.allowedActions != null) {
      result
        ..add('allowed_actions')
        ..add(serializers.serialize(object.allowedActions,
            specifiedType: const FullType(AllowedActions)));
    }
    if (object.selectedActionsUrl != null) {
      result
        ..add('selected_actions_url')
        ..add(serializers.serialize(object.selectedActionsUrl,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ActionsOrganizationPermissions deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ActionsOrganizationPermissionsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'enabled_repositories':
          result.enabledRepositories = serializers.deserialize(value,
                  specifiedType: const FullType(EnabledRepositories))
              as EnabledRepositories;
          break;
        case 'selected_repositories_url':
          result.selectedRepositoriesUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'allowed_actions':
          result.allowedActions = serializers.deserialize(value,
              specifiedType: const FullType(AllowedActions)) as AllowedActions;
          break;
        case 'selected_actions_url':
          result.selectedActionsUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ActionsOrganizationPermissions extends ActionsOrganizationPermissions {
  @override
  final EnabledRepositories enabledRepositories;
  @override
  final String selectedRepositoriesUrl;
  @override
  final AllowedActions allowedActions;
  @override
  final String selectedActionsUrl;

  factory _$ActionsOrganizationPermissions(
          [void Function(ActionsOrganizationPermissionsBuilder) updates]) =>
      (new ActionsOrganizationPermissionsBuilder()..update(updates)).build();

  _$ActionsOrganizationPermissions._(
      {this.enabledRepositories,
      this.selectedRepositoriesUrl,
      this.allowedActions,
      this.selectedActionsUrl})
      : super._();

  @override
  ActionsOrganizationPermissions rebuild(
          void Function(ActionsOrganizationPermissionsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ActionsOrganizationPermissionsBuilder toBuilder() =>
      new ActionsOrganizationPermissionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ActionsOrganizationPermissions &&
        enabledRepositories == other.enabledRepositories &&
        selectedRepositoriesUrl == other.selectedRepositoriesUrl &&
        allowedActions == other.allowedActions &&
        selectedActionsUrl == other.selectedActionsUrl;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc(0, enabledRepositories.hashCode),
                selectedRepositoriesUrl.hashCode),
            allowedActions.hashCode),
        selectedActionsUrl.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ActionsOrganizationPermissions')
          ..add('enabledRepositories', enabledRepositories)
          ..add('selectedRepositoriesUrl', selectedRepositoriesUrl)
          ..add('allowedActions', allowedActions)
          ..add('selectedActionsUrl', selectedActionsUrl))
        .toString();
  }
}

class ActionsOrganizationPermissionsBuilder
    implements
        Builder<ActionsOrganizationPermissions,
            ActionsOrganizationPermissionsBuilder> {
  _$ActionsOrganizationPermissions _$v;

  EnabledRepositories _enabledRepositories;
  EnabledRepositories get enabledRepositories => _$this._enabledRepositories;
  set enabledRepositories(EnabledRepositories enabledRepositories) =>
      _$this._enabledRepositories = enabledRepositories;

  String _selectedRepositoriesUrl;
  String get selectedRepositoriesUrl => _$this._selectedRepositoriesUrl;
  set selectedRepositoriesUrl(String selectedRepositoriesUrl) =>
      _$this._selectedRepositoriesUrl = selectedRepositoriesUrl;

  AllowedActions _allowedActions;
  AllowedActions get allowedActions => _$this._allowedActions;
  set allowedActions(AllowedActions allowedActions) =>
      _$this._allowedActions = allowedActions;

  String _selectedActionsUrl;
  String get selectedActionsUrl => _$this._selectedActionsUrl;
  set selectedActionsUrl(String selectedActionsUrl) =>
      _$this._selectedActionsUrl = selectedActionsUrl;

  ActionsOrganizationPermissionsBuilder() {
    ActionsOrganizationPermissions._initializeBuilder(this);
  }

  ActionsOrganizationPermissionsBuilder get _$this {
    if (_$v != null) {
      _enabledRepositories = _$v.enabledRepositories;
      _selectedRepositoriesUrl = _$v.selectedRepositoriesUrl;
      _allowedActions = _$v.allowedActions;
      _selectedActionsUrl = _$v.selectedActionsUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ActionsOrganizationPermissions other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ActionsOrganizationPermissions;
  }

  @override
  void update(void Function(ActionsOrganizationPermissionsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ActionsOrganizationPermissions build() {
    final _$result = _$v ??
        new _$ActionsOrganizationPermissions._(
            enabledRepositories: enabledRepositories,
            selectedRepositoriesUrl: selectedRepositoriesUrl,
            allowedActions: allowedActions,
            selectedActionsUrl: selectedActionsUrl);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
