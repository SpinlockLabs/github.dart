// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object134.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const InlineObject134StateEnum _$inlineObject134StateEnum_open =
    const InlineObject134StateEnum._('open');
const InlineObject134StateEnum _$inlineObject134StateEnum_closed =
    const InlineObject134StateEnum._('closed');

InlineObject134StateEnum _$inlineObject134StateEnumValueOf(String name) {
  switch (name) {
    case 'open':
      return _$inlineObject134StateEnum_open;
    case 'closed':
      return _$inlineObject134StateEnum_closed;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<InlineObject134StateEnum> _$inlineObject134StateEnumValues =
    new BuiltSet<InlineObject134StateEnum>(const <InlineObject134StateEnum>[
  _$inlineObject134StateEnum_open,
  _$inlineObject134StateEnum_closed,
]);

Serializer<InlineObject134> _$inlineObject134Serializer =
    new _$InlineObject134Serializer();
Serializer<InlineObject134StateEnum> _$inlineObject134StateEnumSerializer =
    new _$InlineObject134StateEnumSerializer();

class _$InlineObject134Serializer
    implements StructuredSerializer<InlineObject134> {
  @override
  final Iterable<Type> types = const [InlineObject134, _$InlineObject134];
  @override
  final String wireName = 'InlineObject134';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject134 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.title != null) {
      result
        ..add('title')
        ..add(serializers.serialize(object.title,
            specifiedType: const FullType(String)));
    }
    if (object.body != null) {
      result
        ..add('body')
        ..add(serializers.serialize(object.body,
            specifiedType: const FullType(String)));
    }
    if (object.state != null) {
      result
        ..add('state')
        ..add(serializers.serialize(object.state,
            specifiedType: const FullType(InlineObject134StateEnum)));
    }
    if (object.base != null) {
      result
        ..add('base')
        ..add(serializers.serialize(object.base,
            specifiedType: const FullType(String)));
    }
    if (object.maintainerCanModify != null) {
      result
        ..add('maintainer_can_modify')
        ..add(serializers.serialize(object.maintainerCanModify,
            specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  InlineObject134 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject134Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'body':
          result.body = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'state':
          result.state = serializers.deserialize(value,
                  specifiedType: const FullType(InlineObject134StateEnum))
              as InlineObject134StateEnum;
          break;
        case 'base':
          result.base = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'maintainer_can_modify':
          result.maintainerCanModify = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$InlineObject134StateEnumSerializer
    implements PrimitiveSerializer<InlineObject134StateEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'open': 'open',
    'closed': 'closed',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'open': 'open',
    'closed': 'closed',
  };

  @override
  final Iterable<Type> types = const <Type>[InlineObject134StateEnum];
  @override
  final String wireName = 'InlineObject134StateEnum';

  @override
  Object serialize(Serializers serializers, InlineObject134StateEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  InlineObject134StateEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      InlineObject134StateEnum.valueOf(
          _fromWire[serialized] ?? serialized as String);
}

class _$InlineObject134 extends InlineObject134 {
  @override
  final String title;
  @override
  final String body;
  @override
  final InlineObject134StateEnum state;
  @override
  final String base;
  @override
  final bool maintainerCanModify;

  factory _$InlineObject134([void Function(InlineObject134Builder) updates]) =>
      (new InlineObject134Builder()..update(updates)).build();

  _$InlineObject134._(
      {this.title, this.body, this.state, this.base, this.maintainerCanModify})
      : super._();

  @override
  InlineObject134 rebuild(void Function(InlineObject134Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject134Builder toBuilder() =>
      new InlineObject134Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject134 &&
        title == other.title &&
        body == other.body &&
        state == other.state &&
        base == other.base &&
        maintainerCanModify == other.maintainerCanModify;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, title.hashCode), body.hashCode), state.hashCode),
            base.hashCode),
        maintainerCanModify.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject134')
          ..add('title', title)
          ..add('body', body)
          ..add('state', state)
          ..add('base', base)
          ..add('maintainerCanModify', maintainerCanModify))
        .toString();
  }
}

class InlineObject134Builder
    implements Builder<InlineObject134, InlineObject134Builder> {
  _$InlineObject134 _$v;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _body;
  String get body => _$this._body;
  set body(String body) => _$this._body = body;

  InlineObject134StateEnum _state;
  InlineObject134StateEnum get state => _$this._state;
  set state(InlineObject134StateEnum state) => _$this._state = state;

  String _base;
  String get base => _$this._base;
  set base(String base) => _$this._base = base;

  bool _maintainerCanModify;
  bool get maintainerCanModify => _$this._maintainerCanModify;
  set maintainerCanModify(bool maintainerCanModify) =>
      _$this._maintainerCanModify = maintainerCanModify;

  InlineObject134Builder() {
    InlineObject134._initializeBuilder(this);
  }

  InlineObject134Builder get _$this {
    if (_$v != null) {
      _title = _$v.title;
      _body = _$v.body;
      _state = _$v.state;
      _base = _$v.base;
      _maintainerCanModify = _$v.maintainerCanModify;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject134 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject134;
  }

  @override
  void update(void Function(InlineObject134Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject134 build() {
    final _$result = _$v ??
        new _$InlineObject134._(
            title: title,
            body: body,
            state: state,
            base: base,
            maintainerCanModify: maintainerCanModify);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
