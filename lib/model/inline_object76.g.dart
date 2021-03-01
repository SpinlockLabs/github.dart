// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object76.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineObject76> _$inlineObject76Serializer =
    new _$InlineObject76Serializer();

class _$InlineObject76Serializer
    implements StructuredSerializer<InlineObject76> {
  @override
  final Iterable<Type> types = const [InlineObject76, _$InlineObject76];
  @override
  final String wireName = 'InlineObject76';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject76 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.teams != null) {
      result
        ..add('teams')
        ..add(serializers.serialize(object.teams,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    return result;
  }

  @override
  InlineObject76 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject76Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'teams':
          result.teams.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$InlineObject76 extends InlineObject76 {
  @override
  final BuiltList<String> teams;

  factory _$InlineObject76([void Function(InlineObject76Builder) updates]) =>
      (new InlineObject76Builder()..update(updates)).build();

  _$InlineObject76._({this.teams}) : super._();

  @override
  InlineObject76 rebuild(void Function(InlineObject76Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject76Builder toBuilder() =>
      new InlineObject76Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject76 && teams == other.teams;
  }

  @override
  int get hashCode {
    return $jf($jc(0, teams.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject76')..add('teams', teams))
        .toString();
  }
}

class InlineObject76Builder
    implements Builder<InlineObject76, InlineObject76Builder> {
  _$InlineObject76 _$v;

  ListBuilder<String> _teams;
  ListBuilder<String> get teams => _$this._teams ??= new ListBuilder<String>();
  set teams(ListBuilder<String> teams) => _$this._teams = teams;

  InlineObject76Builder() {
    InlineObject76._initializeBuilder(this);
  }

  InlineObject76Builder get _$this {
    if (_$v != null) {
      _teams = _$v.teams?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject76 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject76;
  }

  @override
  void update(void Function(InlineObject76Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject76 build() {
    _$InlineObject76 _$result;
    try {
      _$result = _$v ?? new _$InlineObject76._(teams: _teams?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'teams';
        _teams?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'InlineObject76', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
