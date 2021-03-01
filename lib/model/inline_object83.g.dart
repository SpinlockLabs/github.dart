// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object83.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineObject83> _$inlineObject83Serializer =
    new _$InlineObject83Serializer();

class _$InlineObject83Serializer
    implements StructuredSerializer<InlineObject83> {
  @override
  final Iterable<Type> types = const [InlineObject83, _$InlineObject83];
  @override
  final String wireName = 'InlineObject83';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject83 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.state != null) {
      result
        ..add('state')
        ..add(serializers.serialize(object.state,
            specifiedType: const FullType(CodeScanningAlertSetState)));
    }
    if (object.dismissedReason != null) {
      result
        ..add('dismissed_reason')
        ..add(serializers.serialize(object.dismissedReason,
            specifiedType: const FullType(CodeScanningAlertDismissedReason)));
    }
    return result;
  }

  @override
  InlineObject83 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject83Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'state':
          result.state = serializers.deserialize(value,
                  specifiedType: const FullType(CodeScanningAlertSetState))
              as CodeScanningAlertSetState;
          break;
        case 'dismissed_reason':
          result.dismissedReason.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(CodeScanningAlertDismissedReason))
              as CodeScanningAlertDismissedReason);
          break;
      }
    }

    return result.build();
  }
}

class _$InlineObject83 extends InlineObject83 {
  @override
  final CodeScanningAlertSetState state;
  @override
  final CodeScanningAlertDismissedReason dismissedReason;

  factory _$InlineObject83([void Function(InlineObject83Builder) updates]) =>
      (new InlineObject83Builder()..update(updates)).build();

  _$InlineObject83._({this.state, this.dismissedReason}) : super._();

  @override
  InlineObject83 rebuild(void Function(InlineObject83Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject83Builder toBuilder() =>
      new InlineObject83Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject83 &&
        state == other.state &&
        dismissedReason == other.dismissedReason;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, state.hashCode), dismissedReason.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject83')
          ..add('state', state)
          ..add('dismissedReason', dismissedReason))
        .toString();
  }
}

class InlineObject83Builder
    implements Builder<InlineObject83, InlineObject83Builder> {
  _$InlineObject83 _$v;

  CodeScanningAlertSetState _state;
  CodeScanningAlertSetState get state => _$this._state;
  set state(CodeScanningAlertSetState state) => _$this._state = state;

  CodeScanningAlertDismissedReasonBuilder _dismissedReason;
  CodeScanningAlertDismissedReasonBuilder get dismissedReason =>
      _$this._dismissedReason ??= new CodeScanningAlertDismissedReasonBuilder();
  set dismissedReason(
          CodeScanningAlertDismissedReasonBuilder dismissedReason) =>
      _$this._dismissedReason = dismissedReason;

  InlineObject83Builder() {
    InlineObject83._initializeBuilder(this);
  }

  InlineObject83Builder get _$this {
    if (_$v != null) {
      _state = _$v.state;
      _dismissedReason = _$v.dismissedReason?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject83 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject83;
  }

  @override
  void update(void Function(InlineObject83Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject83 build() {
    _$InlineObject83 _$result;
    try {
      _$result = _$v ??
          new _$InlineObject83._(
              state: state, dismissedReason: _dismissedReason?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'dismissedReason';
        _dismissedReason?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'InlineObject83', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
