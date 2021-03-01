// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_response2001.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineResponse2001> _$inlineResponse2001Serializer =
    new _$InlineResponse2001Serializer();

class _$InlineResponse2001Serializer
    implements StructuredSerializer<InlineResponse2001> {
  @override
  final Iterable<Type> types = const [InlineResponse2001, _$InlineResponse2001];
  @override
  final String wireName = 'InlineResponse2001';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineResponse2001 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.totalCount != null) {
      result
        ..add('total_count')
        ..add(serializers.serialize(object.totalCount,
            specifiedType: const FullType(num)));
    }
    if (object.organizations != null) {
      result
        ..add('organizations')
        ..add(serializers.serialize(object.organizations,
            specifiedType: const FullType(
                BuiltList, const [const FullType(OrganizationSimple)])));
    }
    return result;
  }

  @override
  InlineResponse2001 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineResponse2001Builder();

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
        case 'organizations':
          result.organizations.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(OrganizationSimple)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$InlineResponse2001 extends InlineResponse2001 {
  @override
  final num totalCount;
  @override
  final BuiltList<OrganizationSimple> organizations;

  factory _$InlineResponse2001(
          [void Function(InlineResponse2001Builder) updates]) =>
      (new InlineResponse2001Builder()..update(updates)).build();

  _$InlineResponse2001._({this.totalCount, this.organizations}) : super._();

  @override
  InlineResponse2001 rebuild(
          void Function(InlineResponse2001Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineResponse2001Builder toBuilder() =>
      new InlineResponse2001Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineResponse2001 &&
        totalCount == other.totalCount &&
        organizations == other.organizations;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, totalCount.hashCode), organizations.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineResponse2001')
          ..add('totalCount', totalCount)
          ..add('organizations', organizations))
        .toString();
  }
}

class InlineResponse2001Builder
    implements Builder<InlineResponse2001, InlineResponse2001Builder> {
  _$InlineResponse2001 _$v;

  num _totalCount;
  num get totalCount => _$this._totalCount;
  set totalCount(num totalCount) => _$this._totalCount = totalCount;

  ListBuilder<OrganizationSimple> _organizations;
  ListBuilder<OrganizationSimple> get organizations =>
      _$this._organizations ??= new ListBuilder<OrganizationSimple>();
  set organizations(ListBuilder<OrganizationSimple> organizations) =>
      _$this._organizations = organizations;

  InlineResponse2001Builder() {
    InlineResponse2001._initializeBuilder(this);
  }

  InlineResponse2001Builder get _$this {
    if (_$v != null) {
      _totalCount = _$v.totalCount;
      _organizations = _$v.organizations?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineResponse2001 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineResponse2001;
  }

  @override
  void update(void Function(InlineResponse2001Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineResponse2001 build() {
    _$InlineResponse2001 _$result;
    try {
      _$result = _$v ??
          new _$InlineResponse2001._(
              totalCount: totalCount, organizations: _organizations?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'organizations';
        _organizations?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'InlineResponse2001', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
