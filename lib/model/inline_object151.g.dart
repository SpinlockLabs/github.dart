// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object151.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineObject151> _$inlineObject151Serializer =
    new _$InlineObject151Serializer();

class _$InlineObject151Serializer
    implements StructuredSerializer<InlineObject151> {
  @override
  final Iterable<Type> types = const [InlineObject151, _$InlineObject151];
  @override
  final String wireName = 'InlineObject151';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject151 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.newOwner != null) {
      result
        ..add('new_owner')
        ..add(serializers.serialize(object.newOwner,
            specifiedType: const FullType(String)));
    }
    if (object.teamIds != null) {
      result
        ..add('team_ids')
        ..add(serializers.serialize(object.teamIds,
            specifiedType:
                const FullType(BuiltList, const [const FullType(int)])));
    }
    return result;
  }

  @override
  InlineObject151 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject151Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'new_owner':
          result.newOwner = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'team_ids':
          result.teamIds.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(int)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$InlineObject151 extends InlineObject151 {
  @override
  final String newOwner;
  @override
  final BuiltList<int> teamIds;

  factory _$InlineObject151([void Function(InlineObject151Builder) updates]) =>
      (new InlineObject151Builder()..update(updates)).build();

  _$InlineObject151._({this.newOwner, this.teamIds}) : super._();

  @override
  InlineObject151 rebuild(void Function(InlineObject151Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject151Builder toBuilder() =>
      new InlineObject151Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject151 &&
        newOwner == other.newOwner &&
        teamIds == other.teamIds;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, newOwner.hashCode), teamIds.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject151')
          ..add('newOwner', newOwner)
          ..add('teamIds', teamIds))
        .toString();
  }
}

class InlineObject151Builder
    implements Builder<InlineObject151, InlineObject151Builder> {
  _$InlineObject151 _$v;

  String _newOwner;
  String get newOwner => _$this._newOwner;
  set newOwner(String newOwner) => _$this._newOwner = newOwner;

  ListBuilder<int> _teamIds;
  ListBuilder<int> get teamIds => _$this._teamIds ??= new ListBuilder<int>();
  set teamIds(ListBuilder<int> teamIds) => _$this._teamIds = teamIds;

  InlineObject151Builder() {
    InlineObject151._initializeBuilder(this);
  }

  InlineObject151Builder get _$this {
    if (_$v != null) {
      _newOwner = _$v.newOwner;
      _teamIds = _$v.teamIds?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject151 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject151;
  }

  @override
  void update(void Function(InlineObject151Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject151 build() {
    _$InlineObject151 _$result;
    try {
      _$result = _$v ??
          new _$InlineObject151._(
              newOwner: newOwner, teamIds: _teamIds?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'teamIds';
        _teamIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'InlineObject151', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
