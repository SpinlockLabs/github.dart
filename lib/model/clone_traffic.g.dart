// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'clone_traffic.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CloneTraffic> _$cloneTrafficSerializer =
    new _$CloneTrafficSerializer();

class _$CloneTrafficSerializer implements StructuredSerializer<CloneTraffic> {
  @override
  final Iterable<Type> types = const [CloneTraffic, _$CloneTraffic];
  @override
  final String wireName = 'CloneTraffic';

  @override
  Iterable<Object> serialize(Serializers serializers, CloneTraffic object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.count != null) {
      result
        ..add('count')
        ..add(serializers.serialize(object.count,
            specifiedType: const FullType(int)));
    }
    if (object.uniques != null) {
      result
        ..add('uniques')
        ..add(serializers.serialize(object.uniques,
            specifiedType: const FullType(int)));
    }
    if (object.clones != null) {
      result
        ..add('clones')
        ..add(serializers.serialize(object.clones,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Traffic)])));
    }
    return result;
  }

  @override
  CloneTraffic deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CloneTrafficBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'count':
          result.count = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'uniques':
          result.uniques = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'clones':
          result.clones.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Traffic)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$CloneTraffic extends CloneTraffic {
  @override
  final int count;
  @override
  final int uniques;
  @override
  final BuiltList<Traffic> clones;

  factory _$CloneTraffic([void Function(CloneTrafficBuilder) updates]) =>
      (new CloneTrafficBuilder()..update(updates)).build();

  _$CloneTraffic._({this.count, this.uniques, this.clones}) : super._();

  @override
  CloneTraffic rebuild(void Function(CloneTrafficBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CloneTrafficBuilder toBuilder() => new CloneTrafficBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CloneTraffic &&
        count == other.count &&
        uniques == other.uniques &&
        clones == other.clones;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, count.hashCode), uniques.hashCode), clones.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CloneTraffic')
          ..add('count', count)
          ..add('uniques', uniques)
          ..add('clones', clones))
        .toString();
  }
}

class CloneTrafficBuilder
    implements Builder<CloneTraffic, CloneTrafficBuilder> {
  _$CloneTraffic _$v;

  int _count;
  int get count => _$this._count;
  set count(int count) => _$this._count = count;

  int _uniques;
  int get uniques => _$this._uniques;
  set uniques(int uniques) => _$this._uniques = uniques;

  ListBuilder<Traffic> _clones;
  ListBuilder<Traffic> get clones =>
      _$this._clones ??= new ListBuilder<Traffic>();
  set clones(ListBuilder<Traffic> clones) => _$this._clones = clones;

  CloneTrafficBuilder() {
    CloneTraffic._initializeBuilder(this);
  }

  CloneTrafficBuilder get _$this {
    if (_$v != null) {
      _count = _$v.count;
      _uniques = _$v.uniques;
      _clones = _$v.clones?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CloneTraffic other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CloneTraffic;
  }

  @override
  void update(void Function(CloneTrafficBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CloneTraffic build() {
    _$CloneTraffic _$result;
    try {
      _$result = _$v ??
          new _$CloneTraffic._(
              count: count, uniques: uniques, clones: _clones?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'clones';
        _clones?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CloneTraffic', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
