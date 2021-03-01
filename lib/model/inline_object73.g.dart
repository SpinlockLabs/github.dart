// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object73.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineObject73> _$inlineObject73Serializer =
    new _$InlineObject73Serializer();

class _$InlineObject73Serializer
    implements StructuredSerializer<InlineObject73> {
  @override
  final Iterable<Type> types = const [InlineObject73, _$InlineObject73];
  @override
  final String wireName = 'InlineObject73';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject73 object,
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
  InlineObject73 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject73Builder();

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

class _$InlineObject73 extends InlineObject73 {
  @override
  final BuiltList<String> apps;

  factory _$InlineObject73([void Function(InlineObject73Builder) updates]) =>
      (new InlineObject73Builder()..update(updates)).build();

  _$InlineObject73._({this.apps}) : super._();

  @override
  InlineObject73 rebuild(void Function(InlineObject73Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject73Builder toBuilder() =>
      new InlineObject73Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject73 && apps == other.apps;
  }

  @override
  int get hashCode {
    return $jf($jc(0, apps.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject73')..add('apps', apps))
        .toString();
  }
}

class InlineObject73Builder
    implements Builder<InlineObject73, InlineObject73Builder> {
  _$InlineObject73 _$v;

  ListBuilder<String> _apps;
  ListBuilder<String> get apps => _$this._apps ??= new ListBuilder<String>();
  set apps(ListBuilder<String> apps) => _$this._apps = apps;

  InlineObject73Builder() {
    InlineObject73._initializeBuilder(this);
  }

  InlineObject73Builder get _$this {
    if (_$v != null) {
      _apps = _$v.apps?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject73 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject73;
  }

  @override
  void update(void Function(InlineObject73Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject73 build() {
    _$InlineObject73 _$result;
    try {
      _$result = _$v ?? new _$InlineObject73._(apps: _apps?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'apps';
        _apps?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'InlineObject73', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
