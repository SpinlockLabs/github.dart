// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'content_traffic.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ContentTraffic> _$contentTrafficSerializer =
    new _$ContentTrafficSerializer();

class _$ContentTrafficSerializer
    implements StructuredSerializer<ContentTraffic> {
  @override
  final Iterable<Type> types = const [ContentTraffic, _$ContentTraffic];
  @override
  final String wireName = 'ContentTraffic';

  @override
  Iterable<Object> serialize(Serializers serializers, ContentTraffic object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.path != null) {
      result
        ..add('path')
        ..add(serializers.serialize(object.path,
            specifiedType: const FullType(String)));
    }
    if (object.title != null) {
      result
        ..add('title')
        ..add(serializers.serialize(object.title,
            specifiedType: const FullType(String)));
    }
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
    return result;
  }

  @override
  ContentTraffic deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ContentTrafficBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'path':
          result.path = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'count':
          result.count = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'uniques':
          result.uniques = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$ContentTraffic extends ContentTraffic {
  @override
  final String path;
  @override
  final String title;
  @override
  final int count;
  @override
  final int uniques;

  factory _$ContentTraffic([void Function(ContentTrafficBuilder) updates]) =>
      (new ContentTrafficBuilder()..update(updates)).build();

  _$ContentTraffic._({this.path, this.title, this.count, this.uniques})
      : super._();

  @override
  ContentTraffic rebuild(void Function(ContentTrafficBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ContentTrafficBuilder toBuilder() =>
      new ContentTrafficBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ContentTraffic &&
        path == other.path &&
        title == other.title &&
        count == other.count &&
        uniques == other.uniques;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, path.hashCode), title.hashCode), count.hashCode),
        uniques.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ContentTraffic')
          ..add('path', path)
          ..add('title', title)
          ..add('count', count)
          ..add('uniques', uniques))
        .toString();
  }
}

class ContentTrafficBuilder
    implements Builder<ContentTraffic, ContentTrafficBuilder> {
  _$ContentTraffic _$v;

  String _path;
  String get path => _$this._path;
  set path(String path) => _$this._path = path;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  int _count;
  int get count => _$this._count;
  set count(int count) => _$this._count = count;

  int _uniques;
  int get uniques => _$this._uniques;
  set uniques(int uniques) => _$this._uniques = uniques;

  ContentTrafficBuilder() {
    ContentTraffic._initializeBuilder(this);
  }

  ContentTrafficBuilder get _$this {
    if (_$v != null) {
      _path = _$v.path;
      _title = _$v.title;
      _count = _$v.count;
      _uniques = _$v.uniques;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ContentTraffic other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ContentTraffic;
  }

  @override
  void update(void Function(ContentTrafficBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ContentTraffic build() {
    final _$result = _$v ??
        new _$ContentTraffic._(
            path: path, title: title, count: count, uniques: uniques);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
