// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'check_run_check_suite.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CheckRunCheckSuite> _$checkRunCheckSuiteSerializer =
    new _$CheckRunCheckSuiteSerializer();

class _$CheckRunCheckSuiteSerializer
    implements StructuredSerializer<CheckRunCheckSuite> {
  @override
  final Iterable<Type> types = const [CheckRunCheckSuite, _$CheckRunCheckSuite];
  @override
  final String wireName = 'CheckRunCheckSuite';

  @override
  Iterable<Object> serialize(Serializers serializers, CheckRunCheckSuite object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  CheckRunCheckSuite deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CheckRunCheckSuiteBuilder();

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
      }
    }

    return result.build();
  }
}

class _$CheckRunCheckSuite extends CheckRunCheckSuite {
  @override
  final int id;

  factory _$CheckRunCheckSuite(
          [void Function(CheckRunCheckSuiteBuilder) updates]) =>
      (new CheckRunCheckSuiteBuilder()..update(updates)).build();

  _$CheckRunCheckSuite._({this.id}) : super._();

  @override
  CheckRunCheckSuite rebuild(
          void Function(CheckRunCheckSuiteBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CheckRunCheckSuiteBuilder toBuilder() =>
      new CheckRunCheckSuiteBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CheckRunCheckSuite && id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc(0, id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CheckRunCheckSuite')..add('id', id))
        .toString();
  }
}

class CheckRunCheckSuiteBuilder
    implements Builder<CheckRunCheckSuite, CheckRunCheckSuiteBuilder> {
  _$CheckRunCheckSuite _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  CheckRunCheckSuiteBuilder() {
    CheckRunCheckSuite._initializeBuilder(this);
  }

  CheckRunCheckSuiteBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CheckRunCheckSuite other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CheckRunCheckSuite;
  }

  @override
  void update(void Function(CheckRunCheckSuiteBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CheckRunCheckSuite build() {
    final _$result = _$v ?? new _$CheckRunCheckSuite._(id: id);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
