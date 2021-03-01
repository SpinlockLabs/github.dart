// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'issue_event_rename.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<IssueEventRename> _$issueEventRenameSerializer =
    new _$IssueEventRenameSerializer();

class _$IssueEventRenameSerializer
    implements StructuredSerializer<IssueEventRename> {
  @override
  final Iterable<Type> types = const [IssueEventRename, _$IssueEventRename];
  @override
  final String wireName = 'IssueEventRename';

  @override
  Iterable<Object> serialize(Serializers serializers, IssueEventRename object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.from != null) {
      result
        ..add('from')
        ..add(serializers.serialize(object.from,
            specifiedType: const FullType(String)));
    }
    if (object.to != null) {
      result
        ..add('to')
        ..add(serializers.serialize(object.to,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  IssueEventRename deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new IssueEventRenameBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'from':
          result.from = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'to':
          result.to = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$IssueEventRename extends IssueEventRename {
  @override
  final String from;
  @override
  final String to;

  factory _$IssueEventRename(
          [void Function(IssueEventRenameBuilder) updates]) =>
      (new IssueEventRenameBuilder()..update(updates)).build();

  _$IssueEventRename._({this.from, this.to}) : super._();

  @override
  IssueEventRename rebuild(void Function(IssueEventRenameBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IssueEventRenameBuilder toBuilder() =>
      new IssueEventRenameBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IssueEventRename && from == other.from && to == other.to;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, from.hashCode), to.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('IssueEventRename')
          ..add('from', from)
          ..add('to', to))
        .toString();
  }
}

class IssueEventRenameBuilder
    implements Builder<IssueEventRename, IssueEventRenameBuilder> {
  _$IssueEventRename _$v;

  String _from;
  String get from => _$this._from;
  set from(String from) => _$this._from = from;

  String _to;
  String get to => _$this._to;
  set to(String to) => _$this._to = to;

  IssueEventRenameBuilder() {
    IssueEventRename._initializeBuilder(this);
  }

  IssueEventRenameBuilder get _$this {
    if (_$v != null) {
      _from = _$v.from;
      _to = _$v.to;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IssueEventRename other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$IssueEventRename;
  }

  @override
  void update(void Function(IssueEventRenameBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$IssueEventRename build() {
    final _$result = _$v ?? new _$IssueEventRename._(from: from, to: to);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
