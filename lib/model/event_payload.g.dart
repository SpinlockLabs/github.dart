// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'event_payload.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<EventPayload> _$eventPayloadSerializer =
    new _$EventPayloadSerializer();

class _$EventPayloadSerializer implements StructuredSerializer<EventPayload> {
  @override
  final Iterable<Type> types = const [EventPayload, _$EventPayload];
  @override
  final String wireName = 'EventPayload';

  @override
  Iterable<Object> serialize(Serializers serializers, EventPayload object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.action != null) {
      result
        ..add('action')
        ..add(serializers.serialize(object.action,
            specifiedType: const FullType(String)));
    }
    if (object.issue != null) {
      result
        ..add('issue')
        ..add(serializers.serialize(object.issue,
            specifiedType: const FullType(IssueSimple)));
    }
    if (object.comment != null) {
      result
        ..add('comment')
        ..add(serializers.serialize(object.comment,
            specifiedType: const FullType(IssueComment)));
    }
    if (object.pages != null) {
      result
        ..add('pages')
        ..add(serializers.serialize(object.pages,
            specifiedType: const FullType(
                BuiltList, const [const FullType(EventPayloadPages)])));
    }
    return result;
  }

  @override
  EventPayload deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EventPayloadBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'action':
          result.action = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'issue':
          result.issue.replace(serializers.deserialize(value,
              specifiedType: const FullType(IssueSimple)) as IssueSimple);
          break;
        case 'comment':
          result.comment.replace(serializers.deserialize(value,
              specifiedType: const FullType(IssueComment)) as IssueComment);
          break;
        case 'pages':
          result.pages.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(EventPayloadPages)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$EventPayload extends EventPayload {
  @override
  final String action;
  @override
  final IssueSimple issue;
  @override
  final IssueComment comment;
  @override
  final BuiltList<EventPayloadPages> pages;

  factory _$EventPayload([void Function(EventPayloadBuilder) updates]) =>
      (new EventPayloadBuilder()..update(updates)).build();

  _$EventPayload._({this.action, this.issue, this.comment, this.pages})
      : super._();

  @override
  EventPayload rebuild(void Function(EventPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EventPayloadBuilder toBuilder() => new EventPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EventPayload &&
        action == other.action &&
        issue == other.issue &&
        comment == other.comment &&
        pages == other.pages;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, action.hashCode), issue.hashCode), comment.hashCode),
        pages.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('EventPayload')
          ..add('action', action)
          ..add('issue', issue)
          ..add('comment', comment)
          ..add('pages', pages))
        .toString();
  }
}

class EventPayloadBuilder
    implements Builder<EventPayload, EventPayloadBuilder> {
  _$EventPayload _$v;

  String _action;
  String get action => _$this._action;
  set action(String action) => _$this._action = action;

  IssueSimpleBuilder _issue;
  IssueSimpleBuilder get issue => _$this._issue ??= new IssueSimpleBuilder();
  set issue(IssueSimpleBuilder issue) => _$this._issue = issue;

  IssueCommentBuilder _comment;
  IssueCommentBuilder get comment =>
      _$this._comment ??= new IssueCommentBuilder();
  set comment(IssueCommentBuilder comment) => _$this._comment = comment;

  ListBuilder<EventPayloadPages> _pages;
  ListBuilder<EventPayloadPages> get pages =>
      _$this._pages ??= new ListBuilder<EventPayloadPages>();
  set pages(ListBuilder<EventPayloadPages> pages) => _$this._pages = pages;

  EventPayloadBuilder() {
    EventPayload._initializeBuilder(this);
  }

  EventPayloadBuilder get _$this {
    if (_$v != null) {
      _action = _$v.action;
      _issue = _$v.issue?.toBuilder();
      _comment = _$v.comment?.toBuilder();
      _pages = _$v.pages?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EventPayload other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$EventPayload;
  }

  @override
  void update(void Function(EventPayloadBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$EventPayload build() {
    _$EventPayload _$result;
    try {
      _$result = _$v ??
          new _$EventPayload._(
              action: action,
              issue: _issue?.build(),
              comment: _comment?.build(),
              pages: _pages?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'issue';
        _issue?.build();
        _$failedField = 'comment';
        _comment?.build();
        _$failedField = 'pages';
        _pages?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'EventPayload', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
