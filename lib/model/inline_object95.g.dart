// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object95.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineObject95> _$inlineObject95Serializer =
    new _$InlineObject95Serializer();

class _$InlineObject95Serializer
    implements StructuredSerializer<InlineObject95> {
  @override
  final Iterable<Type> types = const [InlineObject95, _$InlineObject95];
  @override
  final String wireName = 'InlineObject95';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject95 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.organization != null) {
      result
        ..add('organization')
        ..add(serializers.serialize(object.organization,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  InlineObject95 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject95Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'organization':
          result.organization = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$InlineObject95 extends InlineObject95 {
  @override
  final String organization;

  factory _$InlineObject95([void Function(InlineObject95Builder) updates]) =>
      (new InlineObject95Builder()..update(updates)).build();

  _$InlineObject95._({this.organization}) : super._();

  @override
  InlineObject95 rebuild(void Function(InlineObject95Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject95Builder toBuilder() =>
      new InlineObject95Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject95 && organization == other.organization;
  }

  @override
  int get hashCode {
    return $jf($jc(0, organization.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject95')
          ..add('organization', organization))
        .toString();
  }
}

class InlineObject95Builder
    implements Builder<InlineObject95, InlineObject95Builder> {
  _$InlineObject95 _$v;

  String _organization;
  String get organization => _$this._organization;
  set organization(String organization) => _$this._organization = organization;

  InlineObject95Builder() {
    InlineObject95._initializeBuilder(this);
  }

  InlineObject95Builder get _$this {
    if (_$v != null) {
      _organization = _$v.organization;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject95 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject95;
  }

  @override
  void update(void Function(InlineObject95Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject95 build() {
    final _$result = _$v ?? new _$InlineObject95._(organization: organization);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
