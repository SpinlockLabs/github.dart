// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object119.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const InlineObject119LockReasonEnum _$inlineObject119LockReasonEnum_offTopic =
    const InlineObject119LockReasonEnum._('offTopic');
const InlineObject119LockReasonEnum _$inlineObject119LockReasonEnum_tooHeated =
    const InlineObject119LockReasonEnum._('tooHeated');
const InlineObject119LockReasonEnum _$inlineObject119LockReasonEnum_resolved =
    const InlineObject119LockReasonEnum._('resolved');
const InlineObject119LockReasonEnum _$inlineObject119LockReasonEnum_spam =
    const InlineObject119LockReasonEnum._('spam');

InlineObject119LockReasonEnum _$inlineObject119LockReasonEnumValueOf(
    String name) {
  switch (name) {
    case 'offTopic':
      return _$inlineObject119LockReasonEnum_offTopic;
    case 'tooHeated':
      return _$inlineObject119LockReasonEnum_tooHeated;
    case 'resolved':
      return _$inlineObject119LockReasonEnum_resolved;
    case 'spam':
      return _$inlineObject119LockReasonEnum_spam;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<InlineObject119LockReasonEnum>
    _$inlineObject119LockReasonEnumValues = new BuiltSet<
        InlineObject119LockReasonEnum>(const <InlineObject119LockReasonEnum>[
  _$inlineObject119LockReasonEnum_offTopic,
  _$inlineObject119LockReasonEnum_tooHeated,
  _$inlineObject119LockReasonEnum_resolved,
  _$inlineObject119LockReasonEnum_spam,
]);

Serializer<InlineObject119> _$inlineObject119Serializer =
    new _$InlineObject119Serializer();
Serializer<InlineObject119LockReasonEnum>
    _$inlineObject119LockReasonEnumSerializer =
    new _$InlineObject119LockReasonEnumSerializer();

class _$InlineObject119Serializer
    implements StructuredSerializer<InlineObject119> {
  @override
  final Iterable<Type> types = const [InlineObject119, _$InlineObject119];
  @override
  final String wireName = 'InlineObject119';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject119 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.lockReason != null) {
      result
        ..add('lock_reason')
        ..add(serializers.serialize(object.lockReason,
            specifiedType: const FullType(InlineObject119LockReasonEnum)));
    }
    return result;
  }

  @override
  InlineObject119 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject119Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'lock_reason':
          result.lockReason = serializers.deserialize(value,
                  specifiedType: const FullType(InlineObject119LockReasonEnum))
              as InlineObject119LockReasonEnum;
          break;
      }
    }

    return result.build();
  }
}

class _$InlineObject119LockReasonEnumSerializer
    implements PrimitiveSerializer<InlineObject119LockReasonEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'offTopic': 'off-topic',
    'tooHeated': 'too heated',
    'resolved': 'resolved',
    'spam': 'spam',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'off-topic': 'offTopic',
    'too heated': 'tooHeated',
    'resolved': 'resolved',
    'spam': 'spam',
  };

  @override
  final Iterable<Type> types = const <Type>[InlineObject119LockReasonEnum];
  @override
  final String wireName = 'InlineObject119LockReasonEnum';

  @override
  Object serialize(
          Serializers serializers, InlineObject119LockReasonEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  InlineObject119LockReasonEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      InlineObject119LockReasonEnum.valueOf(
          _fromWire[serialized] ?? serialized as String);
}

class _$InlineObject119 extends InlineObject119 {
  @override
  final InlineObject119LockReasonEnum lockReason;

  factory _$InlineObject119([void Function(InlineObject119Builder) updates]) =>
      (new InlineObject119Builder()..update(updates)).build();

  _$InlineObject119._({this.lockReason}) : super._();

  @override
  InlineObject119 rebuild(void Function(InlineObject119Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject119Builder toBuilder() =>
      new InlineObject119Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject119 && lockReason == other.lockReason;
  }

  @override
  int get hashCode {
    return $jf($jc(0, lockReason.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject119')
          ..add('lockReason', lockReason))
        .toString();
  }
}

class InlineObject119Builder
    implements Builder<InlineObject119, InlineObject119Builder> {
  _$InlineObject119 _$v;

  InlineObject119LockReasonEnum _lockReason;
  InlineObject119LockReasonEnum get lockReason => _$this._lockReason;
  set lockReason(InlineObject119LockReasonEnum lockReason) =>
      _$this._lockReason = lockReason;

  InlineObject119Builder() {
    InlineObject119._initializeBuilder(this);
  }

  InlineObject119Builder get _$this {
    if (_$v != null) {
      _lockReason = _$v.lockReason;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject119 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject119;
  }

  @override
  void update(void Function(InlineObject119Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject119 build() {
    final _$result = _$v ?? new _$InlineObject119._(lockReason: lockReason);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
