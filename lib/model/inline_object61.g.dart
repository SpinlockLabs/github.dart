// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object61.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineObject61> _$inlineObject61Serializer =
    new _$InlineObject61Serializer();

class _$InlineObject61Serializer
    implements StructuredSerializer<InlineObject61> {
  @override
  final Iterable<Type> types = const [InlineObject61, _$InlineObject61];
  @override
  final String wireName = 'InlineObject61';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject61 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.enabled != null) {
      result
        ..add('enabled')
        ..add(serializers.serialize(object.enabled,
            specifiedType: const FullType(bool)));
    }
    if (object.allowedActions != null) {
      result
        ..add('allowed_actions')
        ..add(serializers.serialize(object.allowedActions,
            specifiedType: const FullType(AllowedActions)));
    }
    return result;
  }

  @override
  InlineObject61 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject61Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'enabled':
          result.enabled = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'allowed_actions':
          result.allowedActions = serializers.deserialize(value,
              specifiedType: const FullType(AllowedActions)) as AllowedActions;
          break;
      }
    }

    return result.build();
  }
}

class _$InlineObject61 extends InlineObject61 {
  @override
  final bool enabled;
  @override
  final AllowedActions allowedActions;

  factory _$InlineObject61([void Function(InlineObject61Builder) updates]) =>
      (new InlineObject61Builder()..update(updates)).build();

  _$InlineObject61._({this.enabled, this.allowedActions}) : super._();

  @override
  InlineObject61 rebuild(void Function(InlineObject61Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject61Builder toBuilder() =>
      new InlineObject61Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject61 &&
        enabled == other.enabled &&
        allowedActions == other.allowedActions;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, enabled.hashCode), allowedActions.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject61')
          ..add('enabled', enabled)
          ..add('allowedActions', allowedActions))
        .toString();
  }
}

class InlineObject61Builder
    implements Builder<InlineObject61, InlineObject61Builder> {
  _$InlineObject61 _$v;

  bool _enabled;
  bool get enabled => _$this._enabled;
  set enabled(bool enabled) => _$this._enabled = enabled;

  AllowedActions _allowedActions;
  AllowedActions get allowedActions => _$this._allowedActions;
  set allowedActions(AllowedActions allowedActions) =>
      _$this._allowedActions = allowedActions;

  InlineObject61Builder() {
    InlineObject61._initializeBuilder(this);
  }

  InlineObject61Builder get _$this {
    if (_$v != null) {
      _enabled = _$v.enabled;
      _allowedActions = _$v.allowedActions;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject61 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject61;
  }

  @override
  void update(void Function(InlineObject61Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject61 build() {
    final _$result = _$v ??
        new _$InlineObject61._(
            enabled: enabled, allowedActions: allowedActions);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
