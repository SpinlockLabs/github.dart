// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object147.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineObject147> _$inlineObject147Serializer =
    new _$InlineObject147Serializer();

class _$InlineObject147Serializer
    implements StructuredSerializer<InlineObject147> {
  @override
  final Iterable<Type> types = const [InlineObject147, _$InlineObject147];
  @override
  final String wireName = 'InlineObject147';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject147 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.state != null) {
      result
        ..add('state')
        ..add(serializers.serialize(object.state,
            specifiedType: const FullType(SecretScanningAlertState)));
    }
    if (object.resolution != null) {
      result
        ..add('resolution')
        ..add(serializers.serialize(object.resolution,
            specifiedType: const FullType(SecretScanningAlertResolution)));
    }
    return result;
  }

  @override
  InlineObject147 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject147Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'state':
          result.state = serializers.deserialize(value,
                  specifiedType: const FullType(SecretScanningAlertState))
              as SecretScanningAlertState;
          break;
        case 'resolution':
          result.resolution.replace(serializers.deserialize(value,
                  specifiedType: const FullType(SecretScanningAlertResolution))
              as SecretScanningAlertResolution);
          break;
      }
    }

    return result.build();
  }
}

class _$InlineObject147 extends InlineObject147 {
  @override
  final SecretScanningAlertState state;
  @override
  final SecretScanningAlertResolution resolution;

  factory _$InlineObject147([void Function(InlineObject147Builder) updates]) =>
      (new InlineObject147Builder()..update(updates)).build();

  _$InlineObject147._({this.state, this.resolution}) : super._();

  @override
  InlineObject147 rebuild(void Function(InlineObject147Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject147Builder toBuilder() =>
      new InlineObject147Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject147 &&
        state == other.state &&
        resolution == other.resolution;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, state.hashCode), resolution.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject147')
          ..add('state', state)
          ..add('resolution', resolution))
        .toString();
  }
}

class InlineObject147Builder
    implements Builder<InlineObject147, InlineObject147Builder> {
  _$InlineObject147 _$v;

  SecretScanningAlertState _state;
  SecretScanningAlertState get state => _$this._state;
  set state(SecretScanningAlertState state) => _$this._state = state;

  SecretScanningAlertResolutionBuilder _resolution;
  SecretScanningAlertResolutionBuilder get resolution =>
      _$this._resolution ??= new SecretScanningAlertResolutionBuilder();
  set resolution(SecretScanningAlertResolutionBuilder resolution) =>
      _$this._resolution = resolution;

  InlineObject147Builder() {
    InlineObject147._initializeBuilder(this);
  }

  InlineObject147Builder get _$this {
    if (_$v != null) {
      _state = _$v.state;
      _resolution = _$v.resolution?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject147 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject147;
  }

  @override
  void update(void Function(InlineObject147Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject147 build() {
    _$InlineObject147 _$result;
    try {
      _$result = _$v ??
          new _$InlineObject147._(
              state: state, resolution: _resolution?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'resolution';
        _resolution?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'InlineObject147', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
