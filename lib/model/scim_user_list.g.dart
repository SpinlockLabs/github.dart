// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'scim_user_list.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ScimUserList> _$scimUserListSerializer =
    new _$ScimUserListSerializer();

class _$ScimUserListSerializer implements StructuredSerializer<ScimUserList> {
  @override
  final Iterable<Type> types = const [ScimUserList, _$ScimUserList];
  @override
  final String wireName = 'ScimUserList';

  @override
  Iterable<Object> serialize(Serializers serializers, ScimUserList object,
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
            specifiedType: const FullType(int)));
    }
    if (object.itemsPerPage != null) {
      result
        ..add('itemsPerPage')
        ..add(serializers.serialize(object.itemsPerPage,
            specifiedType: const FullType(int)));
    }
    if (object.startIndex != null) {
      result
        ..add('startIndex')
        ..add(serializers.serialize(object.startIndex,
            specifiedType: const FullType(int)));
    }
    if (object.resources != null) {
      result
        ..add('Resources')
        ..add(serializers.serialize(object.resources,
            specifiedType:
                const FullType(BuiltList, const [const FullType(ScimUser)])));
    }
    return result;
  }

  @override
  ScimUserList deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ScimUserListBuilder();

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
              specifiedType: const FullType(int)) as int;
          break;
        case 'itemsPerPage':
          result.itemsPerPage = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'startIndex':
          result.startIndex = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'Resources':
          result.resources.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(ScimUser)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$ScimUserList extends ScimUserList {
  @override
  final BuiltList<String> schemas;
  @override
  final int totalResults;
  @override
  final int itemsPerPage;
  @override
  final int startIndex;
  @override
  final BuiltList<ScimUser> resources;

  factory _$ScimUserList([void Function(ScimUserListBuilder) updates]) =>
      (new ScimUserListBuilder()..update(updates)).build();

  _$ScimUserList._(
      {this.schemas,
      this.totalResults,
      this.itemsPerPage,
      this.startIndex,
      this.resources})
      : super._();

  @override
  ScimUserList rebuild(void Function(ScimUserListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ScimUserListBuilder toBuilder() => new ScimUserListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ScimUserList &&
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
    return (newBuiltValueToStringHelper('ScimUserList')
          ..add('schemas', schemas)
          ..add('totalResults', totalResults)
          ..add('itemsPerPage', itemsPerPage)
          ..add('startIndex', startIndex)
          ..add('resources', resources))
        .toString();
  }
}

class ScimUserListBuilder
    implements Builder<ScimUserList, ScimUserListBuilder> {
  _$ScimUserList _$v;

  ListBuilder<String> _schemas;
  ListBuilder<String> get schemas =>
      _$this._schemas ??= new ListBuilder<String>();
  set schemas(ListBuilder<String> schemas) => _$this._schemas = schemas;

  int _totalResults;
  int get totalResults => _$this._totalResults;
  set totalResults(int totalResults) => _$this._totalResults = totalResults;

  int _itemsPerPage;
  int get itemsPerPage => _$this._itemsPerPage;
  set itemsPerPage(int itemsPerPage) => _$this._itemsPerPage = itemsPerPage;

  int _startIndex;
  int get startIndex => _$this._startIndex;
  set startIndex(int startIndex) => _$this._startIndex = startIndex;

  ListBuilder<ScimUser> _resources;
  ListBuilder<ScimUser> get resources =>
      _$this._resources ??= new ListBuilder<ScimUser>();
  set resources(ListBuilder<ScimUser> resources) =>
      _$this._resources = resources;

  ScimUserListBuilder() {
    ScimUserList._initializeBuilder(this);
  }

  ScimUserListBuilder get _$this {
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
  void replace(ScimUserList other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ScimUserList;
  }

  @override
  void update(void Function(ScimUserListBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ScimUserList build() {
    _$ScimUserList _$result;
    try {
      _$result = _$v ??
          new _$ScimUserList._(
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
            'ScimUserList', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
