// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object78.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineObject78> _$inlineObject78Serializer =
    new _$InlineObject78Serializer();

class _$InlineObject78Serializer
    implements StructuredSerializer<InlineObject78> {
  @override
  final Iterable<Type> types = const [InlineObject78, _$InlineObject78];
  @override
  final String wireName = 'InlineObject78';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject78 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.users != null) {
      result
        ..add('users')
        ..add(serializers.serialize(object.users,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    return result;
  }

  @override
  InlineObject78 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject78Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'users':
          result.users.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$InlineObject78 extends InlineObject78 {
  @override
  final BuiltList<String> users;

  factory _$InlineObject78([void Function(InlineObject78Builder) updates]) =>
      (new InlineObject78Builder()..update(updates)).build();

  _$InlineObject78._({this.users}) : super._();

  @override
  InlineObject78 rebuild(void Function(InlineObject78Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject78Builder toBuilder() =>
      new InlineObject78Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject78 && users == other.users;
  }

  @override
  int get hashCode {
    return $jf($jc(0, users.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject78')..add('users', users))
        .toString();
  }
}

class InlineObject78Builder
    implements Builder<InlineObject78, InlineObject78Builder> {
  _$InlineObject78 _$v;

  ListBuilder<String> _users;
  ListBuilder<String> get users => _$this._users ??= new ListBuilder<String>();
  set users(ListBuilder<String> users) => _$this._users = users;

  InlineObject78Builder() {
    InlineObject78._initializeBuilder(this);
  }

  InlineObject78Builder get _$this {
    if (_$v != null) {
      _users = _$v.users?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject78 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject78;
  }

  @override
  void update(void Function(InlineObject78Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject78 build() {
    _$InlineObject78 _$result;
    try {
      _$result = _$v ?? new _$InlineObject78._(users: _users?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'users';
        _users?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'InlineObject78', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
