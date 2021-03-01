// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object72.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineObject72> _$inlineObject72Serializer =
    new _$InlineObject72Serializer();

class _$InlineObject72Serializer
    implements StructuredSerializer<InlineObject72> {
  @override
  final Iterable<Type> types = const [InlineObject72, _$InlineObject72];
  @override
  final String wireName = 'InlineObject72';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject72 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.apps != null) {
      result
        ..add('apps')
        ..add(serializers.serialize(object.apps,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    return result;
  }

  @override
  InlineObject72 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject72Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'apps':
          result.apps.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$InlineObject72 extends InlineObject72 {
  @override
  final BuiltList<String> apps;

  factory _$InlineObject72([void Function(InlineObject72Builder) updates]) =>
      (new InlineObject72Builder()..update(updates)).build();

  _$InlineObject72._({this.apps}) : super._();

  @override
  InlineObject72 rebuild(void Function(InlineObject72Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject72Builder toBuilder() =>
      new InlineObject72Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject72 && apps == other.apps;
  }

  @override
  int get hashCode {
    return $jf($jc(0, apps.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject72')..add('apps', apps))
        .toString();
  }
}

class InlineObject72Builder
    implements Builder<InlineObject72, InlineObject72Builder> {
  _$InlineObject72 _$v;

  ListBuilder<String> _apps;
  ListBuilder<String> get apps => _$this._apps ??= new ListBuilder<String>();
  set apps(ListBuilder<String> apps) => _$this._apps = apps;

  InlineObject72Builder() {
    InlineObject72._initializeBuilder(this);
  }

  InlineObject72Builder get _$this {
    if (_$v != null) {
      _apps = _$v.apps?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject72 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject72;
  }

  @override
  void update(void Function(InlineObject72Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject72 build() {
    _$InlineObject72 _$result;
    try {
      _$result = _$v ?? new _$InlineObject72._(apps: _apps?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'apps';
        _apps?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'InlineObject72', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
