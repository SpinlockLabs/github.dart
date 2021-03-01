// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object14.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const InlineObject14VisibilityEnum _$inlineObject14VisibilityEnum_selected =
    const InlineObject14VisibilityEnum._('selected');
const InlineObject14VisibilityEnum _$inlineObject14VisibilityEnum_all =
    const InlineObject14VisibilityEnum._('all');

InlineObject14VisibilityEnum _$inlineObject14VisibilityEnumValueOf(
    String name) {
  switch (name) {
    case 'selected':
      return _$inlineObject14VisibilityEnum_selected;
    case 'all':
      return _$inlineObject14VisibilityEnum_all;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<InlineObject14VisibilityEnum>
    _$inlineObject14VisibilityEnumValues = new BuiltSet<
        InlineObject14VisibilityEnum>(const <InlineObject14VisibilityEnum>[
  _$inlineObject14VisibilityEnum_selected,
  _$inlineObject14VisibilityEnum_all,
]);

Serializer<InlineObject14> _$inlineObject14Serializer =
    new _$InlineObject14Serializer();
Serializer<InlineObject14VisibilityEnum>
    _$inlineObject14VisibilityEnumSerializer =
    new _$InlineObject14VisibilityEnumSerializer();

class _$InlineObject14Serializer
    implements StructuredSerializer<InlineObject14> {
  @override
  final Iterable<Type> types = const [InlineObject14, _$InlineObject14];
  @override
  final String wireName = 'InlineObject14';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject14 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.visibility != null) {
      result
        ..add('visibility')
        ..add(serializers.serialize(object.visibility,
            specifiedType: const FullType(InlineObject14VisibilityEnum)));
    }
    if (object.selectedOrganizationIds != null) {
      result
        ..add('selected_organization_ids')
        ..add(serializers.serialize(object.selectedOrganizationIds,
            specifiedType:
                const FullType(BuiltList, const [const FullType(int)])));
    }
    if (object.runners != null) {
      result
        ..add('runners')
        ..add(serializers.serialize(object.runners,
            specifiedType:
                const FullType(BuiltList, const [const FullType(int)])));
    }
    return result;
  }

  @override
  InlineObject14 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject14Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'visibility':
          result.visibility = serializers.deserialize(value,
                  specifiedType: const FullType(InlineObject14VisibilityEnum))
              as InlineObject14VisibilityEnum;
          break;
        case 'selected_organization_ids':
          result.selectedOrganizationIds.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(int)]))
              as BuiltList<Object>);
          break;
        case 'runners':
          result.runners.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(int)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$InlineObject14VisibilityEnumSerializer
    implements PrimitiveSerializer<InlineObject14VisibilityEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'selected': 'selected',
    'all': 'all',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'selected': 'selected',
    'all': 'all',
  };

  @override
  final Iterable<Type> types = const <Type>[InlineObject14VisibilityEnum];
  @override
  final String wireName = 'InlineObject14VisibilityEnum';

  @override
  Object serialize(Serializers serializers, InlineObject14VisibilityEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  InlineObject14VisibilityEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      InlineObject14VisibilityEnum.valueOf(
          _fromWire[serialized] ?? serialized as String);
}

class _$InlineObject14 extends InlineObject14 {
  @override
  final String name;
  @override
  final InlineObject14VisibilityEnum visibility;
  @override
  final BuiltList<int> selectedOrganizationIds;
  @override
  final BuiltList<int> runners;

  factory _$InlineObject14([void Function(InlineObject14Builder) updates]) =>
      (new InlineObject14Builder()..update(updates)).build();

  _$InlineObject14._(
      {this.name, this.visibility, this.selectedOrganizationIds, this.runners})
      : super._();

  @override
  InlineObject14 rebuild(void Function(InlineObject14Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject14Builder toBuilder() =>
      new InlineObject14Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject14 &&
        name == other.name &&
        visibility == other.visibility &&
        selectedOrganizationIds == other.selectedOrganizationIds &&
        runners == other.runners;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, name.hashCode), visibility.hashCode),
            selectedOrganizationIds.hashCode),
        runners.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject14')
          ..add('name', name)
          ..add('visibility', visibility)
          ..add('selectedOrganizationIds', selectedOrganizationIds)
          ..add('runners', runners))
        .toString();
  }
}

class InlineObject14Builder
    implements Builder<InlineObject14, InlineObject14Builder> {
  _$InlineObject14 _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  InlineObject14VisibilityEnum _visibility;
  InlineObject14VisibilityEnum get visibility => _$this._visibility;
  set visibility(InlineObject14VisibilityEnum visibility) =>
      _$this._visibility = visibility;

  ListBuilder<int> _selectedOrganizationIds;
  ListBuilder<int> get selectedOrganizationIds =>
      _$this._selectedOrganizationIds ??= new ListBuilder<int>();
  set selectedOrganizationIds(ListBuilder<int> selectedOrganizationIds) =>
      _$this._selectedOrganizationIds = selectedOrganizationIds;

  ListBuilder<int> _runners;
  ListBuilder<int> get runners => _$this._runners ??= new ListBuilder<int>();
  set runners(ListBuilder<int> runners) => _$this._runners = runners;

  InlineObject14Builder() {
    InlineObject14._initializeBuilder(this);
  }

  InlineObject14Builder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _visibility = _$v.visibility;
      _selectedOrganizationIds = _$v.selectedOrganizationIds?.toBuilder();
      _runners = _$v.runners?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject14 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject14;
  }

  @override
  void update(void Function(InlineObject14Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject14 build() {
    _$InlineObject14 _$result;
    try {
      _$result = _$v ??
          new _$InlineObject14._(
              name: name,
              visibility: visibility,
              selectedOrganizationIds: _selectedOrganizationIds?.build(),
              runners: _runners?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'selectedOrganizationIds';
        _selectedOrganizationIds?.build();
        _$failedField = 'runners';
        _runners?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'InlineObject14', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
