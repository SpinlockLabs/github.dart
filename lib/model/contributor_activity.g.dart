// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'contributor_activity.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ContributorActivity> _$contributorActivitySerializer =
    new _$ContributorActivitySerializer();

class _$ContributorActivitySerializer
    implements StructuredSerializer<ContributorActivity> {
  @override
  final Iterable<Type> types = const [
    ContributorActivity,
    _$ContributorActivity
  ];
  @override
  final String wireName = 'ContributorActivity';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ContributorActivity object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.author != null) {
      result
        ..add('author')
        ..add(serializers.serialize(object.author,
            specifiedType: const FullType(SimpleUser)));
    }
    if (object.total != null) {
      result
        ..add('total')
        ..add(serializers.serialize(object.total,
            specifiedType: const FullType(int)));
    }
    if (object.weeks != null) {
      result
        ..add('weeks')
        ..add(serializers.serialize(object.weeks,
            specifiedType: const FullType(
                BuiltList, const [const FullType(ContributorActivityWeeks)])));
    }
    return result;
  }

  @override
  ContributorActivity deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ContributorActivityBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'author':
          result.author.replace(serializers.deserialize(value,
              specifiedType: const FullType(SimpleUser)) as SimpleUser);
          break;
        case 'total':
          result.total = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'weeks':
          result.weeks.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(ContributorActivityWeeks)
              ])) as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$ContributorActivity extends ContributorActivity {
  @override
  final SimpleUser author;
  @override
  final int total;
  @override
  final BuiltList<ContributorActivityWeeks> weeks;

  factory _$ContributorActivity(
          [void Function(ContributorActivityBuilder) updates]) =>
      (new ContributorActivityBuilder()..update(updates)).build();

  _$ContributorActivity._({this.author, this.total, this.weeks}) : super._();

  @override
  ContributorActivity rebuild(
          void Function(ContributorActivityBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ContributorActivityBuilder toBuilder() =>
      new ContributorActivityBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ContributorActivity &&
        author == other.author &&
        total == other.total &&
        weeks == other.weeks;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, author.hashCode), total.hashCode), weeks.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ContributorActivity')
          ..add('author', author)
          ..add('total', total)
          ..add('weeks', weeks))
        .toString();
  }
}

class ContributorActivityBuilder
    implements Builder<ContributorActivity, ContributorActivityBuilder> {
  _$ContributorActivity _$v;

  SimpleUserBuilder _author;
  SimpleUserBuilder get author => _$this._author ??= new SimpleUserBuilder();
  set author(SimpleUserBuilder author) => _$this._author = author;

  int _total;
  int get total => _$this._total;
  set total(int total) => _$this._total = total;

  ListBuilder<ContributorActivityWeeks> _weeks;
  ListBuilder<ContributorActivityWeeks> get weeks =>
      _$this._weeks ??= new ListBuilder<ContributorActivityWeeks>();
  set weeks(ListBuilder<ContributorActivityWeeks> weeks) =>
      _$this._weeks = weeks;

  ContributorActivityBuilder() {
    ContributorActivity._initializeBuilder(this);
  }

  ContributorActivityBuilder get _$this {
    if (_$v != null) {
      _author = _$v.author?.toBuilder();
      _total = _$v.total;
      _weeks = _$v.weeks?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ContributorActivity other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ContributorActivity;
  }

  @override
  void update(void Function(ContributorActivityBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ContributorActivity build() {
    _$ContributorActivity _$result;
    try {
      _$result = _$v ??
          new _$ContributorActivity._(
              author: _author?.build(), total: total, weeks: _weeks?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'author';
        _author?.build();

        _$failedField = 'weeks';
        _weeks?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ContributorActivity', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
