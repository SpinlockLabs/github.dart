// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'issue_search_result_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<IssueSearchResultItem> _$issueSearchResultItemSerializer =
    new _$IssueSearchResultItemSerializer();

class _$IssueSearchResultItemSerializer
    implements StructuredSerializer<IssueSearchResultItem> {
  @override
  final Iterable<Type> types = const [
    IssueSearchResultItem,
    _$IssueSearchResultItem
  ];
  @override
  final String wireName = 'IssueSearchResultItem';

  @override
  Iterable<Object> serialize(
      Serializers serializers, IssueSearchResultItem object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.url != null) {
      result
        ..add('url')
        ..add(serializers.serialize(object.url,
            specifiedType: const FullType(String)));
    }
    if (object.repositoryUrl != null) {
      result
        ..add('repository_url')
        ..add(serializers.serialize(object.repositoryUrl,
            specifiedType: const FullType(String)));
    }
    if (object.labelsUrl != null) {
      result
        ..add('labels_url')
        ..add(serializers.serialize(object.labelsUrl,
            specifiedType: const FullType(String)));
    }
    if (object.commentsUrl != null) {
      result
        ..add('comments_url')
        ..add(serializers.serialize(object.commentsUrl,
            specifiedType: const FullType(String)));
    }
    if (object.eventsUrl != null) {
      result
        ..add('events_url')
        ..add(serializers.serialize(object.eventsUrl,
            specifiedType: const FullType(String)));
    }
    if (object.htmlUrl != null) {
      result
        ..add('html_url')
        ..add(serializers.serialize(object.htmlUrl,
            specifiedType: const FullType(String)));
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
    if (object.number != null) {
      result
        ..add('number')
        ..add(serializers.serialize(object.number,
            specifiedType: const FullType(int)));
    }
    if (object.title != null) {
      result
        ..add('title')
        ..add(serializers.serialize(object.title,
            specifiedType: const FullType(String)));
    }
    if (object.locked != null) {
      result
        ..add('locked')
        ..add(serializers.serialize(object.locked,
            specifiedType: const FullType(bool)));
    }
    if (object.activeLockReason != null) {
      result
        ..add('active_lock_reason')
        ..add(serializers.serialize(object.activeLockReason,
            specifiedType: const FullType(String)));
    }
    if (object.assignees != null) {
      result
        ..add('assignees')
        ..add(serializers.serialize(object.assignees,
            specifiedType:
                const FullType(BuiltList, const [const FullType(SimpleUser)])));
    }
    if (object.user != null) {
      result
        ..add('user')
        ..add(serializers.serialize(object.user,
            specifiedType: const FullType(SimpleUser)));
    }
    if (object.labels != null) {
      result
        ..add('labels')
        ..add(serializers.serialize(object.labels,
            specifiedType: const FullType(BuiltList,
                const [const FullType(IssueSearchResultItemLabels)])));
    }
    if (object.state != null) {
      result
        ..add('state')
        ..add(serializers.serialize(object.state,
            specifiedType: const FullType(String)));
    }
    if (object.assignee != null) {
      result
        ..add('assignee')
        ..add(serializers.serialize(object.assignee,
            specifiedType: const FullType(SimpleUser)));
    }
    if (object.milestone != null) {
      result
        ..add('milestone')
        ..add(serializers.serialize(object.milestone,
            specifiedType: const FullType(Milestone)));
    }
    if (object.comments != null) {
      result
        ..add('comments')
        ..add(serializers.serialize(object.comments,
            specifiedType: const FullType(int)));
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
    if (object.closedAt != null) {
      result
        ..add('closed_at')
        ..add(serializers.serialize(object.closedAt,
            specifiedType: const FullType(DateTime)));
    }
    if (object.textMatches != null) {
      result
        ..add('text_matches')
        ..add(serializers.serialize(object.textMatches,
            specifiedType:
                const FullType(BuiltList, const [const FullType(JsonObject)])));
    }
    if (object.pullRequest != null) {
      result
        ..add('pull_request')
        ..add(serializers.serialize(object.pullRequest,
            specifiedType: const FullType(IssueSimplePullRequest)));
    }
    if (object.body != null) {
      result
        ..add('body')
        ..add(serializers.serialize(object.body,
            specifiedType: const FullType(String)));
    }
    if (object.score != null) {
      result
        ..add('score')
        ..add(serializers.serialize(object.score,
            specifiedType: const FullType(int)));
    }
    if (object.authorAssociation != null) {
      result
        ..add('author_association')
        ..add(serializers.serialize(object.authorAssociation,
            specifiedType: const FullType(AuthorAssociation)));
    }
    if (object.draft != null) {
      result
        ..add('draft')
        ..add(serializers.serialize(object.draft,
            specifiedType: const FullType(bool)));
    }
    if (object.repository != null) {
      result
        ..add('repository')
        ..add(serializers.serialize(object.repository,
            specifiedType: const FullType(Repository)));
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
    if (object.timelineUrl != null) {
      result
        ..add('timeline_url')
        ..add(serializers.serialize(object.timelineUrl,
            specifiedType: const FullType(String)));
    }
    if (object.performedViaGithubApp != null) {
      result
        ..add('performed_via_github_app')
        ..add(serializers.serialize(object.performedViaGithubApp,
            specifiedType: const FullType(Integration)));
    }
    return result;
  }

  @override
  IssueSearchResultItem deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new IssueSearchResultItemBuilder();

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
        case 'repository_url':
          result.repositoryUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'labels_url':
          result.labelsUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'comments_url':
          result.commentsUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'events_url':
          result.eventsUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'html_url':
          result.htmlUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'node_id':
          result.nodeId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'number':
          result.number = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'locked':
          result.locked = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'active_lock_reason':
          result.activeLockReason = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'assignees':
          result.assignees.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(SimpleUser)]))
              as BuiltList<Object>);
          break;
        case 'user':
          result.user.replace(serializers.deserialize(value,
              specifiedType: const FullType(SimpleUser)) as SimpleUser);
          break;
        case 'labels':
          result.labels.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(IssueSearchResultItemLabels)
              ])) as BuiltList<Object>);
          break;
        case 'state':
          result.state = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'assignee':
          result.assignee.replace(serializers.deserialize(value,
              specifiedType: const FullType(SimpleUser)) as SimpleUser);
          break;
        case 'milestone':
          result.milestone.replace(serializers.deserialize(value,
              specifiedType: const FullType(Milestone)) as Milestone);
          break;
        case 'comments':
          result.comments = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'updated_at':
          result.updatedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'closed_at':
          result.closedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'text_matches':
          result.textMatches.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(JsonObject)]))
              as BuiltList<Object>);
          break;
        case 'pull_request':
          result.pullRequest.replace(serializers.deserialize(value,
                  specifiedType: const FullType(IssueSimplePullRequest))
              as IssueSimplePullRequest);
          break;
        case 'body':
          result.body = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'score':
          result.score = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'author_association':
          result.authorAssociation = serializers.deserialize(value,
                  specifiedType: const FullType(AuthorAssociation))
              as AuthorAssociation;
          break;
        case 'draft':
          result.draft = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'repository':
          result.repository.replace(serializers.deserialize(value,
              specifiedType: const FullType(Repository)) as Repository);
          break;
        case 'body_html':
          result.bodyHtml = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'body_text':
          result.bodyText = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'timeline_url':
          result.timelineUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'performed_via_github_app':
          result.performedViaGithubApp.replace(serializers.deserialize(value,
              specifiedType: const FullType(Integration)) as Integration);
          break;
      }
    }

    return result.build();
  }
}

