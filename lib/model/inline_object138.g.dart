// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object138.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineObject138> _$inlineObject138Serializer =
    new _$InlineObject138Serializer();

class _$InlineObject138Serializer
    implements StructuredSerializer<InlineObject138> {
  @override
  final Iterable<Type> types = const [InlineObject138, _$InlineObject138];
  @override
  final String wireName = 'InlineObject138';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject138 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.reviewers != null) {
      result
        ..add('reviewers')
        ..add(serializers.serialize(object.reviewers,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.teamReviewers != null) {
      result
        ..add('team_reviewers')
        ..add(serializers.serialize(object.teamReviewers,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    return result;
  }

  @override
  InlineObject138 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject138Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'reviewers':
          result.reviewers.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'team_reviewers':
          result.teamReviewers.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$InlineObject138 extends InlineObject138 {
  @override
  final BuiltList<String> reviewers;
  @override
  final BuiltList<String> teamReviewers;

  factory _$InlineObject138([void Function(InlineObject138Builder) updates]) =>
      (new InlineObject138Builder()..update(updates)).build();

  _$InlineObject138._({this.reviewers, this.teamReviewers}) : super._();

  @override
  InlineObject138 rebuild(void Function(InlineObject138Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject138Builder toBuilder() =>
      new InlineObject138Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject138 &&
        reviewers == other.reviewers &&
        teamReviewers == other.teamReviewers;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, reviewers.hashCode), teamReviewers.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject138')
          ..add('reviewers', reviewers)
          ..add('teamReviewers', teamReviewers))
        .toString();
  }
}

class InlineObject138Builder
    implements Builder<InlineObject138, InlineObject138Builder> {
  _$InlineObject138 _$v;

  ListBuilder<String> _reviewers;
  ListBuilder<String> get reviewers =>
      _$this._reviewers ??= new ListBuilder<String>();
  set reviewers(ListBuilder<String> reviewers) => _$this._reviewers = reviewers;

  ListBuilder<String> _teamReviewers;
  ListBuilder<String> get teamReviewers =>
      _$this._teamReviewers ??= new ListBuilder<String>();
  set teamReviewers(ListBuilder<String> teamReviewers) =>
      _$this._teamReviewers = teamReviewers;

  InlineObject138Builder() {
    InlineObject138._initializeBuilder(this);
  }

  InlineObject138Builder get _$this {
    if (_$v != null) {
      _reviewers = _$v.reviewers?.toBuilder();
      _teamReviewers = _$v.teamReviewers?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject138 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject138;
  }

  @override
  void update(void Function(InlineObject138Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject138 build() {
    _$InlineObject138 _$result;
    try {
      _$result = _$v ??
          new _$InlineObject138._(
              reviewers: _reviewers?.build(),
              teamReviewers: _teamReviewers?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'reviewers';
        _reviewers?.build();
        _$failedField = 'teamReviewers';
        _teamReviewers?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'InlineObject138', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
