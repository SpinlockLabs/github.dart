// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'commit_activity.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CommitActivity> _$commitActivitySerializer =
    new _$CommitActivitySerializer();

class _$CommitActivitySerializer
    implements StructuredSerializer<CommitActivity> {
  @override
  final Iterable<Type> types = const [CommitActivity, _$CommitActivity];
  @override
  final String wireName = 'CommitActivity';

  @override
  Iterable<Object> serialize(Serializers serializers, CommitActivity object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.days != null) {
      result
        ..add('days')
        ..add(serializers.serialize(object.days,
            specifiedType:
                const FullType(BuiltList, const [const FullType(int)])));
    }
    if (object.total != null) {
      result
        ..add('total')
        ..add(serializers.serialize(object.total,
            specifiedType: const FullType(int)));
    }
    if (object.week != null) {
      result
        ..add('week')
        ..add(serializers.serialize(object.week,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  CommitActivity deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CommitActivityBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'days':
          result.days.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(int)]))
              as BuiltList<Object>);
          break;
        case 'total':
          result.total = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'week':
          result.week = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$CommitActivity extends CommitActivity {
  @override
  final BuiltList<int> days;
  @override
  final int total;
  @override
  final int week;

  factory _$CommitActivity([void Function(CommitActivityBuilder) updates]) =>
      (new CommitActivityBuilder()..update(updates)).build();

  _$CommitActivity._({this.days, this.total, this.week}) : super._();

  @override
  CommitActivity rebuild(void Function(CommitActivityBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CommitActivityBuilder toBuilder() =>
      new CommitActivityBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CommitActivity &&
        days == other.days &&
        total == other.total &&
        week == other.week;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, days.hashCode), total.hashCode), week.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CommitActivity')
          ..add('days', days)
          ..add('total', total)
          ..add('week', week))
        .toString();
  }
}

class CommitActivityBuilder
    implements Builder<CommitActivity, CommitActivityBuilder> {
  _$CommitActivity _$v;

  ListBuilder<int> _days;
  ListBuilder<int> get days => _$this._days ??= new ListBuilder<int>();
  set days(ListBuilder<int> days) => _$this._days = days;

  int _total;
  int get total => _$this._total;
  set total(int total) => _$this._total = total;

  int _week;
  int get week => _$this._week;
  set week(int week) => _$this._week = week;

  CommitActivityBuilder() {
    CommitActivity._initializeBuilder(this);
  }

  CommitActivityBuilder get _$this {
    if (_$v != null) {
      _days = _$v.days?.toBuilder();
      _total = _$v.total;
      _week = _$v.week;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CommitActivity other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CommitActivity;
  }

  @override
  void update(void Function(CommitActivityBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CommitActivity build() {
    _$CommitActivity _$result;
    try {
      _$result = _$v ??
          new _$CommitActivity._(
              days: _days?.build(), total: total, week: week);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'days';
        _days?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CommitActivity', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
