// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'issue_event_milestone.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<IssueEventMilestone> _$issueEventMilestoneSerializer =
    new _$IssueEventMilestoneSerializer();

class _$IssueEventMilestoneSerializer
    implements StructuredSerializer<IssueEventMilestone> {
  @override
  final Iterable<Type> types = const [
    IssueEventMilestone,
    _$IssueEventMilestone
  ];
  @override
  final String wireName = 'IssueEventMilestone';

  @override
  Iterable<Object> serialize(
      Serializers serializers, IssueEventMilestone object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.title != null) {
      result
        ..add('title')
        ..add(serializers.serialize(object.title,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  IssueEventMilestone deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new IssueEventMilestoneBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$IssueEventMilestone extends IssueEventMilestone {
  @override
  final String title;

  factory _$IssueEventMilestone(
          [void Function(IssueEventMilestoneBuilder) updates]) =>
      (new IssueEventMilestoneBuilder()..update(updates)).build();

  _$IssueEventMilestone._({this.title}) : super._();

  @override
  IssueEventMilestone rebuild(
          void Function(IssueEventMilestoneBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IssueEventMilestoneBuilder toBuilder() =>
      new IssueEventMilestoneBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IssueEventMilestone && title == other.title;
  }

  @override
  int get hashCode {
    return $jf($jc(0, title.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('IssueEventMilestone')
          ..add('title', title))
        .toString();
  }
}

class IssueEventMilestoneBuilder
    implements Builder<IssueEventMilestone, IssueEventMilestoneBuilder> {
  _$IssueEventMilestone _$v;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  IssueEventMilestoneBuilder() {
    IssueEventMilestone._initializeBuilder(this);
  }

  IssueEventMilestoneBuilder get _$this {
    if (_$v != null) {
      _title = _$v.title;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IssueEventMilestone other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$IssueEventMilestone;
  }

  @override
  void update(void Function(IssueEventMilestoneBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$IssueEventMilestone build() {
    final _$result = _$v ?? new _$IssueEventMilestone._(title: title);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
