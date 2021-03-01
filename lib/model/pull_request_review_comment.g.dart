// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'pull_request_review_comment.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PullRequestReviewCommentStartSideEnum
    _$pullRequestReviewCommentStartSideEnum_LEFT =
    const PullRequestReviewCommentStartSideEnum._('LEFT');
const PullRequestReviewCommentStartSideEnum
    _$pullRequestReviewCommentStartSideEnum_RIGHT =
    const PullRequestReviewCommentStartSideEnum._('RIGHT');

PullRequestReviewCommentStartSideEnum
    _$pullRequestReviewCommentStartSideEnumValueOf(String name) {
  switch (name) {
    case 'LEFT':
      return _$pullRequestReviewCommentStartSideEnum_LEFT;
    case 'RIGHT':
      return _$pullRequestReviewCommentStartSideEnum_RIGHT;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<PullRequestReviewCommentStartSideEnum>
    _$pullRequestReviewCommentStartSideEnumValues =
    new BuiltSet<PullRequestReviewCommentStartSideEnum>(const <
        PullRequestReviewCommentStartSideEnum>[
  _$pullRequestReviewCommentStartSideEnum_LEFT,
  _$pullRequestReviewCommentStartSideEnum_RIGHT,
]);

const PullRequestReviewCommentSideEnum _$pullRequestReviewCommentSideEnum_LEFT =
    const PullRequestReviewCommentSideEnum._('LEFT');
const PullRequestReviewCommentSideEnum
    _$pullRequestReviewCommentSideEnum_RIGHT =
    const PullRequestReviewCommentSideEnum._('RIGHT');

PullRequestReviewCommentSideEnum _$pullRequestReviewCommentSideEnumValueOf(
    String name) {
  switch (name) {
    case 'LEFT':
      return _$pullRequestReviewCommentSideEnum_LEFT;
    case 'RIGHT':
      return _$pullRequestReviewCommentSideEnum_RIGHT;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<PullRequestReviewCommentSideEnum>
    _$pullRequestReviewCommentSideEnumValues =
    new BuiltSet<PullRequestReviewCommentSideEnum>(const <
        PullRequestReviewCommentSideEnum>[
  _$pullRequestReviewCommentSideEnum_LEFT,
  _$pullRequestReviewCommentSideEnum_RIGHT,
]);

Serializer<PullRequestReviewComment> _$pullRequestReviewCommentSerializer =
    new _$PullRequestReviewCommentSerializer();
Serializer<PullRequestReviewCommentStartSideEnum>
    _$pullRequestReviewCommentStartSideEnumSerializer =
    new _$PullRequestReviewCommentStartSideEnumSerializer();
Serializer<PullRequestReviewCommentSideEnum>
    _$pullRequestReviewCommentSideEnumSerializer =
    new _$PullRequestReviewCommentSideEnumSerializer();

class _$PullRequestReviewCommentSerializer
    implements StructuredSerializer<PullRequestReviewComment> {
  @override
  final Iterable<Type> types = const [
    PullRequestReviewComment,
    _$PullRequestReviewComment
  ];
  @override
  final String wireName = 'PullRequestReviewComment';

  @override
  Iterable<Object> serialize(
      Serializers serializers, PullRequestReviewComment object,
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
            specifiedType: const FullType(PullRequestReviewCommentLinks)));
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
    if (object.startSide != null) {
      result
        ..add('start_side')
        ..add(serializers.serialize(object.startSide,
            specifiedType:
                const FullType(PullRequestReviewCommentStartSideEnum)));
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
    if (object.side != null) {
      result
        ..add('side')
        ..add(serializers.serialize(object.side,
            specifiedType: const FullType(PullRequestReviewCommentSideEnum)));
    }
    if (object.reactions != null) {
      result
        ..add('reactions')
        ..add(serializers.serialize(object.reactions,
            specifiedType: const FullType(ReactionRollup)));
    }
    if (object.bodyHtml != null) {
      result
        ..add('body_html')
        ..add(serializers.serialize(object.bodyHtml,
            specifiedType: const FullType(String)));
    }
    if (object.bodyText != null) {
      result
        ..add('body_text')
        ..add(serializers.serialize(object.bodyText,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  PullRequestReviewComment deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PullRequestReviewCommentBuilder();

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
                  specifiedType: const FullType(PullRequestReviewCommentLinks))
              as PullRequestReviewCommentLinks);
          break;
        case 'start_line':
          result.startLine = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'original_start_line':
          result.originalStartLine = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'start_side':
          result.startSide = serializers.deserialize(value,
                  specifiedType:
                      const FullType(PullRequestReviewCommentStartSideEnum))
              as PullRequestReviewCommentStartSideEnum;
          break;
        case 'line':
          result.line = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'original_line':
          result.originalLine = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'side':
          result.side = serializers.deserialize(value,
                  specifiedType:
                      const FullType(PullRequestReviewCommentSideEnum))
              as PullRequestReviewCommentSideEnum;
          break;
        case 'reactions':
          result.reactions.replace(serializers.deserialize(value,
              specifiedType: const FullType(ReactionRollup)) as ReactionRollup);
          break;
        case 'body_html':
          result.bodyHtml = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'body_text':
          result.bodyText = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$PullRequestReviewCommentStartSideEnumSerializer
    implements PrimitiveSerializer<PullRequestReviewCommentStartSideEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'LEFT': 'LEFT',
    'RIGHT': 'RIGHT',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'LEFT': 'LEFT',
    'RIGHT': 'RIGHT',
  };

  @override
  final Iterable<Type> types = const <Type>[
    PullRequestReviewCommentStartSideEnum
  ];
  @override
  final String wireName = 'PullRequestReviewCommentStartSideEnum';

  @override
  Object serialize(
          Serializers serializers, PullRequestReviewCommentStartSideEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PullRequestReviewCommentStartSideEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PullRequestReviewCommentStartSideEnum.valueOf(
          _fromWire[serialized] ?? serialized as String);
}

class _$PullRequestReviewCommentSideEnumSerializer
    implements PrimitiveSerializer<PullRequestReviewCommentSideEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'LEFT': 'LEFT',
    'RIGHT': 'RIGHT',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'LEFT': 'LEFT',
    'RIGHT': 'RIGHT',
  };

  @override
  final Iterable<Type> types = const <Type>[PullRequestReviewCommentSideEnum];
  @override
  final String wireName = 'PullRequestReviewCommentSideEnum';

  @override
  Object serialize(
          Serializers serializers, PullRequestReviewCommentSideEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PullRequestReviewCommentSideEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PullRequestReviewCommentSideEnum.valueOf(
          _fromWire[serialized] ?? serialized as String);
}

class _$PullRequestReviewComment extends PullRequestReviewComment {
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
  final PullRequestReviewCommentLinks links;
  @override
  final int startLine;
  @override
  final int originalStartLine;
  @override
  final PullRequestReviewCommentStartSideEnum startSide;
  @override
  final int line;
  @override
  final int originalLine;
  @override
  final PullRequestReviewCommentSideEnum side;
  @override
  final ReactionRollup reactions;
  @override
  final String bodyHtml;
  @override
  final String bodyText;

  factory _$PullRequestReviewComment(
          [void Function(PullRequestReviewCommentBuilder) updates]) =>
      (new PullRequestReviewCommentBuilder()..update(updates)).build();

  _$PullRequestReviewComment._(
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
      this.startLine,
      this.originalStartLine,
      this.startSide,
      this.line,
      this.originalLine,
      this.side,
      this.reactions,
      this.bodyHtml,
      this.bodyText})
      : super._();

  @override
  PullRequestReviewComment rebuild(
          void Function(PullRequestReviewCommentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PullRequestReviewCommentBuilder toBuilder() =>
      new PullRequestReviewCommentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PullRequestReviewComment &&
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
        startLine == other.startLine &&
        originalStartLine == other.originalStartLine &&
        startSide == other.startSide &&
        line == other.line &&
        originalLine == other.originalLine &&
        side == other.side &&
        reactions == other.reactions &&
        bodyHtml == other.bodyHtml &&
        bodyText == other.bodyText;
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
                                                                            $jc($jc($jc($jc($jc($jc($jc($jc($jc($jc(0, url.hashCode), pullRequestReviewId.hashCode), id.hashCode), nodeId.hashCode), diffHunk.hashCode), path.hashCode), position.hashCode), originalPosition.hashCode), commitId.hashCode),
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
                                        startLine.hashCode),
                                    originalStartLine.hashCode),
                                startSide.hashCode),
                            line.hashCode),
                        originalLine.hashCode),
                    side.hashCode),
                reactions.hashCode),
            bodyHtml.hashCode),
        bodyText.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PullRequestReviewComment')
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
          ..add('startLine', startLine)
          ..add('originalStartLine', originalStartLine)
          ..add('startSide', startSide)
          ..add('line', line)
          ..add('originalLine', originalLine)
          ..add('side', side)
          ..add('reactions', reactions)
          ..add('bodyHtml', bodyHtml)
          ..add('bodyText', bodyText))
        .toString();
  }
}

