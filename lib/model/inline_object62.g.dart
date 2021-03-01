// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object62.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const InlineObject62StateEnum _$inlineObject62StateEnum_approved =
    const InlineObject62StateEnum._('approved');
const InlineObject62StateEnum _$inlineObject62StateEnum_rejected =
    const InlineObject62StateEnum._('rejected');

InlineObject62StateEnum _$inlineObject62StateEnumValueOf(String name) {
  switch (name) {
    case 'approved':
      return _$inlineObject62StateEnum_approved;
    case 'rejected':
      return _$inlineObject62StateEnum_rejected;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<InlineObject62StateEnum> _$inlineObject62StateEnumValues =
    new BuiltSet<InlineObject62StateEnum>(const <InlineObject62StateEnum>[
  _$inlineObject62StateEnum_approved,
  _$inlineObject62StateEnum_rejected,
]);

Serializer<InlineObject62> _$inlineObject62Serializer =
    new _$InlineObject62Serializer();
Serializer<InlineObject62StateEnum> _$inlineObject62StateEnumSerializer =
    new _$InlineObject62StateEnumSerializer();

class _$InlineObject62Serializer
    implements StructuredSerializer<InlineObject62> {
  @override
  final Iterable<Type> types = const [InlineObject62, _$InlineObject62];
  @override
  final String wireName = 'InlineObject62';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject62 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.environmentIds != null) {
      result
        ..add('environment_ids')
        ..add(serializers.serialize(object.environmentIds,
            specifiedType:
                const FullType(BuiltList, const [const FullType(int)])));
    }
    if (object.state != null) {
      result
        ..add('state')
        ..add(serializers.serialize(object.state,
            specifiedType: const FullType(InlineObject62StateEnum)));
    }
    if (object.comment != null) {
      result
        ..add('comment')
        ..add(serializers.serialize(object.comment,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  InlineObject62 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject62Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'environment_ids':
          result.environmentIds.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(int)]))
              as BuiltList<Object>);
          break;
        case 'state':
          result.state = serializers.deserialize(value,
                  specifiedType: const FullType(InlineObject62StateEnum))
              as InlineObject62StateEnum;
          break;
        case 'comment':
          result.comment = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$InlineObject62StateEnumSerializer
    implements PrimitiveSerializer<InlineObject62StateEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'approved': 'approved',
    'rejected': 'rejected',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'approved': 'approved',
    'rejected': 'rejected',
  };

  @override
  final Iterable<Type> types = const <Type>[InlineObject62StateEnum];
  @override
  final String wireName = 'InlineObject62StateEnum';

  @override
  Object serialize(Serializers serializers, InlineObject62StateEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  InlineObject62StateEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      InlineObject62StateEnum.valueOf(
          _fromWire[serialized] ?? serialized as String);
}

class _$InlineObject62 extends InlineObject62 {
  @override
  final BuiltList<int> environmentIds;
  @override
  final InlineObject62StateEnum state;
  @override
  final String comment;

  factory _$InlineObject62([void Function(InlineObject62Builder) updates]) =>
      (new InlineObject62Builder()..update(updates)).build();

  _$InlineObject62._({this.environmentIds, this.state, this.comment})
      : super._();

  @override
  InlineObject62 rebuild(void Function(InlineObject62Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject62Builder toBuilder() =>
      new InlineObject62Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject62 &&
        environmentIds == other.environmentIds &&
        state == other.state &&
        comment == other.comment;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, environmentIds.hashCode), state.hashCode),
        comment.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject62')
          ..add('environmentIds', environmentIds)
          ..add('state', state)
          ..add('comment', comment))
        .toString();
  }
}

class InlineObject62Builder
    implements Builder<InlineObject62, InlineObject62Builder> {
  _$InlineObject62 _$v;

  ListBuilder<int> _environmentIds;
  ListBuilder<int> get environmentIds =>
      _$this._environmentIds ??= new ListBuilder<int>();
  set environmentIds(ListBuilder<int> environmentIds) =>
      _$this._environmentIds = environmentIds;

  InlineObject62StateEnum _state;
  InlineObject62StateEnum get state => _$this._state;
  set state(InlineObject62StateEnum state) => _$this._state = state;

  String _comment;
  String get comment => _$this._comment;
  set comment(String comment) => _$this._comment = comment;

  InlineObject62Builder() {
    InlineObject62._initializeBuilder(this);
  }

  InlineObject62Builder get _$this {
    if (_$v != null) {
      _environmentIds = _$v.environmentIds?.toBuilder();
      _state = _$v.state;
      _comment = _$v.comment;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject62 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject62;
  }

  @override
  void update(void Function(InlineObject62Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject62 build() {
    _$InlineObject62 _$result;
    try {
      _$result = _$v ??
          new _$InlineObject62._(
              environmentIds: _environmentIds?.build(),
              state: state,
              comment: comment);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'environmentIds';
        _environmentIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'InlineObject62', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
