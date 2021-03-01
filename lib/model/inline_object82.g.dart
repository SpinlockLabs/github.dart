// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object82.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineObject82> _$inlineObject82Serializer =
    new _$InlineObject82Serializer();

class _$InlineObject82Serializer
    implements StructuredSerializer<InlineObject82> {
  @override
  final Iterable<Type> types = const [InlineObject82, _$InlineObject82];
  @override
  final String wireName = 'InlineObject82';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject82 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.autoTriggerChecks != null) {
      result
        ..add('auto_trigger_checks')
        ..add(serializers.serialize(object.autoTriggerChecks,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  ReposOwnerRepoCheckSuitesPreferencesAutoTriggerChecks)
            ])));
    }
    return result;
  }

  @override
  InlineObject82 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject82Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'auto_trigger_checks':
          result.autoTriggerChecks.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    ReposOwnerRepoCheckSuitesPreferencesAutoTriggerChecks)
              ])) as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$InlineObject82 extends InlineObject82 {
  @override
  final BuiltList<ReposOwnerRepoCheckSuitesPreferencesAutoTriggerChecks>
      autoTriggerChecks;

  factory _$InlineObject82([void Function(InlineObject82Builder) updates]) =>
      (new InlineObject82Builder()..update(updates)).build();

  _$InlineObject82._({this.autoTriggerChecks}) : super._();

  @override
  InlineObject82 rebuild(void Function(InlineObject82Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject82Builder toBuilder() =>
      new InlineObject82Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject82 &&
        autoTriggerChecks == other.autoTriggerChecks;
  }

  @override
  int get hashCode {
    return $jf($jc(0, autoTriggerChecks.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject82')
          ..add('autoTriggerChecks', autoTriggerChecks))
        .toString();
  }
}

class InlineObject82Builder
    implements Builder<InlineObject82, InlineObject82Builder> {
  _$InlineObject82 _$v;

  ListBuilder<ReposOwnerRepoCheckSuitesPreferencesAutoTriggerChecks>
      _autoTriggerChecks;
  ListBuilder<ReposOwnerRepoCheckSuitesPreferencesAutoTriggerChecks>
      get autoTriggerChecks => _$this._autoTriggerChecks ??= new ListBuilder<
          ReposOwnerRepoCheckSuitesPreferencesAutoTriggerChecks>();
  set autoTriggerChecks(
          ListBuilder<ReposOwnerRepoCheckSuitesPreferencesAutoTriggerChecks>
              autoTriggerChecks) =>
      _$this._autoTriggerChecks = autoTriggerChecks;

  InlineObject82Builder() {
    InlineObject82._initializeBuilder(this);
  }

  InlineObject82Builder get _$this {
    if (_$v != null) {
      _autoTriggerChecks = _$v.autoTriggerChecks?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject82 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject82;
  }

  @override
  void update(void Function(InlineObject82Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject82 build() {
    _$InlineObject82 _$result;
    try {
      _$result = _$v ??
          new _$InlineObject82._(
              autoTriggerChecks: _autoTriggerChecks?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'autoTriggerChecks';
        _autoTriggerChecks?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'InlineObject82', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
