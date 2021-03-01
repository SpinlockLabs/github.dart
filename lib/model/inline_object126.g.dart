// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object126.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const InlineObject126StateEnum _$inlineObject126StateEnum_open =
    const InlineObject126StateEnum._('open');
const InlineObject126StateEnum _$inlineObject126StateEnum_closed =
    const InlineObject126StateEnum._('closed');

InlineObject126StateEnum _$inlineObject126StateEnumValueOf(String name) {
  switch (name) {
    case 'open':
      return _$inlineObject126StateEnum_open;
    case 'closed':
      return _$inlineObject126StateEnum_closed;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<InlineObject126StateEnum> _$inlineObject126StateEnumValues =
    new BuiltSet<InlineObject126StateEnum>(const <InlineObject126StateEnum>[
  _$inlineObject126StateEnum_open,
  _$inlineObject126StateEnum_closed,
]);

Serializer<InlineObject126> _$inlineObject126Serializer =
    new _$InlineObject126Serializer();
Serializer<InlineObject126StateEnum> _$inlineObject126StateEnumSerializer =
    new _$InlineObject126StateEnumSerializer();

class _$InlineObject126Serializer
    implements StructuredSerializer<InlineObject126> {
  @override
  final Iterable<Type> types = const [InlineObject126, _$InlineObject126];
  @override
  final String wireName = 'InlineObject126';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject126 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.title != null) {
      result
        ..add('title')
        ..add(serializers.serialize(object.title,
            specifiedType: const FullType(String)));
    }
    if (object.state != null) {
      result
        ..add('state')
        ..add(serializers.serialize(object.state,
            specifiedType: const FullType(InlineObject126StateEnum)));
    }
    if (object.description != null) {
      result
        ..add('description')
        ..add(serializers.serialize(object.description,
            specifiedType: const FullType(String)));
    }
    if (object.dueOn != null) {
      result
        ..add('due_on')
        ..add(serializers.serialize(object.dueOn,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  InlineObject126 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject126Builder();

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
        case 'state':
          result.state = serializers.deserialize(value,
                  specifiedType: const FullType(InlineObject126StateEnum))
              as InlineObject126StateEnum;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'due_on':
          result.dueOn = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$InlineObject126StateEnumSerializer
    implements PrimitiveSerializer<InlineObject126StateEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'open': 'open',
    'closed': 'closed',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'open': 'open',
    'closed': 'closed',
  };

  @override
  final Iterable<Type> types = const <Type>[InlineObject126StateEnum];
  @override
  final String wireName = 'InlineObject126StateEnum';

  @override
  Object serialize(Serializers serializers, InlineObject126StateEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  InlineObject126StateEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      InlineObject126StateEnum.valueOf(
          _fromWire[serialized] ?? serialized as String);
}

class _$InlineObject126 extends InlineObject126 {
  @override
  final String title;
  @override
  final InlineObject126StateEnum state;
  @override
  final String description;
  @override
  final String dueOn;

  factory _$InlineObject126([void Function(InlineObject126Builder) updates]) =>
      (new InlineObject126Builder()..update(updates)).build();

  _$InlineObject126._({this.title, this.state, this.description, this.dueOn})
      : super._();

  @override
  InlineObject126 rebuild(void Function(InlineObject126Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject126Builder toBuilder() =>
      new InlineObject126Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject126 &&
        title == other.title &&
        state == other.state &&
        description == other.description &&
        dueOn == other.dueOn;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, title.hashCode), state.hashCode), description.hashCode),
        dueOn.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject126')
          ..add('title', title)
          ..add('state', state)
          ..add('description', description)
          ..add('dueOn', dueOn))
        .toString();
  }
}

class InlineObject126Builder
    implements Builder<InlineObject126, InlineObject126Builder> {
  _$InlineObject126 _$v;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  InlineObject126StateEnum _state;
  InlineObject126StateEnum get state => _$this._state;
  set state(InlineObject126StateEnum state) => _$this._state = state;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  String _dueOn;
  String get dueOn => _$this._dueOn;
  set dueOn(String dueOn) => _$this._dueOn = dueOn;

  InlineObject126Builder() {
    InlineObject126._initializeBuilder(this);
  }

  InlineObject126Builder get _$this {
    if (_$v != null) {
      _title = _$v.title;
      _state = _$v.state;
      _description = _$v.description;
      _dueOn = _$v.dueOn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject126 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject126;
  }

  @override
  void update(void Function(InlineObject126Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject126 build() {
    final _$result = _$v ??
        new _$InlineObject126._(
            title: title, state: state, description: description, dueOn: dueOn);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
