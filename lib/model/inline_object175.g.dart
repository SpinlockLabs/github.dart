// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object175.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const InlineObject175VisibilityEnum _$inlineObject175VisibilityEnum_public =
    const InlineObject175VisibilityEnum._('public');
const InlineObject175VisibilityEnum _$inlineObject175VisibilityEnum_private =
    const InlineObject175VisibilityEnum._('private');

InlineObject175VisibilityEnum _$inlineObject175VisibilityEnumValueOf(
    String name) {
  switch (name) {
    case 'public':
      return _$inlineObject175VisibilityEnum_public;
    case 'private':
      return _$inlineObject175VisibilityEnum_private;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<InlineObject175VisibilityEnum>
    _$inlineObject175VisibilityEnumValues = new BuiltSet<
        InlineObject175VisibilityEnum>(const <InlineObject175VisibilityEnum>[
  _$inlineObject175VisibilityEnum_public,
  _$inlineObject175VisibilityEnum_private,
]);

Serializer<InlineObject175> _$inlineObject175Serializer =
    new _$InlineObject175Serializer();
Serializer<InlineObject175VisibilityEnum>
    _$inlineObject175VisibilityEnumSerializer =
    new _$InlineObject175VisibilityEnumSerializer();

class _$InlineObject175Serializer
    implements StructuredSerializer<InlineObject175> {
  @override
  final Iterable<Type> types = const [InlineObject175, _$InlineObject175];
  @override
  final String wireName = 'InlineObject175';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject175 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.email != null) {
      result
        ..add('email')
        ..add(serializers.serialize(object.email,
            specifiedType: const FullType(String)));
    }
    if (object.visibility != null) {
      result
        ..add('visibility')
        ..add(serializers.serialize(object.visibility,
            specifiedType: const FullType(InlineObject175VisibilityEnum)));
    }
    return result;
  }

  @override
  InlineObject175 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject175Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'visibility':
          result.visibility = serializers.deserialize(value,
                  specifiedType: const FullType(InlineObject175VisibilityEnum))
              as InlineObject175VisibilityEnum;
          break;
      }
    }

    return result.build();
  }
}

class _$InlineObject175VisibilityEnumSerializer
    implements PrimitiveSerializer<InlineObject175VisibilityEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'public': 'public',
    'private': 'private',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'public': 'public',
    'private': 'private',
  };

  @override
  final Iterable<Type> types = const <Type>[InlineObject175VisibilityEnum];
  @override
  final String wireName = 'InlineObject175VisibilityEnum';

  @override
  Object serialize(
          Serializers serializers, InlineObject175VisibilityEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  InlineObject175VisibilityEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      InlineObject175VisibilityEnum.valueOf(
          _fromWire[serialized] ?? serialized as String);
}

class _$InlineObject175 extends InlineObject175 {
  @override
  final String email;
  @override
  final InlineObject175VisibilityEnum visibility;

  factory _$InlineObject175([void Function(InlineObject175Builder) updates]) =>
      (new InlineObject175Builder()..update(updates)).build();

  _$InlineObject175._({this.email, this.visibility}) : super._();

  @override
  InlineObject175 rebuild(void Function(InlineObject175Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject175Builder toBuilder() =>
      new InlineObject175Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject175 &&
        email == other.email &&
        visibility == other.visibility;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, email.hashCode), visibility.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject175')
          ..add('email', email)
          ..add('visibility', visibility))
        .toString();
  }
}

class InlineObject175Builder
    implements Builder<InlineObject175, InlineObject175Builder> {
  _$InlineObject175 _$v;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  InlineObject175VisibilityEnum _visibility;
  InlineObject175VisibilityEnum get visibility => _$this._visibility;
  set visibility(InlineObject175VisibilityEnum visibility) =>
      _$this._visibility = visibility;

  InlineObject175Builder() {
    InlineObject175._initializeBuilder(this);
  }

  InlineObject175Builder get _$this {
    if (_$v != null) {
      _email = _$v.email;
      _visibility = _$v.visibility;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject175 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject175;
  }

  @override
  void update(void Function(InlineObject175Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject175 build() {
    final _$result =
        _$v ?? new _$InlineObject175._(email: email, visibility: visibility);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
