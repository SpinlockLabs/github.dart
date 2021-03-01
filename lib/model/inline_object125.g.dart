// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object125.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const InlineObject125StateEnum _$inlineObject125StateEnum_open =
    const InlineObject125StateEnum._('open');
const InlineObject125StateEnum _$inlineObject125StateEnum_closed =
    const InlineObject125StateEnum._('closed');

InlineObject125StateEnum _$inlineObject125StateEnumValueOf(String name) {
  switch (name) {
    case 'open':
      return _$inlineObject125StateEnum_open;
    case 'closed':
      return _$inlineObject125StateEnum_closed;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<InlineObject125StateEnum> _$inlineObject125StateEnumValues =
    new BuiltSet<InlineObject125StateEnum>(const <InlineObject125StateEnum>[
  _$inlineObject125StateEnum_open,
  _$inlineObject125StateEnum_closed,
]);

Serializer<InlineObject125> _$inlineObject125Serializer =
    new _$InlineObject125Serializer();
Serializer<InlineObject125StateEnum> _$inlineObject125StateEnumSerializer =
    new _$InlineObject125StateEnumSerializer();

class _$InlineObject125Serializer
    implements StructuredSerializer<InlineObject125> {
  @override
  final Iterable<Type> types = const [InlineObject125, _$InlineObject125];
  @override
  final String wireName = 'InlineObject125';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject125 object,
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
            specifiedType: const FullType(InlineObject125StateEnum)));
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
  InlineObject125 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject125Builder();

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
                  specifiedType: const FullType(InlineObject125StateEnum))
              as InlineObject125StateEnum;
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

class _$InlineObject125StateEnumSerializer
    implements PrimitiveSerializer<InlineObject125StateEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'open': 'open',
    'closed': 'closed',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'open': 'open',
    'closed': 'closed',
  };

  @override
  final Iterable<Type> types = const <Type>[InlineObject125StateEnum];
  @override
  final String wireName = 'InlineObject125StateEnum';

  @override
  Object serialize(Serializers serializers, InlineObject125StateEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  InlineObject125StateEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      InlineObject125StateEnum.valueOf(
          _fromWire[serialized] ?? serialized as String);
}

class _$InlineObject125 extends InlineObject125 {
  @override
  final String title;
  @override
  final InlineObject125StateEnum state;
  @override
  final String description;
  @override
  final String dueOn;

  factory _$InlineObject125([void Function(InlineObject125Builder) updates]) =>
      (new InlineObject125Builder()..update(updates)).build();

  _$InlineObject125._({this.title, this.state, this.description, this.dueOn})
      : super._();

  @override
  InlineObject125 rebuild(void Function(InlineObject125Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject125Builder toBuilder() =>
      new InlineObject125Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject125 &&
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
    return (newBuiltValueToStringHelper('InlineObject125')
          ..add('title', title)
          ..add('state', state)
          ..add('description', description)
          ..add('dueOn', dueOn))
        .toString();
  }
}

class InlineObject125Builder
    implements Builder<InlineObject125, InlineObject125Builder> {
  _$InlineObject125 _$v;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  InlineObject125StateEnum _state;
  InlineObject125StateEnum get state => _$this._state;
  set state(InlineObject125StateEnum state) => _$this._state = state;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  String _dueOn;
  String get dueOn => _$this._dueOn;
  set dueOn(String dueOn) => _$this._dueOn = dueOn;

  InlineObject125Builder() {
    InlineObject125._initializeBuilder(this);
  }

  InlineObject125Builder get _$this {
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
  void replace(InlineObject125 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject125;
  }

  @override
  void update(void Function(InlineObject125Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject125 build() {
    final _$result = _$v ??
        new _$InlineObject125._(
            title: title, state: state, description: description, dueOn: dueOn);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
