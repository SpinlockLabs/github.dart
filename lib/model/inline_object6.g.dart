// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object6.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineObject6> _$inlineObject6Serializer =
    new _$InlineObject6Serializer();

class _$InlineObject6Serializer implements StructuredSerializer<InlineObject6> {
  @override
  final Iterable<Type> types = const [InlineObject6, _$InlineObject6];
  @override
  final String wireName = 'InlineObject6';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject6 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.accessToken != null) {
      result
        ..add('access_token')
        ..add(serializers.serialize(object.accessToken,
            specifiedType: const FullType(String)));
    }
    if (object.target != null) {
      result
        ..add('target')
        ..add(serializers.serialize(object.target,
            specifiedType: const FullType(String)));
    }
    if (object.targetId != null) {
      result
        ..add('target_id')
        ..add(serializers.serialize(object.targetId,
            specifiedType: const FullType(int)));
    }
    if (object.repositories != null) {
      result
        ..add('repositories')
        ..add(serializers.serialize(object.repositories,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.repositoryIds != null) {
      result
        ..add('repository_ids')
        ..add(serializers.serialize(object.repositoryIds,
            specifiedType:
                const FullType(BuiltList, const [const FullType(int)])));
    }
    if (object.permissions != null) {
      result
        ..add('permissions')
        ..add(serializers.serialize(object.permissions,
            specifiedType: const FullType(AppPermissions)));
    }
    return result;
  }

  @override
  InlineObject6 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject6Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'access_token':
          result.accessToken = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'target':
          result.target = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'target_id':
          result.targetId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'repositories':
          result.repositories.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'repository_ids':
          result.repositoryIds.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(int)]))
              as BuiltList<Object>);
          break;
        case 'permissions':
          result.permissions.replace(serializers.deserialize(value,
              specifiedType: const FullType(AppPermissions)) as AppPermissions);
          break;
      }
    }

    return result.build();
  }
}

class _$InlineObject6 extends InlineObject6 {
  @override
  final String accessToken;
  @override
  final String target;
  @override
  final int targetId;
  @override
  final BuiltList<String> repositories;
  @override
  final BuiltList<int> repositoryIds;
  @override
  final AppPermissions permissions;

  factory _$InlineObject6([void Function(InlineObject6Builder) updates]) =>
      (new InlineObject6Builder()..update(updates)).build();

  _$InlineObject6._(
      {this.accessToken,
      this.target,
      this.targetId,
      this.repositories,
      this.repositoryIds,
      this.permissions})
      : super._();

  @override
  InlineObject6 rebuild(void Function(InlineObject6Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject6Builder toBuilder() => new InlineObject6Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject6 &&
        accessToken == other.accessToken &&
        target == other.target &&
        targetId == other.targetId &&
        repositories == other.repositories &&
        repositoryIds == other.repositoryIds &&
        permissions == other.permissions;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, accessToken.hashCode), target.hashCode),
                    targetId.hashCode),
                repositories.hashCode),
            repositoryIds.hashCode),
        permissions.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject6')
          ..add('accessToken', accessToken)
          ..add('target', target)
          ..add('targetId', targetId)
          ..add('repositories', repositories)
          ..add('repositoryIds', repositoryIds)
          ..add('permissions', permissions))
        .toString();
  }
}

class InlineObject6Builder
    implements Builder<InlineObject6, InlineObject6Builder> {
  _$InlineObject6 _$v;

  String _accessToken;
  String get accessToken => _$this._accessToken;
  set accessToken(String accessToken) => _$this._accessToken = accessToken;

  String _target;
  String get target => _$this._target;
  set target(String target) => _$this._target = target;

  int _targetId;
  int get targetId => _$this._targetId;
  set targetId(int targetId) => _$this._targetId = targetId;

  ListBuilder<String> _repositories;
  ListBuilder<String> get repositories =>
      _$this._repositories ??= new ListBuilder<String>();
  set repositories(ListBuilder<String> repositories) =>
      _$this._repositories = repositories;

  ListBuilder<int> _repositoryIds;
  ListBuilder<int> get repositoryIds =>
      _$this._repositoryIds ??= new ListBuilder<int>();
  set repositoryIds(ListBuilder<int> repositoryIds) =>
      _$this._repositoryIds = repositoryIds;

  AppPermissionsBuilder _permissions;
  AppPermissionsBuilder get permissions =>
      _$this._permissions ??= new AppPermissionsBuilder();
  set permissions(AppPermissionsBuilder permissions) =>
      _$this._permissions = permissions;

  InlineObject6Builder() {
    InlineObject6._initializeBuilder(this);
  }

  InlineObject6Builder get _$this {
    if (_$v != null) {
      _accessToken = _$v.accessToken;
      _target = _$v.target;
      _targetId = _$v.targetId;
      _repositories = _$v.repositories?.toBuilder();
      _repositoryIds = _$v.repositoryIds?.toBuilder();
      _permissions = _$v.permissions?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject6 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject6;
  }

  @override
  void update(void Function(InlineObject6Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject6 build() {
    _$InlineObject6 _$result;
    try {
      _$result = _$v ??
          new _$InlineObject6._(
              accessToken: accessToken,
              target: target,
              targetId: targetId,
              repositories: _repositories?.build(),
              repositoryIds: _repositoryIds?.build(),
              permissions: _permissions?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'repositories';
        _repositories?.build();
        _$failedField = 'repositoryIds';
        _repositoryIds?.build();
        _$failedField = 'permissions';
        _permissions?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'InlineObject6', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
