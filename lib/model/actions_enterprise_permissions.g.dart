// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'actions_enterprise_permissions.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ActionsEnterprisePermissions>
    _$actionsEnterprisePermissionsSerializer =
    new _$ActionsEnterprisePermissionsSerializer();

class _$ActionsEnterprisePermissionsSerializer
    implements StructuredSerializer<ActionsEnterprisePermissions> {
  @override
  final Iterable<Type> types = const [
    ActionsEnterprisePermissions,
    _$ActionsEnterprisePermissions
  ];
  @override
  final String wireName = 'ActionsEnterprisePermissions';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ActionsEnterprisePermissions object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.enabledOrganizations != null) {
      result
        ..add('enabled_organizations')
        ..add(serializers.serialize(object.enabledOrganizations,
            specifiedType: const FullType(EnabledOrganizations)));
    }
    if (object.selectedOrganizationsUrl != null) {
      result
        ..add('selected_organizations_url')
        ..add(serializers.serialize(object.selectedOrganizationsUrl,
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
  ActionsEnterprisePermissions deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ActionsEnterprisePermissionsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'enabled_organizations':
          result.enabledOrganizations = serializers.deserialize(value,
                  specifiedType: const FullType(EnabledOrganizations))
              as EnabledOrganizations;
          break;
        case 'selected_organizations_url':
          result.selectedOrganizationsUrl = serializers.deserialize(value,
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

class _$ActionsEnterprisePermissions extends ActionsEnterprisePermissions {
  @override
  final EnabledOrganizations enabledOrganizations;
  @override
  final String selectedOrganizationsUrl;
  @override
  final AllowedActions allowedActions;
  @override
  final String selectedActionsUrl;

  factory _$ActionsEnterprisePermissions(
          [void Function(ActionsEnterprisePermissionsBuilder) updates]) =>
      (new ActionsEnterprisePermissionsBuilder()..update(updates)).build();

  _$ActionsEnterprisePermissions._(
      {this.enabledOrganizations,
      this.selectedOrganizationsUrl,
      this.allowedActions,
      this.selectedActionsUrl})
      : super._();

  @override
  ActionsEnterprisePermissions rebuild(
          void Function(ActionsEnterprisePermissionsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ActionsEnterprisePermissionsBuilder toBuilder() =>
      new ActionsEnterprisePermissionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ActionsEnterprisePermissions &&
        enabledOrganizations == other.enabledOrganizations &&
        selectedOrganizationsUrl == other.selectedOrganizationsUrl &&
        allowedActions == other.allowedActions &&
        selectedActionsUrl == other.selectedActionsUrl;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc(0, enabledOrganizations.hashCode),
                selectedOrganizationsUrl.hashCode),
            allowedActions.hashCode),
        selectedActionsUrl.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ActionsEnterprisePermissions')
          ..add('enabledOrganizations', enabledOrganizations)
          ..add('selectedOrganizationsUrl', selectedOrganizationsUrl)
          ..add('allowedActions', allowedActions)
          ..add('selectedActionsUrl', selectedActionsUrl))
        .toString();
  }
}

class ActionsEnterprisePermissionsBuilder
    implements
        Builder<ActionsEnterprisePermissions,
            ActionsEnterprisePermissionsBuilder> {
  _$ActionsEnterprisePermissions _$v;

  EnabledOrganizations _enabledOrganizations;
  EnabledOrganizations get enabledOrganizations => _$this._enabledOrganizations;
  set enabledOrganizations(EnabledOrganizations enabledOrganizations) =>
      _$this._enabledOrganizations = enabledOrganizations;

  String _selectedOrganizationsUrl;
  String get selectedOrganizationsUrl => _$this._selectedOrganizationsUrl;
  set selectedOrganizationsUrl(String selectedOrganizationsUrl) =>
      _$this._selectedOrganizationsUrl = selectedOrganizationsUrl;

  AllowedActions _allowedActions;
  AllowedActions get allowedActions => _$this._allowedActions;
  set allowedActions(AllowedActions allowedActions) =>
      _$this._allowedActions = allowedActions;

  String _selectedActionsUrl;
  String get selectedActionsUrl => _$this._selectedActionsUrl;
  set selectedActionsUrl(String selectedActionsUrl) =>
      _$this._selectedActionsUrl = selectedActionsUrl;

  ActionsEnterprisePermissionsBuilder() {
    ActionsEnterprisePermissions._initializeBuilder(this);
  }

  ActionsEnterprisePermissionsBuilder get _$this {
    if (_$v != null) {
      _enabledOrganizations = _$v.enabledOrganizations;
      _selectedOrganizationsUrl = _$v.selectedOrganizationsUrl;
      _allowedActions = _$v.allowedActions;
      _selectedActionsUrl = _$v.selectedActionsUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ActionsEnterprisePermissions other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ActionsEnterprisePermissions;
  }

  @override
  void update(void Function(ActionsEnterprisePermissionsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ActionsEnterprisePermissions build() {
    final _$result = _$v ??
        new _$ActionsEnterprisePermissions._(
            enabledOrganizations: enabledOrganizations,
            selectedOrganizationsUrl: selectedOrganizationsUrl,
            allowedActions: allowedActions,
            selectedActionsUrl: selectedActionsUrl);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
