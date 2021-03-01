// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'gist_comment.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GistComment> _$gistCommentSerializer = new _$GistCommentSerializer();

class _$GistCommentSerializer implements StructuredSerializer<GistComment> {
  @override
  final Iterable<Type> types = const [GistComment, _$GistComment];
  @override
  final String wireName = 'GistComment';

  @override
  Iterable<Object> serialize(Serializers serializers, GistComment object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.nodeId != null) {
      result
        ..add('node_id')
        ..add(serializers.serialize(object.nodeId,
            specifiedType: const FullType(String)));
    }
    if (object.url != null) {
      result
        ..add('url')
        ..add(serializers.serialize(object.url,
            specifiedType: const FullType(String)));
    }
    if (object.body != null) {
      result
        ..add('body')
        ..add(serializers.serialize(object.body,
            specifiedType: const FullType(String)));
    }
    if (object.user != null) {
      result
        ..add('user')
        ..add(serializers.serialize(object.user,
            specifiedType: const FullType(SimpleUser)));
    }
    if (object.createdAt != null) {
      result
        ..add('created_at')
        ..add(serializers.serialize(object.createdAt,
            specifiedType: const FullType(DateTime)));
    }
    if (object.updatedAt != null) {
      result
        ..add('updated_at')
        ..add(serializers.serialize(object.updatedAt,
            specifiedType: const FullType(DateTime)));
    }
    if (object.authorAssociation != null) {
      result
        ..add('author_association')
        ..add(serializers.serialize(object.authorAssociation,
            specifiedType: const FullType(AuthorAssociation)));
    }
    return result;
  }

  @override
  GistComment deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GistCommentBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'node_id':
          result.nodeId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'body':
          result.body = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'user':
          result.user.replace(serializers.deserialize(value,
              specifiedType: const FullType(SimpleUser)) as SimpleUser);
          break;
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'updated_at':
          result.updatedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'author_association':
          result.authorAssociation = serializers.deserialize(value,
                  specifiedType: const FullType(AuthorAssociation))
              as AuthorAssociation;
          break;
      }
    }

    return result.build();
  }
}

class _$GistComment extends GistComment {
  @override
  final int id;
  @override
  final String nodeId;
  @override
  final String url;
  @override
  final String body;
  @override
  final SimpleUser user;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final AuthorAssociation authorAssociation;

  factory _$GistComment([void Function(GistCommentBuilder) updates]) =>
      (new GistCommentBuilder()..update(updates)).build();

  _$GistComment._(
      {this.id,
      this.nodeId,
      this.url,
      this.body,
      this.user,
      this.createdAt,
      this.updatedAt,
      this.authorAssociation})
      : super._();

  @override
  GistComment rebuild(void Function(GistCommentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GistCommentBuilder toBuilder() => new GistCommentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GistComment &&
        id == other.id &&
        nodeId == other.nodeId &&
        url == other.url &&
        body == other.body &&
        user == other.user &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        authorAssociation == other.authorAssociation;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, id.hashCode), nodeId.hashCode),
                            url.hashCode),
                        body.hashCode),
                    user.hashCode),
                createdAt.hashCode),
            updatedAt.hashCode),
        authorAssociation.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GistComment')
          ..add('id', id)
          ..add('nodeId', nodeId)
          ..add('url', url)
          ..add('body', body)
          ..add('user', user)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('authorAssociation', authorAssociation))
        .toString();
  }
}

class GistCommentBuilder implements Builder<GistComment, GistCommentBuilder> {
  _$GistComment _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _nodeId;
  String get nodeId => _$this._nodeId;
  set nodeId(String nodeId) => _$this._nodeId = nodeId;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _body;
  String get body => _$this._body;
  set body(String body) => _$this._body = body;

  SimpleUserBuilder _user;
  SimpleUserBuilder get user => _$this._user ??= new SimpleUserBuilder();
  set user(SimpleUserBuilder user) => _$this._user = user;

  DateTime _createdAt;
  DateTime get createdAt => _$this._createdAt;
  set createdAt(DateTime createdAt) => _$this._createdAt = createdAt;

  DateTime _updatedAt;
  DateTime get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime updatedAt) => _$this._updatedAt = updatedAt;

  AuthorAssociation _authorAssociation;
  AuthorAssociation get authorAssociation => _$this._authorAssociation;
  set authorAssociation(AuthorAssociation authorAssociation) =>
      _$this._authorAssociation = authorAssociation;

  GistCommentBuilder() {
    GistComment._initializeBuilder(this);
  }

  GistCommentBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _nodeId = _$v.nodeId;
      _url = _$v.url;
      _body = _$v.body;
      _user = _$v.user?.toBuilder();
      _createdAt = _$v.createdAt;
      _updatedAt = _$v.updatedAt;
      _authorAssociation = _$v.authorAssociation;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GistComment other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GistComment;
  }

  @override
  void update(void Function(GistCommentBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GistComment build() {
    _$GistComment _$result;
    try {
      _$result = _$v ??
          new _$GistComment._(
              id: id,
              nodeId: nodeId,
              url: url,
              body: body,
              user: _user?.build(),
              createdAt: createdAt,
              updatedAt: updatedAt,
              authorAssociation: authorAssociation);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'user';
        _user?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GistComment', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
