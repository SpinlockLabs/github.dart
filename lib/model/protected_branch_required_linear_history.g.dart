// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'protected_branch_required_linear_history.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProtectedBranchRequiredLinearHistory>
    _$protectedBranchRequiredLinearHistorySerializer =
    new _$ProtectedBranchRequiredLinearHistorySerializer();

class _$ProtectedBranchRequiredLinearHistorySerializer
    implements StructuredSerializer<ProtectedBranchRequiredLinearHistory> {
  @override
  final Iterable<Type> types = const [
    ProtectedBranchRequiredLinearHistory,
    _$ProtectedBranchRequiredLinearHistory
  ];
  @override
  final String wireName = 'ProtectedBranchRequiredLinearHistory';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ProtectedBranchRequiredLinearHistory object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.enabled != null) {
      result
        ..add('enabled')
        ..add(serializers.serialize(object.enabled,
            specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  ProtectedBranchRequiredLinearHistory deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProtectedBranchRequiredLinearHistoryBuilder();

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
      }
    }

    return result.build();
  }
}

class _$ProtectedBranchRequiredLinearHistory
    extends ProtectedBranchRequiredLinearHistory {
  @override
  final bool enabled;

  factory _$ProtectedBranchRequiredLinearHistory(
          [void Function(ProtectedBranchRequiredLinearHistoryBuilder)
              updates]) =>
      (new ProtectedBranchRequiredLinearHistoryBuilder()..update(updates))
          .build();

  _$ProtectedBranchRequiredLinearHistory._({this.enabled}) : super._();

  @override
  ProtectedBranchRequiredLinearHistory rebuild(
          void Function(ProtectedBranchRequiredLinearHistoryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProtectedBranchRequiredLinearHistoryBuilder toBuilder() =>
      new ProtectedBranchRequiredLinearHistoryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProtectedBranchRequiredLinearHistory &&
        enabled == other.enabled;
  }

  @override
  int get hashCode {
    return $jf($jc(0, enabled.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ProtectedBranchRequiredLinearHistory')
          ..add('enabled', enabled))
        .toString();
  }
}

class ProtectedBranchRequiredLinearHistoryBuilder
    implements
        Builder<ProtectedBranchRequiredLinearHistory,
            ProtectedBranchRequiredLinearHistoryBuilder> {
  _$ProtectedBranchRequiredLinearHistory _$v;

  bool _enabled;
  bool get enabled => _$this._enabled;
  set enabled(bool enabled) => _$this._enabled = enabled;

  ProtectedBranchRequiredLinearHistoryBuilder() {
    ProtectedBranchRequiredLinearHistory._initializeBuilder(this);
  }

  ProtectedBranchRequiredLinearHistoryBuilder get _$this {
    if (_$v != null) {
      _enabled = _$v.enabled;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProtectedBranchRequiredLinearHistory other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ProtectedBranchRequiredLinearHistory;
  }

  @override
  void update(
      void Function(ProtectedBranchRequiredLinearHistoryBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ProtectedBranchRequiredLinearHistory build() {
    final _$result =
        _$v ?? new _$ProtectedBranchRequiredLinearHistory._(enabled: enabled);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
