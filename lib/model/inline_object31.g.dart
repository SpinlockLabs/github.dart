// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object31.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const InlineObject31VisibilityEnum _$inlineObject31VisibilityEnum_all =
    const InlineObject31VisibilityEnum._('all');
const InlineObject31VisibilityEnum _$inlineObject31VisibilityEnum_private =
    const InlineObject31VisibilityEnum._('private');
const InlineObject31VisibilityEnum _$inlineObject31VisibilityEnum_selected =
    const InlineObject31VisibilityEnum._('selected');

InlineObject31VisibilityEnum _$inlineObject31VisibilityEnumValueOf(
    String name) {
  switch (name) {
    case 'all':
      return _$inlineObject31VisibilityEnum_all;
    case 'private':
      return _$inlineObject31VisibilityEnum_private;
    case 'selected':
      return _$inlineObject31VisibilityEnum_selected;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<InlineObject31VisibilityEnum>
    _$inlineObject31VisibilityEnumValues = new BuiltSet<
        InlineObject31VisibilityEnum>(const <InlineObject31VisibilityEnum>[
  _$inlineObject31VisibilityEnum_all,
  _$inlineObject31VisibilityEnum_private,
  _$inlineObject31VisibilityEnum_selected,
]);

Serializer<InlineObject31> _$inlineObject31Serializer =
    new _$InlineObject31Serializer();
Serializer<InlineObject31VisibilityEnum>
    _$inlineObject31VisibilityEnumSerializer =
    new _$InlineObject31VisibilityEnumSerializer();

class _$InlineObject31Serializer
    implements StructuredSerializer<InlineObject31> {
  @override
  final Iterable<Type> types = const [InlineObject31, _$InlineObject31];
  @override
  final String wireName = 'InlineObject31';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject31 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.encryptedValue != null) {
      result
        ..add('encrypted_value')
        ..add(serializers.serialize(object.encryptedValue,
            specifiedType: const FullType(String)));
    }
    if (object.keyId != null) {
      result
        ..add('key_id')
        ..add(serializers.serialize(object.keyId,
            specifiedType: const FullType(String)));
    }
    if (object.visibility != null) {
      result
        ..add('visibility')
        ..add(serializers.serialize(object.visibility,
            specifiedType: const FullType(InlineObject31VisibilityEnum)));
    }
    if (object.selectedRepositoryIds != null) {
      result
        ..add('selected_repository_ids')
        ..add(serializers.serialize(object.selectedRepositoryIds,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    return result;
  }

  @override
  InlineObject31 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject31Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'encrypted_value':
          result.encryptedValue = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'key_id':
          result.keyId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'visibility':
          result.visibility = serializers.deserialize(value,
                  specifiedType: const FullType(InlineObject31VisibilityEnum))
              as InlineObject31VisibilityEnum;
          break;
        case 'selected_repository_ids':
          result.selectedRepositoryIds.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$InlineObject31VisibilityEnumSerializer
    implements PrimitiveSerializer<InlineObject31VisibilityEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'all': 'all',
    'private': 'private',
    'selected': 'selected',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'all': 'all',
    'private': 'private',
    'selected': 'selected',
  };

  @override
  final Iterable<Type> types = const <Type>[InlineObject31VisibilityEnum];
  @override
  final String wireName = 'InlineObject31VisibilityEnum';

  @override
  Object serialize(Serializers serializers, InlineObject31VisibilityEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  InlineObject31VisibilityEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      InlineObject31VisibilityEnum.valueOf(
          _fromWire[serialized] ?? serialized as String);
}

class _$InlineObject31 extends InlineObject31 {
  @override
  final String encryptedValue;
  @override
  final String keyId;
  @override
  final InlineObject31VisibilityEnum visibility;
  @override
  final BuiltList<String> selectedRepositoryIds;

  factory _$InlineObject31([void Function(InlineObject31Builder) updates]) =>
      (new InlineObject31Builder()..update(updates)).build();

  _$InlineObject31._(
      {this.encryptedValue,
      this.keyId,
      this.visibility,
      this.selectedRepositoryIds})
      : super._();

  @override
  InlineObject31 rebuild(void Function(InlineObject31Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject31Builder toBuilder() =>
      new InlineObject31Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject31 &&
        encryptedValue == other.encryptedValue &&
        keyId == other.keyId &&
        visibility == other.visibility &&
        selectedRepositoryIds == other.selectedRepositoryIds;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, encryptedValue.hashCode), keyId.hashCode),
            visibility.hashCode),
        selectedRepositoryIds.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject31')
          ..add('encryptedValue', encryptedValue)
          ..add('keyId', keyId)
          ..add('visibility', visibility)
          ..add('selectedRepositoryIds', selectedRepositoryIds))
        .toString();
  }
}

class InlineObject31Builder
    implements Builder<InlineObject31, InlineObject31Builder> {
  _$InlineObject31 _$v;

  String _encryptedValue;
  String get encryptedValue => _$this._encryptedValue;
  set encryptedValue(String encryptedValue) =>
      _$this._encryptedValue = encryptedValue;

  String _keyId;
  String get keyId => _$this._keyId;
  set keyId(String keyId) => _$this._keyId = keyId;

  InlineObject31VisibilityEnum _visibility;
  InlineObject31VisibilityEnum get visibility => _$this._visibility;
  set visibility(InlineObject31VisibilityEnum visibility) =>
      _$this._visibility = visibility;

  ListBuilder<String> _selectedRepositoryIds;
  ListBuilder<String> get selectedRepositoryIds =>
      _$this._selectedRepositoryIds ??= new ListBuilder<String>();
  set selectedRepositoryIds(ListBuilder<String> selectedRepositoryIds) =>
      _$this._selectedRepositoryIds = selectedRepositoryIds;

  InlineObject31Builder() {
    InlineObject31._initializeBuilder(this);
  }

  InlineObject31Builder get _$this {
    if (_$v != null) {
      _encryptedValue = _$v.encryptedValue;
      _keyId = _$v.keyId;
      _visibility = _$v.visibility;
      _selectedRepositoryIds = _$v.selectedRepositoryIds?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject31 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject31;
  }

  @override
  void update(void Function(InlineObject31Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject31 build() {
    _$InlineObject31 _$result;
    try {
      _$result = _$v ??
          new _$InlineObject31._(
              encryptedValue: encryptedValue,
              keyId: keyId,
              visibility: visibility,
              selectedRepositoryIds: _selectedRepositoryIds?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'selectedRepositoryIds';
        _selectedRepositoryIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'InlineObject31', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
