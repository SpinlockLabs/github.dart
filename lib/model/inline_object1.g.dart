// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object1.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineObject1> _$inlineObject1Serializer =
    new _$InlineObject1Serializer();

class _$InlineObject1Serializer implements StructuredSerializer<InlineObject1> {
  @override
  final Iterable<Type> types = const [InlineObject1, _$InlineObject1];
  @override
  final String wireName = 'InlineObject1';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject1 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
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
  InlineObject1 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject1Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
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

class _$InlineObject1 extends InlineObject1 {
  @override
  final BuiltList<String> repositories;
  @override
  final BuiltList<int> repositoryIds;
  @override
  final AppPermissions permissions;

  factory _$InlineObject1([void Function(InlineObject1Builder) updates]) =>
      (new InlineObject1Builder()..update(updates)).build();

  _$InlineObject1._({this.repositories, this.repositoryIds, this.permissions})
      : super._();

  @override
  InlineObject1 rebuild(void Function(InlineObject1Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject1Builder toBuilder() => new InlineObject1Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject1 &&
        repositories == other.repositories &&
        repositoryIds == other.repositoryIds &&
        permissions == other.permissions;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, repositories.hashCode), repositoryIds.hashCode),
        permissions.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject1')
          ..add('repositories', repositories)
          ..add('repositoryIds', repositoryIds)
          ..add('permissions', permissions))
        .toString();
  }
}

class InlineObject1Builder
    implements Builder<InlineObject1, InlineObject1Builder> {
  _$InlineObject1 _$v;

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

  InlineObject1Builder() {
    InlineObject1._initializeBuilder(this);
  }

  InlineObject1Builder get _$this {
    if (_$v != null) {
      _repositories = _$v.repositories?.toBuilder();
      _repositoryIds = _$v.repositoryIds?.toBuilder();
      _permissions = _$v.permissions?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject1 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject1;
  }

  @override
  void update(void Function(InlineObject1Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject1 build() {
    _$InlineObject1 _$result;
    try {
      _$result = _$v ??
          new _$InlineObject1._(
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
            'InlineObject1', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
