// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'review_comment.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ReviewCommentSideEnum _$reviewCommentSideEnum_LEFT =
    const ReviewCommentSideEnum._('LEFT');
const ReviewCommentSideEnum _$reviewCommentSideEnum_RIGHT =
    const ReviewCommentSideEnum._('RIGHT');

ReviewCommentSideEnum _$reviewCommentSideEnumValueOf(String name) {
  switch (name) {
    case 'LEFT':
      return _$reviewCommentSideEnum_LEFT;
    case 'RIGHT':
      return _$reviewCommentSideEnum_RIGHT;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<ReviewCommentSideEnum> _$reviewCommentSideEnumValues =
    new BuiltSet<ReviewCommentSideEnum>(const <ReviewCommentSideEnum>[
  _$reviewCommentSideEnum_LEFT,
  _$reviewCommentSideEnum_RIGHT,
]);

const ReviewCommentStartSideEnum _$reviewCommentStartSideEnum_LEFT =
    const ReviewCommentStartSideEnum._('LEFT');
const ReviewCommentStartSideEnum _$reviewCommentStartSideEnum_RIGHT =
    const ReviewCommentStartSideEnum._('RIGHT');

ReviewCommentStartSideEnum _$reviewCommentStartSideEnumValueOf(String name) {
  switch (name) {
    case 'LEFT':
      return _$reviewCommentStartSideEnum_LEFT;
    case 'RIGHT':
      return _$reviewCommentStartSideEnum_RIGHT;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<ReviewCommentStartSideEnum> _$reviewCommentStartSideEnumValues =
    new BuiltSet<ReviewCommentStartSideEnum>(const <ReviewCommentStartSideEnum>[
  _$reviewCommentStartSideEnum_LEFT,
  _$reviewCommentStartSideEnum_RIGHT,
]);

Serializer<ReviewComment> _$reviewCommentSerializer =
    new _$ReviewCommentSerializer();
Serializer<ReviewCommentSideEnum> _$reviewCommentSideEnumSerializer =
    new _$ReviewCommentSideEnumSerializer();
Serializer<ReviewCommentStartSideEnum> _$reviewCommentStartSideEnumSerializer =
    new _$ReviewCommentStartSideEnumSerializer();

class _$ReviewCommentSerializer implements StructuredSerializer<ReviewComment> {
  @override
  final Iterable<Type> types = const [ReviewComment, _$ReviewComment];
  @override
  final String wireName = 'ReviewComment';

  @override
  Iterable<Object> serialize(Serializers serializers, ReviewComment object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.url != null) {
      result
        ..add('url')
        ..add(serializers.serialize(object.url,
            specifiedType: const FullType(String)));
    }
    if (object.pullRequestReviewId != null) {
      result
        ..add('pull_request_review_id')
        ..add(serializers.serialize(object.pullRequestReviewId,
            specifiedType: const FullType(int)));
    }
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
    if (object.diffHunk != null) {
      result
        ..add('diff_hunk')
        ..add(serializers.serialize(object.diffHunk,
            specifiedType: const FullType(String)));
    }
    if (object.path != null) {
      result
        ..add('path')
        ..add(serializers.serialize(object.path,
            specifiedType: const FullType(String)));
    }
    if (object.position != null) {
      result
        ..add('position')
        ..add(serializers.serialize(object.position,
            specifiedType: const FullType(int)));
    }
    if (object.originalPosition != null) {
      result
        ..add('original_position')
        ..add(serializers.serialize(object.originalPosition,
            specifiedType: const FullType(int)));
    }
    if (object.commitId != null) {
      result
        ..add('commit_id')
        ..add(serializers.serialize(object.commitId,
            specifiedType: const FullType(String)));
    }
    if (object.originalCommitId != null) {
      result
        ..add('original_commit_id')
        ..add(serializers.serialize(object.originalCommitId,
            specifiedType: const FullType(String)));
    }
    if (object.inReplyToId != null) {
      result
        ..add('in_reply_to_id')
        ..add(serializers.serialize(object.inReplyToId,
            specifiedType: const FullType(int)));
    }
    if (object.user != null) {
      result
        ..add('user')
        ..add(serializers.serialize(object.user,
            specifiedType: const FullType(SimpleUser)));
    }
    if (object.body != null) {
      result
        ..add('body')
        ..add(serializers.serialize(object.body,
            specifiedType: const FullType(String)));
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
    if (object.htmlUrl != null) {
      result
        ..add('html_url')
        ..add(serializers.serialize(object.htmlUrl,
            specifiedType: const FullType(String)));
    }
    if (object.pullRequestUrl != null) {
      result
        ..add('pull_request_url')
        ..add(serializers.serialize(object.pullRequestUrl,
            specifiedType: const FullType(String)));
    }
    if (object.authorAssociation != null) {
      result
        ..add('author_association')
        ..add(serializers.serialize(object.authorAssociation,
            specifiedType: const FullType(AuthorAssociation)));
    }
    if (object.links != null) {
      result
        ..add('_links')
        ..add(serializers.serialize(object.links,
            specifiedType: const FullType(ReviewCommentLinks)));
    }
    if (object.bodyText != null) {
      result
        ..add('body_text')
        ..add(serializers.serialize(object.bodyText,
            specifiedType: const FullType(String)));
    }
    if (object.bodyHtml != null) {
      result
        ..add('body_html')
        ..add(serializers.serialize(object.bodyHtml,
            specifiedType: const FullType(String)));
    }
    if (object.side != null) {
      result
        ..add('side')
        ..add(serializers.serialize(object.side,
            specifiedType: const FullType(ReviewCommentSideEnum)));
    }
    if (object.startSide != null) {
      result
        ..add('start_side')
        ..add(serializers.serialize(object.startSide,
            specifiedType: const FullType(ReviewCommentStartSideEnum)));
    }
    if (object.line != null) {
      result
        ..add('line')
        ..add(serializers.serialize(object.line,
            specifiedType: const FullType(int)));
    }
    if (object.originalLine != null) {
      result
        ..add('original_line')
        ..add(serializers.serialize(object.originalLine,
            specifiedType: const FullType(int)));
    }
    if (object.startLine != null) {
      result
        ..add('start_line')
        ..add(serializers.serialize(object.startLine,
            specifiedType: const FullType(int)));
    }
    if (object.originalStartLine != null) {
      result
        ..add('original_start_line')
        ..add(serializers.serialize(object.originalStartLine,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  ReviewComment deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ReviewCommentBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'pull_request_review_id':
          result.pullRequestReviewId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'node_id':
          result.nodeId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'diff_hunk':
          result.diffHunk = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'path':
          result.path = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'position':
          result.position = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'original_position':
          result.originalPosition = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'commit_id':
          result.commitId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'original_commit_id':
          result.originalCommitId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'in_reply_to_id':
          result.inReplyToId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'user':
          result.user.replace(serializers.deserialize(value,
              specifiedType: const FullType(SimpleUser)) as SimpleUser);
          break;
        case 'body':
          result.body = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'updated_at':
          result.updatedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'html_url':
          result.htmlUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'pull_request_url':
          result.pullRequestUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'author_association':
          result.authorAssociation = serializers.deserialize(value,
                  specifiedType: const FullType(AuthorAssociation))
              as AuthorAssociation;
          break;
        case '_links':
          result.links.replace(serializers.deserialize(value,
                  specifiedType: const FullType(ReviewCommentLinks))
              as ReviewCommentLinks);
          break;
        case 'body_text':
          result.bodyText = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'body_html':
          result.bodyHtml = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'side':
          result.side = serializers.deserialize(value,
                  specifiedType: const FullType(ReviewCommentSideEnum))
              as ReviewCommentSideEnum;
          break;
        case 'start_side':
          result.startSide = serializers.deserialize(value,
                  specifiedType: const FullType(ReviewCommentStartSideEnum))
              as ReviewCommentStartSideEnum;
          break;
        case 'line':
          result.line = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'original_line':
          result.originalLine = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'start_line':
          result.startLine = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'original_start_line':
          result.originalStartLine = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$ReviewCommentSideEnumSerializer
    implements PrimitiveSerializer<ReviewCommentSideEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'LEFT': 'LEFT',
    'RIGHT': 'RIGHT',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'LEFT': 'LEFT',
    'RIGHT': 'RIGHT',
  };

  @override
  final Iterable<Type> types = const <Type>[ReviewCommentSideEnum];
  @override
  final String wireName = 'ReviewCommentSideEnum';

  @override
  Object serialize(Serializers serializers, ReviewCommentSideEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ReviewCommentSideEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ReviewCommentSideEnum.valueOf(
          _fromWire[serialized] ?? serialized as String);
}

class _$ReviewCommentStartSideEnumSerializer
    implements PrimitiveSerializer<ReviewCommentStartSideEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'LEFT': 'LEFT',
    'RIGHT': 'RIGHT',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'LEFT': 'LEFT',
    'RIGHT': 'RIGHT',
  };

  @override
  final Iterable<Type> types = const <Type>[ReviewCommentStartSideEnum];
  @override
  final String wireName = 'ReviewCommentStartSideEnum';

  @override
  Object serialize(Serializers serializers, ReviewCommentStartSideEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ReviewCommentStartSideEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ReviewCommentStartSideEnum.valueOf(
          _fromWire[serialized] ?? serialized as String);
}

class _$ReviewComment extends ReviewComment {
  @override
  final String url;
  @override
  final int pullRequestReviewId;
  @override
  final int id;
  @override
  final String nodeId;
  @override
  final String diffHunk;
  @override
  final String path;
  @override
  final int position;
  @override
  final int originalPosition;
  @override
  final String commitId;
  @override
  final String originalCommitId;
  @override
  final int inReplyToId;
  @override
  final SimpleUser user;
  @override
  final String body;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final String htmlUrl;
  @override
  final String pullRequestUrl;
  @override
  final AuthorAssociation authorAssociation;
  @override
  final ReviewCommentLinks links;
  @override
  final String bodyText;
  @override
  final String bodyHtml;
  @override
  final ReviewCommentSideEnum side;
  @override
  final ReviewCommentStartSideEnum startSide;
  @override
  final int line;
  @override
  final int originalLine;
  @override
  final int startLine;
  @override
  final int originalStartLine;

  factory _$ReviewComment([void Function(ReviewCommentBuilder) updates]) =>
      (new ReviewCommentBuilder()..update(updates)).build();

  _$ReviewComment._(
      {this.url,
      this.pullRequestReviewId,
      this.id,
      this.nodeId,
      this.diffHunk,
      this.path,
      this.position,
      this.originalPosition,
      this.commitId,
      this.originalCommitId,
      this.inReplyToId,
      this.user,
      this.body,
      this.createdAt,
      this.updatedAt,
      this.htmlUrl,
      this.pullRequestUrl,
      this.authorAssociation,
      this.links,
      this.bodyText,
      this.bodyHtml,
      this.side,
      this.startSide,
      this.line,
      this.originalLine,
      this.startLine,
      this.originalStartLine})
      : super._();

  @override
  ReviewComment rebuild(void Function(ReviewCommentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReviewCommentBuilder toBuilder() => new ReviewCommentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReviewComment &&
        url == other.url &&
        pullRequestReviewId == other.pullRequestReviewId &&
        id == other.id &&
        nodeId == other.nodeId &&
        diffHunk == other.diffHunk &&
        path == other.path &&
        position == other.position &&
        originalPosition == other.originalPosition &&
        commitId == other.commitId &&
        originalCommitId == other.originalCommitId &&
        inReplyToId == other.inReplyToId &&
        user == other.user &&
        body == other.body &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        htmlUrl == other.htmlUrl &&
        pullRequestUrl == other.pullRequestUrl &&
        authorAssociation == other.authorAssociation &&
        links == other.links &&
        bodyText == other.bodyText &&
        bodyHtml == other.bodyHtml &&
        side == other.side &&
        startSide == other.startSide &&
        line == other.line &&
        originalLine == other.originalLine &&
        startLine == other.startLine &&
        originalStartLine == other.originalStartLine;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc($jc($jc($jc($jc($jc($jc($jc($jc(0, url.hashCode), pullRequestReviewId.hashCode), id.hashCode), nodeId.hashCode), diffHunk.hashCode), path.hashCode), position.hashCode), originalPosition.hashCode),
                                                                                commitId.hashCode),
                                                                            originalCommitId.hashCode),
                                                                        inReplyToId.hashCode),
                                                                    user.hashCode),
                                                                body.hashCode),
                                                            createdAt.hashCode),
                                                        updatedAt.hashCode),
                                                    htmlUrl.hashCode),
                                                pullRequestUrl.hashCode),
                                            authorAssociation.hashCode),
                                        links.hashCode),
                                    bodyText.hashCode),
                                bodyHtml.hashCode),
                            side.hashCode),
                        startSide.hashCode),
                    line.hashCode),
                originalLine.hashCode),
            startLine.hashCode),
        originalStartLine.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ReviewComment')
          ..add('url', url)
          ..add('pullRequestReviewId', pullRequestReviewId)
          ..add('id', id)
          ..add('nodeId', nodeId)
          ..add('diffHunk', diffHunk)
          ..add('path', path)
          ..add('position', position)
          ..add('originalPosition', originalPosition)
          ..add('commitId', commitId)
          ..add('originalCommitId', originalCommitId)
          ..add('inReplyToId', inReplyToId)
          ..add('user', user)
          ..add('body', body)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('htmlUrl', htmlUrl)
          ..add('pullRequestUrl', pullRequestUrl)
          ..add('authorAssociation', authorAssociation)
          ..add('links', links)
          ..add('bodyText', bodyText)
          ..add('bodyHtml', bodyHtml)
          ..add('side', side)
          ..add('startSide', startSide)
          ..add('line', line)
          ..add('originalLine', originalLine)
          ..add('startLine', startLine)
          ..add('originalStartLine', originalStartLine))
        .toString();
  }
}