class PullRequestReviewCommentBuilder
    implements
        Builder<PullRequestReviewComment, PullRequestReviewCommentBuilder> {
  _$PullRequestReviewComment _$v;

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

  PullRequestReviewCommentLinksBuilder _links;
  PullRequestReviewCommentLinksBuilder get links =>
      _$this._links ??= new PullRequestReviewCommentLinksBuilder();
  set links(PullRequestReviewCommentLinksBuilder links) =>
      _$this._links = links;

  int _startLine;
  int get startLine => _$this._startLine;
  set startLine(int startLine) => _$this._startLine = startLine;

  int _originalStartLine;
  int get originalStartLine => _$this._originalStartLine;
  set originalStartLine(int originalStartLine) =>
      _$this._originalStartLine = originalStartLine;

  PullRequestReviewCommentStartSideEnum _startSide;
  PullRequestReviewCommentStartSideEnum get startSide => _$this._startSide;
  set startSide(PullRequestReviewCommentStartSideEnum startSide) =>
      _$this._startSide = startSide;

  int _line;
  int get line => _$this._line;
  set line(int line) => _$this._line = line;

  int _originalLine;
  int get originalLine => _$this._originalLine;
  set originalLine(int originalLine) => _$this._originalLine = originalLine;

  PullRequestReviewCommentSideEnum _side;
  PullRequestReviewCommentSideEnum get side => _$this._side;
  set side(PullRequestReviewCommentSideEnum side) => _$this._side = side;

  ReactionRollupBuilder _reactions;
  ReactionRollupBuilder get reactions =>
      _$this._reactions ??= new ReactionRollupBuilder();
  set reactions(ReactionRollupBuilder reactions) =>
      _$this._reactions = reactions;

  String _bodyHtml;
  String get bodyHtml => _$this._bodyHtml;
  set bodyHtml(String bodyHtml) => _$this._bodyHtml = bodyHtml;

  String _bodyText;
  String get bodyText => _$this._bodyText;
  set bodyText(String bodyText) => _$this._bodyText = bodyText;

  PullRequestReviewCommentBuilder() {
    PullRequestReviewComment._initializeBuilder(this);
  }

  PullRequestReviewCommentBuilder get _$this {
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
      _startLine = _$v.startLine;
      _originalStartLine = _$v.originalStartLine;
      _startSide = _$v.startSide;
      _line = _$v.line;
      _originalLine = _$v.originalLine;
      _side = _$v.side;
      _reactions = _$v.reactions?.toBuilder();
      _bodyHtml = _$v.bodyHtml;
      _bodyText = _$v.bodyText;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PullRequestReviewComment other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PullRequestReviewComment;
  }

  @override
  void update(void Function(PullRequestReviewCommentBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PullRequestReviewComment build() {
    _$PullRequestReviewComment _$result;
    try {
      _$result = _$v ??
          new _$PullRequestReviewComment._(
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
              startLine: startLine,
              originalStartLine: originalStartLine,
              startSide: startSide,
              line: line,
              originalLine: originalLine,
              side: side,
              reactions: _reactions?.build(),
              bodyHtml: bodyHtml,
              bodyText: bodyText);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'user';
        _user?.build();

        _$failedField = 'links';
        _links?.build();

        _$failedField = 'reactions';
        _reactions?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'PullRequestReviewComment', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
