// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'contributor_activity_weeks.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ContributorActivityWeeks> _$contributorActivityWeeksSerializer =
    new _$ContributorActivityWeeksSerializer();

class _$ContributorActivityWeeksSerializer
    implements StructuredSerializer<ContributorActivityWeeks> {
  @override
  final Iterable<Type> types = const [
    ContributorActivityWeeks,
    _$ContributorActivityWeeks
  ];
  @override
  final String wireName = 'ContributorActivityWeeks';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ContributorActivityWeeks object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.w != null) {
      result
        ..add('w')
        ..add(serializers.serialize(object.w,
            specifiedType: const FullType(String)));
    }
    if (object.a != null) {
      result
        ..add('a')
        ..add(serializers.serialize(object.a,
            specifiedType: const FullType(int)));
    }
    if (object.d != null) {
      result
        ..add('d')
        ..add(serializers.serialize(object.d,
            specifiedType: const FullType(int)));
    }
    if (object.c != null) {
      result
        ..add('c')
        ..add(serializers.serialize(object.c,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  ContributorActivityWeeks deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ContributorActivityWeeksBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'w':
          result.w = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'a':
          result.a = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'd':
          result.d = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'c':
          result.c = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$ContributorActivityWeeks extends ContributorActivityWeeks {
  @override
  final String w;
  @override
  final int a;
  @override
  final int d;
  @override
  final int c;

  factory _$ContributorActivityWeeks(
          [void Function(ContributorActivityWeeksBuilder) updates]) =>
      (new ContributorActivityWeeksBuilder()..update(updates)).build();

  _$ContributorActivityWeeks._({this.w, this.a, this.d, this.c}) : super._();

  @override
  ContributorActivityWeeks rebuild(
          void Function(ContributorActivityWeeksBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ContributorActivityWeeksBuilder toBuilder() =>
      new ContributorActivityWeeksBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ContributorActivityWeeks &&
        w == other.w &&
        a == other.a &&
        d == other.d &&
        c == other.c;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc($jc(0, w.hashCode), a.hashCode), d.hashCode), c.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ContributorActivityWeeks')
          ..add('w', w)
          ..add('a', a)
          ..add('d', d)
          ..add('c', c))
        .toString();
  }
}

class ContributorActivityWeeksBuilder
    implements
        Builder<ContributorActivityWeeks, ContributorActivityWeeksBuilder> {
  _$ContributorActivityWeeks _$v;

  String _w;
  String get w => _$this._w;
  set w(String w) => _$this._w = w;

  int _a;
  int get a => _$this._a;
  set a(int a) => _$this._a = a;

  int _d;
  int get d => _$this._d;
  set d(int d) => _$this._d = d;

  int _c;
  int get c => _$this._c;
  set c(int c) => _$this._c = c;

  ContributorActivityWeeksBuilder() {
    ContributorActivityWeeks._initializeBuilder(this);
  }

  ContributorActivityWeeksBuilder get _$this {
    if (_$v != null) {
      _w = _$v.w;
      _a = _$v.a;
      _d = _$v.d;
      _c = _$v.c;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ContributorActivityWeeks other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ContributorActivityWeeks;
  }

  @override
  void update(void Function(ContributorActivityWeeksBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ContributorActivityWeeks build() {
    final _$result =
        _$v ?? new _$ContributorActivityWeeks._(w: w, a: a, d: d, c: c);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
