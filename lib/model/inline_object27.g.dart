// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object27.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const InlineObject27VisibilityEnum _$inlineObject27VisibilityEnum_selected =
    const InlineObject27VisibilityEnum._('selected');
const InlineObject27VisibilityEnum _$inlineObject27VisibilityEnum_all =
    const InlineObject27VisibilityEnum._('all');
const InlineObject27VisibilityEnum _$inlineObject27VisibilityEnum_private =
    const InlineObject27VisibilityEnum._('private');

InlineObject27VisibilityEnum _$inlineObject27VisibilityEnumValueOf(
    String name) {
  switch (name) {
    case 'selected':
      return _$inlineObject27VisibilityEnum_selected;
    case 'all':
      return _$inlineObject27VisibilityEnum_all;
    case 'private':
      return _$inlineObject27VisibilityEnum_private;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<InlineObject27VisibilityEnum>
    _$inlineObject27VisibilityEnumValues = new BuiltSet<
        InlineObject27VisibilityEnum>(const <InlineObject27VisibilityEnum>[
  _$inlineObject27VisibilityEnum_selected,
  _$inlineObject27VisibilityEnum_all,
  _$inlineObject27VisibilityEnum_private,
]);

Serializer<InlineObject27> _$inlineObject27Serializer =
    new _$InlineObject27Serializer();
Serializer<InlineObject27VisibilityEnum>
    _$inlineObject27VisibilityEnumSerializer =
    new _$InlineObject27VisibilityEnumSerializer();

class _$InlineObject27Serializer
    implements StructuredSerializer<InlineObject27> {
  @override
  final Iterable<Type> types = const [InlineObject27, _$InlineObject27];
  @override
  final String wireName = 'InlineObject27';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject27 object,
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
            specifiedType: const FullType(InlineObject27VisibilityEnum)));
    }
    if (object.selectedRepositoryIds != null) {
      result
        ..add('selected_repository_ids')
        ..add(serializers.serialize(object.selectedRepositoryIds,
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
  InlineObject27 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject27Builder();

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
                  specifiedType: const FullType(InlineObject27VisibilityEnum))
              as InlineObject27VisibilityEnum;
          break;
        case 'selected_repository_ids':
          result.selectedRepositoryIds.replace(serializers.deserialize(value,
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

class _$InlineObject27VisibilityEnumSerializer
    implements PrimitiveSerializer<InlineObject27VisibilityEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'selected': 'selected',
    'all': 'all',
    'private': 'private',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'selected': 'selected',
    'all': 'all',
    'private': 'private',
  };

  @override
  final Iterable<Type> types = const <Type>[InlineObject27VisibilityEnum];
  @override
  final String wireName = 'InlineObject27VisibilityEnum';

  @override
  Object serialize(Serializers serializers, InlineObject27VisibilityEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  InlineObject27VisibilityEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      InlineObject27VisibilityEnum.valueOf(
          _fromWire[serialized] ?? serialized as String);
}

class _$InlineObject27 extends InlineObject27 {
  @override
  final String name;
  @override
  final InlineObject27VisibilityEnum visibility;
  @override
  final BuiltList<int> selectedRepositoryIds;
  @override
  final BuiltList<int> runners;

  factory _$InlineObject27([void Function(InlineObject27Builder) updates]) =>
      (new InlineObject27Builder()..update(updates)).build();

  _$InlineObject27._(
      {this.name, this.visibility, this.selectedRepositoryIds, this.runners})
      : super._();

  @override
  InlineObject27 rebuild(void Function(InlineObject27Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject27Builder toBuilder() =>
      new InlineObject27Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject27 &&
        name == other.name &&
        visibility == other.visibility &&
        selectedRepositoryIds == other.selectedRepositoryIds &&
        runners == other.runners;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, name.hashCode), visibility.hashCode),
            selectedRepositoryIds.hashCode),
        runners.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject27')
          ..add('name', name)
          ..add('visibility', visibility)
          ..add('selectedRepositoryIds', selectedRepositoryIds)
          ..add('runners', runners))
        .toString();
  }
}

class InlineObject27Builder
    implements Builder<InlineObject27, InlineObject27Builder> {
  _$InlineObject27 _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  InlineObject27VisibilityEnum _visibility;
  InlineObject27VisibilityEnum get visibility => _$this._visibility;
  set visibility(InlineObject27VisibilityEnum visibility) =>
      _$this._visibility = visibility;

  ListBuilder<int> _selectedRepositoryIds;
  ListBuilder<int> get selectedRepositoryIds =>
      _$this._selectedRepositoryIds ??= new ListBuilder<int>();
  set selectedRepositoryIds(ListBuilder<int> selectedRepositoryIds) =>
      _$this._selectedRepositoryIds = selectedRepositoryIds;

  ListBuilder<int> _runners;
  ListBuilder<int> get runners => _$this._runners ??= new ListBuilder<int>();
  set runners(ListBuilder<int> runners) => _$this._runners = runners;

  InlineObject27Builder() {
    InlineObject27._initializeBuilder(this);
  }

  InlineObject27Builder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _visibility = _$v.visibility;
      _selectedRepositoryIds = _$v.selectedRepositoryIds?.toBuilder();
      _runners = _$v.runners?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject27 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject27;
  }

  @override
  void update(void Function(InlineObject27Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject27 build() {
    _$InlineObject27 _$result;
    try {
      _$result = _$v ??
          new _$InlineObject27._(
              name: name,
              visibility: visibility,
              selectedRepositoryIds: _selectedRepositoryIds?.build(),
              runners: _runners?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'selectedRepositoryIds';
        _selectedRepositoryIds?.build();
        _$failedField = 'runners';
        _runners?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'InlineObject27', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
