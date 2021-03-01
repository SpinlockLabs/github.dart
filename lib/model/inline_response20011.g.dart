// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_response20011.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineResponse20011> _$inlineResponse20011Serializer =
    new _$InlineResponse20011Serializer();

class _$InlineResponse20011Serializer
    implements StructuredSerializer<InlineResponse20011> {
  @override
  final Iterable<Type> types = const [
    InlineResponse20011,
    _$InlineResponse20011
  ];
  @override
  final String wireName = 'InlineResponse20011';

  @override
  Iterable<Object> serialize(
      Serializers serializers, InlineResponse20011 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.totalCount != null) {
      result
        ..add('total_count')
        ..add(serializers.serialize(object.totalCount,
            specifiedType: const FullType(int)));
    }
    if (object.installations != null) {
      result
        ..add('installations')
        ..add(serializers.serialize(object.installations,
            specifiedType: const FullType(
                BuiltList, const [const FullType(Installation)])));
    }
    return result;
  }

  @override
  InlineResponse20011 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineResponse20011Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'total_count':
          result.totalCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'installations':
          result.installations.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Installation)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$InlineResponse20011 extends InlineResponse20011 {
  @override
  final int totalCount;
  @override
  final BuiltList<Installation> installations;

  factory _$InlineResponse20011(
          [void Function(InlineResponse20011Builder) updates]) =>
      (new InlineResponse20011Builder()..update(updates)).build();

  _$InlineResponse20011._({this.totalCount, this.installations}) : super._();

  @override
  InlineResponse20011 rebuild(
          void Function(InlineResponse20011Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineResponse20011Builder toBuilder() =>
      new InlineResponse20011Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineResponse20011 &&
        totalCount == other.totalCount &&
        installations == other.installations;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, totalCount.hashCode), installations.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineResponse20011')
          ..add('totalCount', totalCount)
          ..add('installations', installations))
        .toString();
  }
}

class InlineResponse20011Builder
    implements Builder<InlineResponse20011, InlineResponse20011Builder> {
  _$InlineResponse20011 _$v;

  int _totalCount;
  int get totalCount => _$this._totalCount;
  set totalCount(int totalCount) => _$this._totalCount = totalCount;

  ListBuilder<Installation> _installations;
  ListBuilder<Installation> get installations =>
      _$this._installations ??= new ListBuilder<Installation>();
  set installations(ListBuilder<Installation> installations) =>
      _$this._installations = installations;

  InlineResponse20011Builder() {
    InlineResponse20011._initializeBuilder(this);
  }

  InlineResponse20011Builder get _$this {
    if (_$v != null) {
      _totalCount = _$v.totalCount;
      _installations = _$v.installations?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineResponse20011 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineResponse20011;
  }

  @override
  void update(void Function(InlineResponse20011Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineResponse20011 build() {
    _$InlineResponse20011 _$result;
    try {
      _$result = _$v ??
          new _$InlineResponse20011._(
              totalCount: totalCount, installations: _installations?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'installations';
        _installations?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'InlineResponse20011', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
