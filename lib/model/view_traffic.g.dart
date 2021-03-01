// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'view_traffic.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ViewTraffic> _$viewTrafficSerializer = new _$ViewTrafficSerializer();

class _$ViewTrafficSerializer implements StructuredSerializer<ViewTraffic> {
  @override
  final Iterable<Type> types = const [ViewTraffic, _$ViewTraffic];
  @override
  final String wireName = 'ViewTraffic';

  @override
  Iterable<Object> serialize(Serializers serializers, ViewTraffic object,
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
    if (object.views != null) {
      result
        ..add('views')
        ..add(serializers.serialize(object.views,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Traffic)])));
    }
    return result;
  }

  @override
  ViewTraffic deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ViewTrafficBuilder();

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
        case 'views':
          result.views.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Traffic)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$ViewTraffic extends ViewTraffic {
  @override
  final int count;
  @override
  final int uniques;
  @override
  final BuiltList<Traffic> views;

  factory _$ViewTraffic([void Function(ViewTrafficBuilder) updates]) =>
      (new ViewTrafficBuilder()..update(updates)).build();

  _$ViewTraffic._({this.count, this.uniques, this.views}) : super._();

  @override
  ViewTraffic rebuild(void Function(ViewTrafficBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ViewTrafficBuilder toBuilder() => new ViewTrafficBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ViewTraffic &&
        count == other.count &&
        uniques == other.uniques &&
        views == other.views;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, count.hashCode), uniques.hashCode), views.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ViewTraffic')
          ..add('count', count)
          ..add('uniques', uniques)
          ..add('views', views))
        .toString();
  }
}

class ViewTrafficBuilder implements Builder<ViewTraffic, ViewTrafficBuilder> {
  _$ViewTraffic _$v;

  int _count;
  int get count => _$this._count;
  set count(int count) => _$this._count = count;

  int _uniques;
  int get uniques => _$this._uniques;
  set uniques(int uniques) => _$this._uniques = uniques;

  ListBuilder<Traffic> _views;
  ListBuilder<Traffic> get views =>
      _$this._views ??= new ListBuilder<Traffic>();
  set views(ListBuilder<Traffic> views) => _$this._views = views;

  ViewTrafficBuilder() {
    ViewTraffic._initializeBuilder(this);
  }

  ViewTrafficBuilder get _$this {
    if (_$v != null) {
      _count = _$v.count;
      _uniques = _$v.uniques;
      _views = _$v.views?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ViewTraffic other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ViewTraffic;
  }

  @override
  void update(void Function(ViewTrafficBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ViewTraffic build() {
    _$ViewTraffic _$result;
    try {
      _$result = _$v ??
          new _$ViewTraffic._(
              count: count, uniques: uniques, views: _views?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'views';
        _views?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ViewTraffic', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
