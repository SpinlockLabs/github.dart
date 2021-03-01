// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_response2006.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineResponse2006> _$inlineResponse2006Serializer =
    new _$InlineResponse2006Serializer();

class _$InlineResponse2006Serializer
    implements StructuredSerializer<InlineResponse2006> {
  @override
  final Iterable<Type> types = const [InlineResponse2006, _$InlineResponse2006];
  @override
  final String wireName = 'InlineResponse2006';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineResponse2006 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.totalCount != null) {
      result
        ..add('total_count')
        ..add(serializers.serialize(object.totalCount,
            specifiedType: const FullType(num)));
    }
    if (object.repositories != null) {
      result
        ..add('repositories')
        ..add(serializers.serialize(object.repositories,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Repository)])));
    }
    return result;
  }

  @override
  InlineResponse2006 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineResponse2006Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'total_count':
          result.totalCount = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num;
          break;
        case 'repositories':
          result.repositories.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Repository)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$InlineResponse2006 extends InlineResponse2006 {
  @override
  final num totalCount;
  @override
  final BuiltList<Repository> repositories;

  factory _$InlineResponse2006(
          [void Function(InlineResponse2006Builder) updates]) =>
      (new InlineResponse2006Builder()..update(updates)).build();

  _$InlineResponse2006._({this.totalCount, this.repositories}) : super._();

  @override
  InlineResponse2006 rebuild(
          void Function(InlineResponse2006Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineResponse2006Builder toBuilder() =>
      new InlineResponse2006Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineResponse2006 &&
        totalCount == other.totalCount &&
        repositories == other.repositories;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, totalCount.hashCode), repositories.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineResponse2006')
          ..add('totalCount', totalCount)
          ..add('repositories', repositories))
        .toString();
  }
}

class InlineResponse2006Builder
    implements Builder<InlineResponse2006, InlineResponse2006Builder> {
  _$InlineResponse2006 _$v;

  num _totalCount;
  num get totalCount => _$this._totalCount;
  set totalCount(num totalCount) => _$this._totalCount = totalCount;

  ListBuilder<Repository> _repositories;
  ListBuilder<Repository> get repositories =>
      _$this._repositories ??= new ListBuilder<Repository>();
  set repositories(ListBuilder<Repository> repositories) =>
      _$this._repositories = repositories;

  InlineResponse2006Builder() {
    InlineResponse2006._initializeBuilder(this);
  }

  InlineResponse2006Builder get _$this {
    if (_$v != null) {
      _totalCount = _$v.totalCount;
      _repositories = _$v.repositories?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineResponse2006 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineResponse2006;
  }

  @override
  void update(void Function(InlineResponse2006Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineResponse2006 build() {
    _$InlineResponse2006 _$result;
    try {
      _$result = _$v ??
          new _$InlineResponse2006._(
              totalCount: totalCount, repositories: _repositories?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'repositories';
        _repositories?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'InlineResponse2006', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
