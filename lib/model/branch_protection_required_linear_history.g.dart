// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'branch_protection_required_linear_history.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BranchProtectionRequiredLinearHistory>
    _$branchProtectionRequiredLinearHistorySerializer =
    new _$BranchProtectionRequiredLinearHistorySerializer();

class _$BranchProtectionRequiredLinearHistorySerializer
    implements StructuredSerializer<BranchProtectionRequiredLinearHistory> {
  @override
  final Iterable<Type> types = const [
    BranchProtectionRequiredLinearHistory,
    _$BranchProtectionRequiredLinearHistory
  ];
  @override
  final String wireName = 'BranchProtectionRequiredLinearHistory';

  @override
  Iterable<Object> serialize(
      Serializers serializers, BranchProtectionRequiredLinearHistory object,
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
  BranchProtectionRequiredLinearHistory deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BranchProtectionRequiredLinearHistoryBuilder();

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

class _$BranchProtectionRequiredLinearHistory
    extends BranchProtectionRequiredLinearHistory {
  @override
  final bool enabled;

  factory _$BranchProtectionRequiredLinearHistory(
          [void Function(BranchProtectionRequiredLinearHistoryBuilder)
              updates]) =>
      (new BranchProtectionRequiredLinearHistoryBuilder()..update(updates))
          .build();

  _$BranchProtectionRequiredLinearHistory._({this.enabled}) : super._();

  @override
  BranchProtectionRequiredLinearHistory rebuild(
          void Function(BranchProtectionRequiredLinearHistoryBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BranchProtectionRequiredLinearHistoryBuilder toBuilder() =>
      new BranchProtectionRequiredLinearHistoryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BranchProtectionRequiredLinearHistory &&
        enabled == other.enabled;
  }

  @override
  int get hashCode {
    return $jf($jc(0, enabled.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BranchProtectionRequiredLinearHistory')
          ..add('enabled', enabled))
        .toString();
  }
}

class BranchProtectionRequiredLinearHistoryBuilder
    implements
        Builder<BranchProtectionRequiredLinearHistory,
            BranchProtectionRequiredLinearHistoryBuilder> {
  _$BranchProtectionRequiredLinearHistory _$v;

  bool _enabled;
  bool get enabled => _$this._enabled;
  set enabled(bool enabled) => _$this._enabled = enabled;

  BranchProtectionRequiredLinearHistoryBuilder() {
    BranchProtectionRequiredLinearHistory._initializeBuilder(this);
  }

  BranchProtectionRequiredLinearHistoryBuilder get _$this {
    if (_$v != null) {
      _enabled = _$v.enabled;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BranchProtectionRequiredLinearHistory other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BranchProtectionRequiredLinearHistory;
  }

  @override
  void update(
      void Function(BranchProtectionRequiredLinearHistoryBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BranchProtectionRequiredLinearHistory build() {
    final _$result =
        _$v ?? new _$BranchProtectionRequiredLinearHistory._(enabled: enabled);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