class _$IssueSearchResultItem extends IssueSearchResultItem {
  @override
  final String url;
  @override
  final String repositoryUrl;
  @override
  final String labelsUrl;
  @override
  final String commentsUrl;
  @override
  final String eventsUrl;
  @override
  final String htmlUrl;
  @override
  final int id;
  @override
  final String nodeId;
  @override
  final int number;
  @override
  final String title;
  @override
  final bool locked;
  @override
  final String activeLockReason;
  @override
  final BuiltList<SimpleUser> assignees;
  @override
  final SimpleUser user;
  @override
  final BuiltList<IssueSearchResultItemLabels> labels;
  @override
  final String state;
  @override
  final SimpleUser assignee;
  @override
  final Milestone milestone;
  @override
  final int comments;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final DateTime closedAt;
  @override
  final BuiltList<JsonObject> textMatches;
  @override
  final IssueSimplePullRequest pullRequest;
  @override
  final String body;
  @override
  final int score;
  @override
  final AuthorAssociation authorAssociation;
  @override
  final bool draft;
  @override
  final Repository repository;
  @override
  final String bodyHtml;
  @override
  final String bodyText;
  @override
  final String timelineUrl;
  @override
  final Integration performedViaGithubApp;

  factory _$IssueSearchResultItem(
          [void Function(IssueSearchResultItemBuilder) updates]) =>
      (new IssueSearchResultItemBuilder()..update(updates)).build();

