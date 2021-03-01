// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object77.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineObject77> _$inlineObject77Serializer =
    new _$InlineObject77Serializer();

class _$InlineObject77Serializer
    implements StructuredSerializer<InlineObject77> {
  @override
  final Iterable<Type> types = const [InlineObject77, _$InlineObject77];
  @override
  final String wireName = 'InlineObject77';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject77 object,
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
  InlineObject77 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject77Builder();

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

class _$InlineObject77 extends InlineObject77 {
  @override
  final BuiltList<String> users;

  factory _$InlineObject77([void Function(InlineObject77Builder) updates]) =>
      (new InlineObject77Builder()..update(updates)).build();

  _$InlineObject77._({this.users}) : super._();

  @override
  InlineObject77 rebuild(void Function(InlineObject77Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject77Builder toBuilder() =>
      new InlineObject77Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject77 && users == other.users;
  }

  @override
  int get hashCode {
    return $jf($jc(0, users.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject77')..add('users', users))
        .toString();
  }
}

class InlineObject77Builder
    implements Builder<InlineObject77, InlineObject77Builder> {
  _$InlineObject77 _$v;

  ListBuilder<String> _users;
  ListBuilder<String> get users => _$this._users ??= new ListBuilder<String>();
  set users(ListBuilder<String> users) => _$this._users = users;

  InlineObject77Builder() {
    InlineObject77._initializeBuilder(this);
  }

  InlineObject77Builder get _$this {
    if (_$v != null) {
      _users = _$v.users?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject77 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject77;
  }

  @override
  void update(void Function(InlineObject77Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject77 build() {
    _$InlineObject77 _$result;
    try {
      _$result = _$v ?? new _$InlineObject77._(users: _users?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'users';
        _users?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'InlineObject77', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