class ReviewCommentBuilder
    implements Builder<ReviewComment, ReviewCommentBuilder> {
  _$ReviewComment _$v;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  int _pullRequestReviewId;
  int get pullRequestReviewId => _$this._pullRequestReviewId;
  set pullRequestReviewId(int pullRequestReviewId) =>
      _$this._pullRequestReviewId = pullRequestReviewId;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _nodeId;
  String get nodeId => _$this._nodeId;
  set nodeId(String nodeId) => _$this._nodeId = nodeId;

  String _diffHunk;
  String get diffHunk => _$this._diffHunk;
  set diffHunk(String diffHunk) => _$this._diffHunk = diffHunk;

  String _path;
  String get path => _$this._path;
  set path(String path) => _$this._path = path;

  int _position;
  int get position => _$this._position;
  set position(int position) => _$this._position = position;

  int _originalPosition;
  int get originalPosition => _$this._originalPosition;
  set originalPosition(int originalPosition) =>
      _$this._originalPosition = originalPosition;

  String _commitId;
  String get commitId => _$this._commitId;
  set commitId(String commitId) => _$this._commitId = commitId;

  String _originalCommitId;
  String get originalCommitId => _$this._originalCommitId;
  set originalCommitId(String originalCommitId) =>
      _$this._originalCommitId = originalCommitId;

  int _inReplyToId;
  int get inReplyToId => _$this._inReplyToId;
  set inReplyToId(int inReplyToId) => _$this._inReplyToId = inReplyToId;

  SimpleUserBuilder _user;
  SimpleUserBuilder get user => _$this._user ??= new SimpleUserBuilder();
  set user(SimpleUserBuilder user) => _$this._user = user;

  String _body;
  String get body => _$this._body;
  set body(String body) => _$this._body = body;

  DateTime _createdAt;
  DateTime get createdAt => _$this._createdAt;
  set createdAt(DateTime createdAt) => _$this._createdAt = createdAt;

  DateTime _updatedAt;
  DateTime get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime updatedAt) => _$this._updatedAt = updatedAt;

  String _htmlUrl;
  String get htmlUrl => _$this._htmlUrl;
  set htmlUrl(String htmlUrl) => _$this._htmlUrl = htmlUrl;

  String _pullRequestUrl;
  String get pullRequestUrl => _$this._pullRequestUrl;
  set pullRequestUrl(String pullRequestUrl) =>
      _$this._pullRequestUrl = pullRequestUrl;

  AuthorAssociation _authorAssociation;
  AuthorAssociation get authorAssociation => _$this._authorAssociation;
  set authorAssociation(AuthorAssociation authorAssociation) =>
      _$this._authorAssociation = authorAssociation;

  ReviewCommentLinksBuilder _links;
  ReviewCommentLinksBuilder get links =>
      _$this._links ??= new ReviewCommentLinksBuilder();
  set links(ReviewCommentLinksBuilder links) => _$this._links = links;

  String _bodyText;
  String get bodyText => _$this._bodyText;
  set bodyText(String bodyText) => _$this._bodyText = bodyText;

  String _bodyHtml;
  String get bodyHtml => _$this._bodyHtml;
  set bodyHtml(String bodyHtml) => _$this._bodyHtml = bodyHtml;

  ReviewCommentSideEnum _side;
  ReviewCommentSideEnum get side => _$this._side;
  set side(ReviewCommentSideEnum side) => _$this._side = side;

  ReviewCommentStartSideEnum _startSide;
  ReviewCommentStartSideEnum get startSide => _$this._startSide;
  set startSide(ReviewCommentStartSideEnum startSide) =>
      _$this._startSide = startSide;

  int _line;
  int get line => _$this._line;
  set line(int line) => _$this._line = line;

  int _originalLine;
  int get originalLine => _$this._originalLine;
  set originalLine(int originalLine) => _$this._originalLine = originalLine;

  int _startLine;
  int get startLine => _$this._startLine;
  set startLine(int startLine) => _$this._startLine = startLine;

  int _originalStartLine;
  int get originalStartLine => _$this._originalStartLine;
  set originalStartLine(int originalStartLine) =>
      _$this._originalStartLine = originalStartLine;

  ReviewCommentBuilder() {
    ReviewComment._initializeBuilder(this);
  }

  ReviewCommentBuilder get _$this {
    if (_$v != null) {
      _url = _$v.url;
      _pullRequestReviewId = _$v.pullRequestReviewId;
      _id = _$v.id;
      _nodeId = _$v.nodeId;
      _diffHunk = _$v.diffHunk;
      _path = _$v.path;
      _position = _$v.position;
      _originalPosition = _$v.originalPosition;
      _commitId = _$v.commitId;
      _originalCommitId = _$v.originalCommitId;
      _inReplyToId = _$v.inReplyToId;
      _user = _$v.user?.toBuilder();
      _body = _$v.body;
      _createdAt = _$v.createdAt;
      _updatedAt = _$v.updatedAt;
      _htmlUrl = _$v.htmlUrl;
      _pullRequestUrl = _$v.pullRequestUrl;
      _authorAssociation = _$v.authorAssociation;
      _links = _$v.links?.toBuilder();
      _bodyText = _$v.bodyText;
      _bodyHtml = _$v.bodyHtml;
      _side = _$v.side;
      _startSide = _$v.startSide;
      _line = _$v.line;
      _originalLine = _$v.originalLine;
      _startLine = _$v.startLine;
      _originalStartLine = _$v.originalStartLine;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReviewComment other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ReviewComment;
  }

  @override
  void update(void Function(ReviewCommentBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ReviewComment build() {
    _$ReviewComment _$result;
    try {
      _$result = _$v ??
          new _$ReviewComment._(
              url: url,
              pullRequestReviewId: pullRequestReviewId,
              id: id,
              nodeId: nodeId,
              diffHunk: diffHunk,
              path: path,
              position: position,
              originalPosition: originalPosition,
              commitId: commitId,
              originalCommitId: originalCommitId,
              inReplyToId: inReplyToId,
              user: _user?.build(),
              body: body,
              createdAt: createdAt,
              updatedAt: updatedAt,
              htmlUrl: htmlUrl,
              pullRequestUrl: pullRequestUrl,
              authorAssociation: authorAssociation,
              links: _links?.build(),
              bodyText: bodyText,
              bodyHtml: bodyHtml,
              side: side,
              startSide: startSide,
              line: line,
              originalLine: originalLine,
              startLine: startLine,
              originalStartLine: originalStartLine);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'user';
        _user?.build();

        _$failedField = 'links';
        _links?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ReviewComment', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