  _$IssueSearchResultItem._(
      {this.url,
      this.repositoryUrl,
      this.labelsUrl,
      this.commentsUrl,
      this.eventsUrl,
      this.htmlUrl,
      this.id,
      this.nodeId,
      this.number,
      this.title,
      this.locked,
      this.activeLockReason,
      this.assignees,
      this.user,
      this.labels,
      this.state,
      this.assignee,
      this.milestone,
      this.comments,
      this.createdAt,
      this.updatedAt,
      this.closedAt,
      this.textMatches,
      this.pullRequest,
      this.body,
      this.score,
      this.authorAssociation,
      this.draft,
      this.repository,
      this.bodyHtml,
      this.bodyText,
      this.timelineUrl,
      this.performedViaGithubApp})
      : super._();

  @override
  IssueSearchResultItem rebuild(
          void Function(IssueSearchResultItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IssueSearchResultItemBuilder toBuilder() =>
      new IssueSearchResultItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IssueSearchResultItem &&
        url == other.url &&
        repositoryUrl == other.repositoryUrl &&
        labelsUrl == other.labelsUrl &&
        commentsUrl == other.commentsUrl &&
        eventsUrl == other.eventsUrl &&
        htmlUrl == other.htmlUrl &&
        id == other.id &&
        nodeId == other.nodeId &&
        number == other.number &&
        title == other.title &&
        locked == other.locked &&
        activeLockReason == other.activeLockReason &&
        assignees == other.assignees &&
        user == other.user &&
        labels == other.labels &&
        state == other.state &&
        assignee == other.assignee &&
        milestone == other.milestone &&
        comments == other.comments &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        closedAt == other.closedAt &&
        textMatches == other.textMatches &&
        pullRequest == other.pullRequest &&
        body == other.body &&
        score == other.score &&
        authorAssociation == other.authorAssociation &&
        draft == other.draft &&
        repository == other.repository &&
        bodyHtml == other.bodyHtml &&
        bodyText == other.bodyText &&
        timelineUrl == other.timelineUrl &&
        performedViaGithubApp == other.performedViaGithubApp;
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
                                                                            $jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc(0, url.hashCode), repositoryUrl.hashCode), labelsUrl.hashCode), commentsUrl.hashCode), eventsUrl.hashCode), htmlUrl.hashCode), id.hashCode), nodeId.hashCode), number.hashCode), title.hashCode), locked.hashCode), activeLockReason.hashCode), assignees.hashCode), user.hashCode),
                                                                                labels.hashCode),
                                                                            state.hashCode),
                                                                        assignee.hashCode),
                                                                    milestone.hashCode),
                                                                comments.hashCode),
                                                            createdAt.hashCode),
                                                        updatedAt.hashCode),
                                                    closedAt.hashCode),
                                                textMatches.hashCode),
                                            pullRequest.hashCode),
                                        body.hashCode),
                                    score.hashCode),
                                authorAssociation.hashCode),
                            draft.hashCode),
                        repository.hashCode),
                    bodyHtml.hashCode),
                bodyText.hashCode),
            timelineUrl.hashCode),
        performedViaGithubApp.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('IssueSearchResultItem')
          ..add('url', url)
          ..add('repositoryUrl', repositoryUrl)
          ..add('labelsUrl', labelsUrl)
          ..add('commentsUrl', commentsUrl)
          ..add('eventsUrl', eventsUrl)
          ..add('htmlUrl', htmlUrl)
          ..add('id', id)
          ..add('nodeId', nodeId)
          ..add('number', number)
          ..add('title', title)
          ..add('locked', locked)
          ..add('activeLockReason', activeLockReason)
          ..add('assignees', assignees)
          ..add('user', user)
          ..add('labels', labels)
          ..add('state', state)
          ..add('assignee', assignee)
          ..add('milestone', milestone)
          ..add('comments', comments)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('closedAt', closedAt)
          ..add('textMatches', textMatches)
          ..add('pullRequest', pullRequest)
          ..add('body', body)
          ..add('score', score)
          ..add('authorAssociation', authorAssociation)
          ..add('draft', draft)
          ..add('repository', repository)
          ..add('bodyHtml', bodyHtml)
          ..add('bodyText', bodyText)
          ..add('timelineUrl', timelineUrl)
          ..add('performedViaGithubApp', performedViaGithubApp))
        .toString();
  }
}

