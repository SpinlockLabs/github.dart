// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'scim_group_list_enterprise.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ScimGroupListEnterprise> _$scimGroupListEnterpriseSerializer =
    new _$ScimGroupListEnterpriseSerializer();

class _$ScimGroupListEnterpriseSerializer
    implements StructuredSerializer<ScimGroupListEnterprise> {
  @override
  final Iterable<Type> types = const [
    ScimGroupListEnterprise,
    _$ScimGroupListEnterprise
  ];
  @override
  final String wireName = 'ScimGroupListEnterprise';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ScimGroupListEnterprise object,
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
                const [const FullType(ScimGroupListEnterpriseResources)])));
    }
    return result;
  }

  @override
  ScimGroupListEnterprise deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ScimGroupListEnterpriseBuilder();

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
                const FullType(ScimGroupListEnterpriseResources)
              ])) as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$ScimGroupListEnterprise extends ScimGroupListEnterprise {
  @override
  final BuiltList<String> schemas;
  @override
  final num totalResults;
  @override
  final num itemsPerPage;
  @override
  final num startIndex;
  @override
  final BuiltList<ScimGroupListEnterpriseResources> resources;

  factory _$ScimGroupListEnterprise(
          [void Function(ScimGroupListEnterpriseBuilder) updates]) =>
      (new ScimGroupListEnterpriseBuilder()..update(updates)).build();

  _$ScimGroupListEnterprise._(
      {this.schemas,
      this.totalResults,
      this.itemsPerPage,
      this.startIndex,
      this.resources})
      : super._();

  @override
  ScimGroupListEnterprise rebuild(
          void Function(ScimGroupListEnterpriseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ScimGroupListEnterpriseBuilder toBuilder() =>
      new ScimGroupListEnterpriseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ScimGroupListEnterprise &&
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
    return (newBuiltValueToStringHelper('ScimGroupListEnterprise')
          ..add('schemas', schemas)
          ..add('totalResults', totalResults)
          ..add('itemsPerPage', itemsPerPage)
          ..add('startIndex', startIndex)
          ..add('resources', resources))
        .toString();
  }
}

class ScimGroupListEnterpriseBuilder
    implements
        Builder<ScimGroupListEnterprise, ScimGroupListEnterpriseBuilder> {
  _$ScimGroupListEnterprise _$v;

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

  ListBuilder<ScimGroupListEnterpriseResources> _resources;
  ListBuilder<ScimGroupListEnterpriseResources> get resources =>
      _$this._resources ??= new ListBuilder<ScimGroupListEnterpriseResources>();
  set resources(ListBuilder<ScimGroupListEnterpriseResources> resources) =>
      _$this._resources = resources;

  ScimGroupListEnterpriseBuilder() {
    ScimGroupListEnterprise._initializeBuilder(this);
  }

  ScimGroupListEnterpriseBuilder get _$this {
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
  void replace(ScimGroupListEnterprise other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ScimGroupListEnterprise;
  }

  @override
  void update(void Function(ScimGroupListEnterpriseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ScimGroupListEnterprise build() {
    _$ScimGroupListEnterprise _$result;
    try {
      _$result = _$v ??
          new _$ScimGroupListEnterprise._(
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
            'ScimGroupListEnterprise', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
