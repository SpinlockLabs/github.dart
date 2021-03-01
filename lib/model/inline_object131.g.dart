// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object131.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineObject131> _$inlineObject131Serializer =
    new _$InlineObject131Serializer();

class _$InlineObject131Serializer
    implements StructuredSerializer<InlineObject131> {
  @override
  final Iterable<Type> types = const [InlineObject131, _$InlineObject131];
  @override
  final String wireName = 'InlineObject131';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject131 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.title != null) {
      result
        ..add('title')
        ..add(serializers.serialize(object.title,
            specifiedType: const FullType(String)));
    }
    if (object.head != null) {
      result
        ..add('head')
        ..add(serializers.serialize(object.head,
            specifiedType: const FullType(String)));
    }
    if (object.base != null) {
      result
        ..add('base')
        ..add(serializers.serialize(object.base,
            specifiedType: const FullType(String)));
    }
    if (object.body != null) {
      result
        ..add('body')
        ..add(serializers.serialize(object.body,
            specifiedType: const FullType(String)));
    }
    if (object.maintainerCanModify != null) {
      result
        ..add('maintainer_can_modify')
        ..add(serializers.serialize(object.maintainerCanModify,
            specifiedType: const FullType(bool)));
    }
    if (object.draft != null) {
      result
        ..add('draft')
        ..add(serializers.serialize(object.draft,
            specifiedType: const FullType(bool)));
    }
    if (object.issue != null) {
      result
        ..add('issue')
        ..add(serializers.serialize(object.issue,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  InlineObject131 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject131Builder();

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
        case 'head':
          result.head = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'base':
          result.base = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'body':
          result.body = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'maintainer_can_modify':
          result.maintainerCanModify = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'draft':
          result.draft = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'issue':
          result.issue = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$InlineObject131 extends InlineObject131 {
  @override
  final String title;
  @override
  final String head;
  @override
  final String base;
  @override
  final String body;
  @override
  final bool maintainerCanModify;
  @override
  final bool draft;
  @override
  final int issue;

  factory _$InlineObject131([void Function(InlineObject131Builder) updates]) =>
      (new InlineObject131Builder()..update(updates)).build();

  _$InlineObject131._(
      {this.title,
      this.head,
      this.base,
      this.body,
      this.maintainerCanModify,
      this.draft,
      this.issue})
      : super._();

  @override
  InlineObject131 rebuild(void Function(InlineObject131Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject131Builder toBuilder() =>
      new InlineObject131Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject131 &&
        title == other.title &&
        head == other.head &&
        base == other.base &&
        body == other.body &&
        maintainerCanModify == other.maintainerCanModify &&
        draft == other.draft &&
        issue == other.issue;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, title.hashCode), head.hashCode),
                        base.hashCode),
                    body.hashCode),
                maintainerCanModify.hashCode),
            draft.hashCode),
        issue.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject131')
          ..add('title', title)
          ..add('head', head)
          ..add('base', base)
          ..add('body', body)
          ..add('maintainerCanModify', maintainerCanModify)
          ..add('draft', draft)
          ..add('issue', issue))
        .toString();
  }
}

class InlineObject131Builder
    implements Builder<InlineObject131, InlineObject131Builder> {
  _$InlineObject131 _$v;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _head;
  String get head => _$this._head;
  set head(String head) => _$this._head = head;

  String _base;
  String get base => _$this._base;
  set base(String base) => _$this._base = base;

  String _body;
  String get body => _$this._body;
  set body(String body) => _$this._body = body;

  bool _maintainerCanModify;
  bool get maintainerCanModify => _$this._maintainerCanModify;
  set maintainerCanModify(bool maintainerCanModify) =>
      _$this._maintainerCanModify = maintainerCanModify;

  bool _draft;
  bool get draft => _$this._draft;
  set draft(bool draft) => _$this._draft = draft;

  int _issue;
  int get issue => _$this._issue;
  set issue(int issue) => _$this._issue = issue;

  InlineObject131Builder() {
    InlineObject131._initializeBuilder(this);
  }

  InlineObject131Builder get _$this {
    if (_$v != null) {
      _title = _$v.title;
      _head = _$v.head;
      _base = _$v.base;
      _body = _$v.body;
      _maintainerCanModify = _$v.maintainerCanModify;
      _draft = _$v.draft;
      _issue = _$v.issue;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject131 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject131;
  }

  @override
  void update(void Function(InlineObject131Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject131 build() {
    final _$result = _$v ??
        new _$InlineObject131._(
            title: title,
            head: head,
            base: base,
            body: body,
            maintainerCanModify: maintainerCanModify,
            draft: draft,
            issue: issue);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
