// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'installation_permissions.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InstallationPermissions> _$installationPermissionsSerializer =
    new _$InstallationPermissionsSerializer();

class _$InstallationPermissionsSerializer
    implements StructuredSerializer<InstallationPermissions> {
  @override
  final Iterable<Type> types = const [
    InstallationPermissions,
    _$InstallationPermissions
  ];
  @override
  final String wireName = 'InstallationPermissions';

  @override
  Iterable<Object> serialize(
      Serializers serializers, InstallationPermissions object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.deployments != null) {
      result
        ..add('deployments')
        ..add(serializers.serialize(object.deployments,
            specifiedType: const FullType(String)));
    }
    if (object.checks != null) {
      result
        ..add('checks')
        ..add(serializers.serialize(object.checks,
            specifiedType: const FullType(String)));
    }
    if (object.metadata != null) {
      result
        ..add('metadata')
        ..add(serializers.serialize(object.metadata,
            specifiedType: const FullType(String)));
    }
    if (object.contents != null) {
      result
        ..add('contents')
        ..add(serializers.serialize(object.contents,
            specifiedType: const FullType(String)));
    }
    if (object.pullRequests != null) {
      result
        ..add('pull_requests')
        ..add(serializers.serialize(object.pullRequests,
            specifiedType: const FullType(String)));
    }
    if (object.statuses != null) {
      result
        ..add('statuses')
        ..add(serializers.serialize(object.statuses,
            specifiedType: const FullType(String)));
    }
    if (object.issues != null) {
      result
        ..add('issues')
        ..add(serializers.serialize(object.issues,
            specifiedType: const FullType(String)));
    }
    if (object.organizationAdministration != null) {
      result
        ..add('organization_administration')
        ..add(serializers.serialize(object.organizationAdministration,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  InstallationPermissions deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InstallationPermissionsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'deployments':
          result.deployments = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'checks':
          result.checks = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'metadata':
          result.metadata = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'contents':
          result.contents = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'pull_requests':
          result.pullRequests = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'statuses':
          result.statuses = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'issues':
          result.issues = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'organization_administration':
          result.organizationAdministration = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$InstallationPermissions extends InstallationPermissions {
  @override
  final String deployments;
  @override
  final String checks;
  @override
  final String metadata;
  @override
  final String contents;
  @override
  final String pullRequests;
  @override
  final String statuses;
  @override
  final String issues;
  @override
  final String organizationAdministration;

  factory _$InstallationPermissions(
          [void Function(InstallationPermissionsBuilder) updates]) =>
      (new InstallationPermissionsBuilder()..update(updates)).build();

  _$InstallationPermissions._(
      {this.deployments,
      this.checks,
      this.metadata,
      this.contents,
      this.pullRequests,
      this.statuses,
      this.issues,
      this.organizationAdministration})
      : super._();

  @override
  InstallationPermissions rebuild(
          void Function(InstallationPermissionsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InstallationPermissionsBuilder toBuilder() =>
      new InstallationPermissionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InstallationPermissions &&
        deployments == other.deployments &&
        checks == other.checks &&
        metadata == other.metadata &&
        contents == other.contents &&
        pullRequests == other.pullRequests &&
        statuses == other.statuses &&
        issues == other.issues &&
        organizationAdministration == other.organizationAdministration;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, deployments.hashCode), checks.hashCode),
                            metadata.hashCode),
                        contents.hashCode),
                    pullRequests.hashCode),
                statuses.hashCode),
            issues.hashCode),
        organizationAdministration.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InstallationPermissions')
          ..add('deployments', deployments)
          ..add('checks', checks)
          ..add('metadata', metadata)
          ..add('contents', contents)
          ..add('pullRequests', pullRequests)
          ..add('statuses', statuses)
          ..add('issues', issues)
          ..add('organizationAdministration', organizationAdministration))
        .toString();
  }
}

class InstallationPermissionsBuilder
    implements
        Builder<InstallationPermissions, InstallationPermissionsBuilder> {
  _$InstallationPermissions _$v;

  String _deployments;
  String get deployments => _$this._deployments;
  set deployments(String deployments) => _$this._deployments = deployments;

  String _checks;
  String get checks => _$this._checks;
  set checks(String checks) => _$this._checks = checks;

  String _metadata;
  String get metadata => _$this._metadata;
  set metadata(String metadata) => _$this._metadata = metadata;

  String _contents;
  String get contents => _$this._contents;
  set contents(String contents) => _$this._contents = contents;

  String _pullRequests;
  String get pullRequests => _$this._pullRequests;
  set pullRequests(String pullRequests) => _$this._pullRequests = pullRequests;

  String _statuses;
  String get statuses => _$this._statuses;
  set statuses(String statuses) => _$this._statuses = statuses;

  String _issues;
  String get issues => _$this._issues;
  set issues(String issues) => _$this._issues = issues;

  String _organizationAdministration;
  String get organizationAdministration => _$this._organizationAdministration;
  set organizationAdministration(String organizationAdministration) =>
      _$this._organizationAdministration = organizationAdministration;

  InstallationPermissionsBuilder() {
    InstallationPermissions._initializeBuilder(this);
  }

  InstallationPermissionsBuilder get _$this {
    if (_$v != null) {
      _deployments = _$v.deployments;
      _checks = _$v.checks;
      _metadata = _$v.metadata;
      _contents = _$v.contents;
      _pullRequests = _$v.pullRequests;
      _statuses = _$v.statuses;
      _issues = _$v.issues;
      _organizationAdministration = _$v.organizationAdministration;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InstallationPermissions other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InstallationPermissions;
  }

  @override
  void update(void Function(InstallationPermissionsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InstallationPermissions build() {
    final _$result = _$v ??
        new _$InstallationPermissions._(
            deployments: deployments,
            checks: checks,
            metadata: metadata,
            contents: contents,
            pullRequests: pullRequests,
            statuses: statuses,
            issues: issues,
            organizationAdministration: organizationAdministration);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
