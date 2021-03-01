// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object79.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineObject79> _$inlineObject79Serializer =
    new _$InlineObject79Serializer();

class _$InlineObject79Serializer
    implements StructuredSerializer<InlineObject79> {
  @override
  final Iterable<Type> types = const [InlineObject79, _$InlineObject79];
  @override
  final String wireName = 'InlineObject79';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject79 object,
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
  InlineObject79 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject79Builder();

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

class _$InlineObject79 extends InlineObject79 {
  @override
  final BuiltList<String> users;

  factory _$InlineObject79([void Function(InlineObject79Builder) updates]) =>
      (new InlineObject79Builder()..update(updates)).build();

  _$InlineObject79._({this.users}) : super._();

  @override
  InlineObject79 rebuild(void Function(InlineObject79Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject79Builder toBuilder() =>
      new InlineObject79Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject79 && users == other.users;
  }

  @override
  int get hashCode {
    return $jf($jc(0, users.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject79')..add('users', users))
        .toString();
  }
}

class InlineObject79Builder
    implements Builder<InlineObject79, InlineObject79Builder> {
  _$InlineObject79 _$v;

  ListBuilder<String> _users;
  ListBuilder<String> get users => _$this._users ??= new ListBuilder<String>();
  set users(ListBuilder<String> users) => _$this._users = users;

  InlineObject79Builder() {
    InlineObject79._initializeBuilder(this);
  }

  InlineObject79Builder get _$this {
    if (_$v != null) {
      _users = _$v.users?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject79 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject79;
  }

  @override
  void update(void Function(InlineObject79Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject79 build() {
    _$InlineObject79 _$result;
    try {
      _$result = _$v ?? new _$InlineObject79._(users: _users?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'users';
        _users?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'InlineObject79', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
