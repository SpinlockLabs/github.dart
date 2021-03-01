// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'actions_repository_permissions.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ActionsRepositoryPermissions>
    _$actionsRepositoryPermissionsSerializer =
    new _$ActionsRepositoryPermissionsSerializer();

class _$ActionsRepositoryPermissionsSerializer
    implements StructuredSerializer<ActionsRepositoryPermissions> {
  @override
  final Iterable<Type> types = const [
    ActionsRepositoryPermissions,
    _$ActionsRepositoryPermissions
  ];
  @override
  final String wireName = 'ActionsRepositoryPermissions';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ActionsRepositoryPermissions object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.enabled != null) {
      result
        ..add('enabled')
        ..add(serializers.serialize(object.enabled,
            specifiedType: const FullType(bool)));
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
  ActionsRepositoryPermissions deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ActionsRepositoryPermissionsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'enabled':
          result.enabled = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
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

class _$ActionsRepositoryPermissions extends ActionsRepositoryPermissions {
  @override
  final bool enabled;
  @override
  final AllowedActions allowedActions;
  @override
  final String selectedActionsUrl;

  factory _$ActionsRepositoryPermissions(
          [void Function(ActionsRepositoryPermissionsBuilder) updates]) =>
      (new ActionsRepositoryPermissionsBuilder()..update(updates)).build();

  _$ActionsRepositoryPermissions._(
      {this.enabled, this.allowedActions, this.selectedActionsUrl})
      : super._();

  @override
  ActionsRepositoryPermissions rebuild(
          void Function(ActionsRepositoryPermissionsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ActionsRepositoryPermissionsBuilder toBuilder() =>
      new ActionsRepositoryPermissionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ActionsRepositoryPermissions &&
        enabled == other.enabled &&
        allowedActions == other.allowedActions &&
        selectedActionsUrl == other.selectedActionsUrl;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, enabled.hashCode), allowedActions.hashCode),
        selectedActionsUrl.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ActionsRepositoryPermissions')
          ..add('enabled', enabled)
          ..add('allowedActions', allowedActions)
          ..add('selectedActionsUrl', selectedActionsUrl))
        .toString();
  }
}

class ActionsRepositoryPermissionsBuilder
    implements
        Builder<ActionsRepositoryPermissions,
            ActionsRepositoryPermissionsBuilder> {
  _$ActionsRepositoryPermissions _$v;

  bool _enabled;
  bool get enabled => _$this._enabled;
  set enabled(bool enabled) => _$this._enabled = enabled;

  AllowedActions _allowedActions;
  AllowedActions get allowedActions => _$this._allowedActions;
  set allowedActions(AllowedActions allowedActions) =>
      _$this._allowedActions = allowedActions;

  String _selectedActionsUrl;
  String get selectedActionsUrl => _$this._selectedActionsUrl;
  set selectedActionsUrl(String selectedActionsUrl) =>
      _$this._selectedActionsUrl = selectedActionsUrl;

  ActionsRepositoryPermissionsBuilder() {
    ActionsRepositoryPermissions._initializeBuilder(this);
  }

  ActionsRepositoryPermissionsBuilder get _$this {
    if (_$v != null) {
      _enabled = _$v.enabled;
      _allowedActions = _$v.allowedActions;
      _selectedActionsUrl = _$v.selectedActionsUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ActionsRepositoryPermissions other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ActionsRepositoryPermissions;
  }

  @override
  void update(void Function(ActionsRepositoryPermissionsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ActionsRepositoryPermissions build() {
    final _$result = _$v ??
        new _$ActionsRepositoryPermissions._(
            enabled: enabled,
            allowedActions: allowedActions,
            selectedActionsUrl: selectedActionsUrl);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
