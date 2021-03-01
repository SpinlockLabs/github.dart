// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'runner_labels.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const RunnerLabelsTypeEnum _$runnerLabelsTypeEnum_readOnly =
    const RunnerLabelsTypeEnum._('readOnly');
const RunnerLabelsTypeEnum _$runnerLabelsTypeEnum_custom =
    const RunnerLabelsTypeEnum._('custom');

RunnerLabelsTypeEnum _$runnerLabelsTypeEnumValueOf(String name) {
  switch (name) {
    case 'readOnly':
      return _$runnerLabelsTypeEnum_readOnly;
    case 'custom':
      return _$runnerLabelsTypeEnum_custom;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<RunnerLabelsTypeEnum> _$runnerLabelsTypeEnumValues =
    new BuiltSet<RunnerLabelsTypeEnum>(const <RunnerLabelsTypeEnum>[
  _$runnerLabelsTypeEnum_readOnly,
  _$runnerLabelsTypeEnum_custom,
]);

Serializer<RunnerLabels> _$runnerLabelsSerializer =
    new _$RunnerLabelsSerializer();
Serializer<RunnerLabelsTypeEnum> _$runnerLabelsTypeEnumSerializer =
    new _$RunnerLabelsTypeEnumSerializer();

class _$RunnerLabelsSerializer implements StructuredSerializer<RunnerLabels> {
  @override
  final Iterable<Type> types = const [RunnerLabels, _$RunnerLabels];
  @override
  final String wireName = 'RunnerLabels';

  @override
  Iterable<Object> serialize(Serializers serializers, RunnerLabels object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.type != null) {
      result
        ..add('type')
        ..add(serializers.serialize(object.type,
            specifiedType: const FullType(RunnerLabelsTypeEnum)));
    }
    return result;
  }

  @override
  RunnerLabels deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RunnerLabelsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
                  specifiedType: const FullType(RunnerLabelsTypeEnum))
              as RunnerLabelsTypeEnum;
          break;
      }
    }

    return result.build();
  }
}

class _$RunnerLabelsTypeEnumSerializer
    implements PrimitiveSerializer<RunnerLabelsTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'readOnly': 'read-only',
    'custom': 'custom',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'read-only': 'readOnly',
    'custom': 'custom',
  };

  @override
  final Iterable<Type> types = const <Type>[RunnerLabelsTypeEnum];
  @override
  final String wireName = 'RunnerLabelsTypeEnum';

  @override
  Object serialize(Serializers serializers, RunnerLabelsTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  RunnerLabelsTypeEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      RunnerLabelsTypeEnum.valueOf(
          _fromWire[serialized] ?? serialized as String);
}

class _$RunnerLabels extends RunnerLabels {
  @override
  final int id;
  @override
  final String name;
  @override
  final RunnerLabelsTypeEnum type;

  factory _$RunnerLabels([void Function(RunnerLabelsBuilder) updates]) =>
      (new RunnerLabelsBuilder()..update(updates)).build();

  _$RunnerLabels._({this.id, this.name, this.type}) : super._();

  @override
  RunnerLabels rebuild(void Function(RunnerLabelsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RunnerLabelsBuilder toBuilder() => new RunnerLabelsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RunnerLabels &&
        id == other.id &&
        name == other.name &&
        type == other.type;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, id.hashCode), name.hashCode), type.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RunnerLabels')
          ..add('id', id)
          ..add('name', name)
          ..add('type', type))
        .toString();
  }
}

class RunnerLabelsBuilder
    implements Builder<RunnerLabels, RunnerLabelsBuilder> {
  _$RunnerLabels _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  RunnerLabelsTypeEnum _type;
  RunnerLabelsTypeEnum get type => _$this._type;
  set type(RunnerLabelsTypeEnum type) => _$this._type = type;

  RunnerLabelsBuilder() {
    RunnerLabels._initializeBuilder(this);
  }

  RunnerLabelsBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _type = _$v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RunnerLabels other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$RunnerLabels;
  }

  @override
  void update(void Function(RunnerLabelsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RunnerLabels build() {
    final _$result =
        _$v ?? new _$RunnerLabels._(id: id, name: name, type: type);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
