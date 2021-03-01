// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'scim_user_list_enterprise.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ScimUserListEnterprise> _$scimUserListEnterpriseSerializer =
    new _$ScimUserListEnterpriseSerializer();

class _$ScimUserListEnterpriseSerializer
    implements StructuredSerializer<ScimUserListEnterprise> {
  @override
  final Iterable<Type> types = const [
    ScimUserListEnterprise,
    _$ScimUserListEnterprise
  ];
  @override
  final String wireName = 'ScimUserListEnterprise';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ScimUserListEnterprise object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.schemas != null) {
      result
        ..add('schemas')
        ..add(serializers.serialize(object.schemas,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.totalResults != null) {
      result
        ..add('totalResults')
        ..add(serializers.serialize(object.totalResults,
            specifiedType: const FullType(num)));
    }
    if (object.itemsPerPage != null) {
      result
        ..add('itemsPerPage')
        ..add(serializers.serialize(object.itemsPerPage,
            specifiedType: const FullType(num)));
    }
    if (object.startIndex != null) {
      result
        ..add('startIndex')
        ..add(serializers.serialize(object.startIndex,
            specifiedType: const FullType(num)));
    }
    if (object.resources != null) {
      result
        ..add('Resources')
        ..add(serializers.serialize(object.resources,
            specifiedType: const FullType(BuiltList,
                const [const FullType(ScimUserListEnterpriseResources)])));
    }
    return result;
  }

  @override
  ScimUserListEnterprise deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ScimUserListEnterpriseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'schemas':
          result.schemas.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'totalResults':
          result.totalResults = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num;
          break;
        case 'itemsPerPage':
          result.itemsPerPage = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num;
          break;
        case 'startIndex':
          result.startIndex = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num;
          break;
        case 'Resources':
          result.resources.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(ScimUserListEnterpriseResources)
              ])) as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$ScimUserListEnterprise extends ScimUserListEnterprise {
  @override
  final BuiltList<String> schemas;
  @override
  final num totalResults;
  @override
  final num itemsPerPage;
  @override
  final num startIndex;
  @override
  final BuiltList<ScimUserListEnterpriseResources> resources;

  factory _$ScimUserListEnterprise(
          [void Function(ScimUserListEnterpriseBuilder) updates]) =>
      (new ScimUserListEnterpriseBuilder()..update(updates)).build();

  _$ScimUserListEnterprise._(
      {this.schemas,
      this.totalResults,
      this.itemsPerPage,
      this.startIndex,
      this.resources})
      : super._();

  @override
  ScimUserListEnterprise rebuild(
          void Function(ScimUserListEnterpriseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ScimUserListEnterpriseBuilder toBuilder() =>
      new ScimUserListEnterpriseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ScimUserListEnterprise &&
        schemas == other.schemas &&
        totalResults == other.totalResults &&
        itemsPerPage == other.itemsPerPage &&
        startIndex == other.startIndex &&
        resources == other.resources;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, schemas.hashCode), totalResults.hashCode),
                itemsPerPage.hashCode),
            startIndex.hashCode),
        resources.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ScimUserListEnterprise')
          ..add('schemas', schemas)
          ..add('totalResults', totalResults)
          ..add('itemsPerPage', itemsPerPage)
          ..add('startIndex', startIndex)
          ..add('resources', resources))
        .toString();
  }
}

class ScimUserListEnterpriseBuilder
    implements Builder<ScimUserListEnterprise, ScimUserListEnterpriseBuilder> {
  _$ScimUserListEnterprise _$v;

  ListBuilder<String> _schemas;
  ListBuilder<String> get schemas =>
      _$this._schemas ??= new ListBuilder<String>();
  set schemas(ListBuilder<String> schemas) => _$this._schemas = schemas;

  num _totalResults;
  num get totalResults => _$this._totalResults;
  set totalResults(num totalResults) => _$this._totalResults = totalResults;

  num _itemsPerPage;
  num get itemsPerPage => _$this._itemsPerPage;
  set itemsPerPage(num itemsPerPage) => _$this._itemsPerPage = itemsPerPage;

  num _startIndex;
  num get startIndex => _$this._startIndex;
  set startIndex(num startIndex) => _$this._startIndex = startIndex;

  ListBuilder<ScimUserListEnterpriseResources> _resources;
  ListBuilder<ScimUserListEnterpriseResources> get resources =>
      _$this._resources ??= new ListBuilder<ScimUserListEnterpriseResources>();
  set resources(ListBuilder<ScimUserListEnterpriseResources> resources) =>
      _$this._resources = resources;

  ScimUserListEnterpriseBuilder() {
    ScimUserListEnterprise._initializeBuilder(this);
  }

  ScimUserListEnterpriseBuilder get _$this {
    if (_$v != null) {
      _schemas = _$v.schemas?.toBuilder();
      _totalResults = _$v.totalResults;
      _itemsPerPage = _$v.itemsPerPage;
      _startIndex = _$v.startIndex;
      _resources = _$v.resources?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ScimUserListEnterprise other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ScimUserListEnterprise;
  }

  @override
  void update(void Function(ScimUserListEnterpriseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ScimUserListEnterprise build() {
    _$ScimUserListEnterprise _$result;
    try {
      _$result = _$v ??
          new _$ScimUserListEnterprise._(
              schemas: _schemas?.build(),
              totalResults: totalResults,
              itemsPerPage: itemsPerPage,
              startIndex: startIndex,
              resources: _resources?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'schemas';
        _schemas?.build();

        _$failedField = 'resources';
        _resources?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ScimUserListEnterprise', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