class IssueSearchResultItemBuilder
    implements Builder<IssueSearchResultItem, IssueSearchResultItemBuilder> {
  _$IssueSearchResultItem _$v;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _repositoryUrl;
  String get repositoryUrl => _$this._repositoryUrl;
  set repositoryUrl(String repositoryUrl) =>
      _$this._repositoryUrl = repositoryUrl;

  String _labelsUrl;
  String get labelsUrl => _$this._labelsUrl;
  set labelsUrl(String labelsUrl) => _$this._labelsUrl = labelsUrl;

  String _commentsUrl;
  String get commentsUrl => _$this._commentsUrl;
  set commentsUrl(String commentsUrl) => _$this._commentsUrl = commentsUrl;

  String _eventsUrl;
  String get eventsUrl => _$this._eventsUrl;
  set eventsUrl(String eventsUrl) => _$this._eventsUrl = eventsUrl;

  String _htmlUrl;
  String get htmlUrl => _$this._htmlUrl;
  set htmlUrl(String htmlUrl) => _$this._htmlUrl = htmlUrl;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _nodeId;
  String get nodeId => _$this._nodeId;
  set nodeId(String nodeId) => _$this._nodeId = nodeId;

  int _number;
  int get number => _$this._number;
  set number(int number) => _$this._number = number;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  bool _locked;
  bool get locked => _$this._locked;
  set locked(bool locked) => _$this._locked = locked;

  String _activeLockReason;
  String get activeLockReason => _$this._activeLockReason;
  set activeLockReason(String activeLockReason) =>
      _$this._activeLockReason = activeLockReason;

  ListBuilder<SimpleUser> _assignees;
  ListBuilder<SimpleUser> get assignees =>
      _$this._assignees ??= new ListBuilder<SimpleUser>();
  set assignees(ListBuilder<SimpleUser> assignees) =>
      _$this._assignees = assignees;

  SimpleUserBuilder _user;
  SimpleUserBuilder get user => _$this._user ??= new SimpleUserBuilder();
  set user(SimpleUserBuilder user) => _$this._user = user;

  ListBuilder<IssueSearchResultItemLabels> _labels;
  ListBuilder<IssueSearchResultItemLabels> get labels =>
      _$this._labels ??= new ListBuilder<IssueSearchResultItemLabels>();
  set labels(ListBuilder<IssueSearchResultItemLabels> labels) =>
      _$this._labels = labels;

  String _state;
  String get state => _$this._state;
  set state(String state) => _$this._state = state;

  SimpleUserBuilder _assignee;
  SimpleUserBuilder get assignee =>
      _$this._assignee ??= new SimpleUserBuilder();
  set assignee(SimpleUserBuilder assignee) => _$this._assignee = assignee;

  MilestoneBuilder _milestone;
  MilestoneBuilder get milestone =>
      _$this._milestone ??= new MilestoneBuilder();
  set milestone(MilestoneBuilder milestone) => _$this._milestone = milestone;

  int _comments;
  int get comments => _$this._comments;
  set comments(int comments) => _$this._comments = comments;

  DateTime _createdAt;
  DateTime get createdAt => _$this._createdAt;
  set createdAt(DateTime createdAt) => _$this._createdAt = createdAt;

  DateTime _updatedAt;
  DateTime get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime updatedAt) => _$this._updatedAt = updatedAt;

  DateTime _closedAt;
  DateTime get closedAt => _$this._closedAt;
  set closedAt(DateTime closedAt) => _$this._closedAt = closedAt;

  ListBuilder<JsonObject> _textMatches;
  ListBuilder<JsonObject> get textMatches =>
      _$this._textMatches ??= new ListBuilder<JsonObject>();
  set textMatches(ListBuilder<JsonObject> textMatches) =>
      _$this._textMatches = textMatches;

  IssueSimplePullRequestBuilder _pullRequest;
  IssueSimplePullRequestBuilder get pullRequest =>
      _$this._pullRequest ??= new IssueSimplePullRequestBuilder();
  set pullRequest(IssueSimplePullRequestBuilder pullRequest) =>
      _$this._pullRequest = pullRequest;

  String _body;
  String get body => _$this._body;
  set body(String body) => _$this._body = body;

  int _score;
  int get score => _$this._score;
  set score(int score) => _$this._score = score;

  AuthorAssociation _authorAssociation;
  AuthorAssociation get authorAssociation => _$this._authorAssociation;
  set authorAssociation(AuthorAssociation authorAssociation) =>
      _$this._authorAssociation = authorAssociation;

  bool _draft;
  bool get draft => _$this._draft;
  set draft(bool draft) => _$this._draft = draft;

  RepositoryBuilder _repository;
  RepositoryBuilder get repository =>
      _$this._repository ??= new RepositoryBuilder();
  set repository(RepositoryBuilder repository) =>
      _$this._repository = repository;

  String _bodyHtml;
  String get bodyHtml => _$this._bodyHtml;
  set bodyHtml(String bodyHtml) => _$this._bodyHtml = bodyHtml;

  String _bodyText;
  String get bodyText => _$this._bodyText;
  set bodyText(String bodyText) => _$this._bodyText = bodyText;

  String _timelineUrl;
  String get timelineUrl => _$this._timelineUrl;
  set timelineUrl(String timelineUrl) => _$this._timelineUrl = timelineUrl;

  IntegrationBuilder _performedViaGithubApp;
  IntegrationBuilder get performedViaGithubApp =>
      _$this._performedViaGithubApp ??= new IntegrationBuilder();
  set performedViaGithubApp(IntegrationBuilder performedViaGithubApp) =>
      _$this._performedViaGithubApp = performedViaGithubApp;

  IssueSearchResultItemBuilder() {
    IssueSearchResultItem._initializeBuilder(this);
  }

  IssueSearchResultItemBuilder get _$this {
    if (_$v != null) {
      _url = _$v.url;
      _repositoryUrl = _$v.repositoryUrl;
      _labelsUrl = _$v.labelsUrl;
      _commentsUrl = _$v.commentsUrl;
      _eventsUrl = _$v.eventsUrl;
      _htmlUrl = _$v.htmlUrl;
      _id = _$v.id;
      _nodeId = _$v.nodeId;
      _number = _$v.number;
      _title = _$v.title;
      _locked = _$v.locked;
      _activeLockReason = _$v.activeLockReason;
      _assignees = _$v.assignees?.toBuilder();
      _user = _$v.user?.toBuilder();
      _labels = _$v.labels?.toBuilder();
      _state = _$v.state;
      _assignee = _$v.assignee?.toBuilder();
      _milestone = _$v.milestone?.toBuilder();
      _comments = _$v.comments;
      _createdAt = _$v.createdAt;
      _updatedAt = _$v.updatedAt;
      _closedAt = _$v.closedAt;
      _textMatches = _$v.textMatches?.toBuilder();
      _pullRequest = _$v.pullRequest?.toBuilder();
      _body = _$v.body;
      _score = _$v.score;
      _authorAssociation = _$v.authorAssociation;
      _draft = _$v.draft;
      _repository = _$v.repository?.toBuilder();
      _bodyHtml = _$v.bodyHtml;
      _bodyText = _$v.bodyText;
      _timelineUrl = _$v.timelineUrl;
      _performedViaGithubApp = _$v.performedViaGithubApp?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IssueSearchResultItem other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$IssueSearchResultItem;
  }

  @override
  void update(void Function(IssueSearchResultItemBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$IssueSearchResultItem build() {
    _$IssueSearchResultItem _$result;
    try {
      _$result = _$v ??
          new _$IssueSearchResultItem._(
              url: url,
              repositoryUrl: repositoryUrl,
              labelsUrl: labelsUrl,
              commentsUrl: commentsUrl,
              eventsUrl: eventsUrl,
              htmlUrl: htmlUrl,
              id: id,
              nodeId: nodeId,
              number: number,
              title: title,
              locked: locked,
              activeLockReason: activeLockReason,
              assignees: _assignees?.build(),
              user: _user?.build(),
              labels: _labels?.build(),
              state: state,
              assignee: _assignee?.build(),
              milestone: _milestone?.build(),
              comments: comments,
              createdAt: createdAt,
              updatedAt: updatedAt,
              closedAt: closedAt,
              textMatches: _textMatches?.build(),
              pullRequest: _pullRequest?.build(),
              body: body,
              score: score,
              authorAssociation: authorAssociation,
              draft: draft,
              repository: _repository?.build(),
              bodyHtml: bodyHtml,
              bodyText: bodyText,
              timelineUrl: timelineUrl,
              performedViaGithubApp: _performedViaGithubApp?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'assignees';
        _assignees?.build();
        _$failedField = 'user';
        _user?.build();
        _$failedField = 'labels';
        _labels?.build();

        _$failedField = 'assignee';
        _assignee?.build();
        _$failedField = 'milestone';
        _milestone?.build();

        _$failedField = 'textMatches';
        _textMatches?.build();
        _$failedField = 'pullRequest';
        _pullRequest?.build();

        _$failedField = 'repository';
        _repository?.build();

        _$failedField = 'performedViaGithubApp';
        _performedViaGithubApp?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'IssueSearchResultItem', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
