// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'issue_event_label.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<IssueEventLabel> _$issueEventLabelSerializer =
    new _$IssueEventLabelSerializer();

class _$IssueEventLabelSerializer
    implements StructuredSerializer<IssueEventLabel> {
  @override
  final Iterable<Type> types = const [IssueEventLabel, _$IssueEventLabel];
  @override
  final String wireName = 'IssueEventLabel';

  @override
  Iterable<Object> serialize(Serializers serializers, IssueEventLabel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.color != null) {
      result
        ..add('color')
        ..add(serializers.serialize(object.color,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  IssueEventLabel deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new IssueEventLabelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'color':
          result.color = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$IssueEventLabel extends IssueEventLabel {
  @override
  final String name;
  @override
  final String color;

  factory _$IssueEventLabel([void Function(IssueEventLabelBuilder) updates]) =>
      (new IssueEventLabelBuilder()..update(updates)).build();

  _$IssueEventLabel._({this.name, this.color}) : super._();

  @override
  IssueEventLabel rebuild(void Function(IssueEventLabelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IssueEventLabelBuilder toBuilder() =>
      new IssueEventLabelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IssueEventLabel &&
        name == other.name &&
        color == other.color;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, name.hashCode), color.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('IssueEventLabel')
          ..add('name', name)
          ..add('color', color))
        .toString();
  }
}

class IssueEventLabelBuilder
    implements Builder<IssueEventLabel, IssueEventLabelBuilder> {
  _$IssueEventLabel _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _color;
  String get color => _$this._color;
  set color(String color) => _$this._color = color;

  IssueEventLabelBuilder() {
    IssueEventLabel._initializeBuilder(this);
  }

  IssueEventLabelBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _color = _$v.color;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IssueEventLabel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$IssueEventLabel;
  }

  @override
  void update(void Function(IssueEventLabelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$IssueEventLabel build() {
    final _$result = _$v ?? new _$IssueEventLabel._(name: name, color: color);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
