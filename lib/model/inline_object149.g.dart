// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object149.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineObject149> _$inlineObject149Serializer =
    new _$InlineObject149Serializer();

class _$InlineObject149Serializer
    implements StructuredSerializer<InlineObject149> {
  @override
  final Iterable<Type> types = const [InlineObject149, _$InlineObject149];
  @override
  final String wireName = 'InlineObject149';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject149 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.subscribed != null) {
      result
        ..add('subscribed')
        ..add(serializers.serialize(object.subscribed,
            specifiedType: const FullType(bool)));
    }
    if (object.ignored != null) {
      result
        ..add('ignored')
        ..add(serializers.serialize(object.ignored,
            specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  InlineObject149 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject149Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'subscribed':
          result.subscribed = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'ignored':
          result.ignored = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$InlineObject149 extends InlineObject149 {
  @override
  final bool subscribed;
  @override
  final bool ignored;

  factory _$InlineObject149([void Function(InlineObject149Builder) updates]) =>
      (new InlineObject149Builder()..update(updates)).build();

  _$InlineObject149._({this.subscribed, this.ignored}) : super._();

  @override
  InlineObject149 rebuild(void Function(InlineObject149Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject149Builder toBuilder() =>
      new InlineObject149Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject149 &&
        subscribed == other.subscribed &&
        ignored == other.ignored;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, subscribed.hashCode), ignored.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject149')
          ..add('subscribed', subscribed)
          ..add('ignored', ignored))
        .toString();
  }
}

class InlineObject149Builder
    implements Builder<InlineObject149, InlineObject149Builder> {
  _$InlineObject149 _$v;

  bool _subscribed;
  bool get subscribed => _$this._subscribed;
  set subscribed(bool subscribed) => _$this._subscribed = subscribed;

  bool _ignored;
  bool get ignored => _$this._ignored;
  set ignored(bool ignored) => _$this._ignored = ignored;

  InlineObject149Builder() {
    InlineObject149._initializeBuilder(this);
  }

  InlineObject149Builder get _$this {
    if (_$v != null) {
      _subscribed = _$v.subscribed;
      _ignored = _$v.ignored;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject149 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject149;
  }

  @override
  void update(void Function(InlineObject149Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject149 build() {
    final _$result = _$v ??
        new _$InlineObject149._(subscribed: subscribed, ignored: ignored);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
