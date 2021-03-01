// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'issue.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Issue> _$issueSerializer = new _$IssueSerializer();

class _$IssueSerializer implements StructuredSerializer<Issue> {
  @override
  final Iterable<Type> types = const [Issue, _$Issue];
  @override
  final String wireName = 'Issue';

  @override
  Iterable<Object> serialize(Serializers serializers, Issue object,
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
    if (object.number != null) {
      result
        ..add('number')
        ..add(serializers.serialize(object.number,
            specifiedType: const FullType(int)));
    }
    if (object.state != null) {
      result
        ..add('state')
        ..add(serializers.serialize(object.state,
            specifiedType: const FullType(String)));
    }
    if (object.title != null) {
      result
        ..add('title')
        ..add(serializers.serialize(object.title,
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
    if (object.labels != null) {
      result
        ..add('labels')
        ..add(serializers.serialize(object.labels,
            specifiedType: const FullType(BuiltList)));
    }
    if (object.assignee != null) {
      result
        ..add('assignee')
        ..add(serializers.serialize(object.assignee,
            specifiedType: const FullType(SimpleUser)));
    }
    if (object.assignees != null) {
      result
        ..add('assignees')
        ..add(serializers.serialize(object.assignees,
            specifiedType:
                const FullType(BuiltList, const [const FullType(SimpleUser)])));
    }
    if (object.milestone != null) {
      result
        ..add('milestone')
        ..add(serializers.serialize(object.milestone,
            specifiedType: const FullType(Milestone)));
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
    if (object.comments != null) {
      result
        ..add('comments')
        ..add(serializers.serialize(object.comments,
            specifiedType: const FullType(int)));
    }
    if (object.pullRequest != null) {
      result
        ..add('pull_request')
        ..add(serializers.serialize(object.pullRequest,
            specifiedType: const FullType(IssueSimplePullRequest)));
    }
    if (object.closedAt != null) {
      result
        ..add('closed_at')
        ..add(serializers.serialize(object.closedAt,
            specifiedType: const FullType(DateTime)));
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
    if (object.closedBy != null) {
      result
        ..add('closed_by')
        ..add(serializers.serialize(object.closedBy,
            specifiedType: const FullType(SimpleUser)));
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
    if (object.repository != null) {
      result
        ..add('repository')
        ..add(serializers.serialize(object.repository,
            specifiedType: const FullType(Repository)));
    }
    if (object.performedViaGithubApp != null) {
      result
        ..add('performed_via_github_app')
        ..add(serializers.serialize(object.performedViaGithubApp,
            specifiedType: const FullType(Integration)));
    }
    if (object.authorAssociation != null) {
      result
        ..add('author_association')
        ..add(serializers.serialize(object.authorAssociation,
            specifiedType: const FullType(AuthorAssociation)));
    }
    if (object.reactions != null) {
      result
        ..add('reactions')
        ..add(serializers.serialize(object.reactions,
            specifiedType: const FullType(ReactionRollup)));
    }
    return result;
  }

  @override
  Issue deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new IssueBuilder();

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
        case 'number':
          result.number = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'state':
          result.state = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
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
        case 'labels':
          result.labels = serializers.deserialize(value,
              specifiedType: const FullType(BuiltList)) as BuiltList;
          break;
        case 'assignee':
          result.assignee.replace(serializers.deserialize(value,
              specifiedType: const FullType(SimpleUser)) as SimpleUser);
          break;
        case 'assignees':
          result.assignees.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(SimpleUser)]))
              as BuiltList<Object>);
          break;
        case 'milestone':
          result.milestone.replace(serializers.deserialize(value,
              specifiedType: const FullType(Milestone)) as Milestone);
          break;
        case 'locked':
          result.locked = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'active_lock_reason':
          result.activeLockReason = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'comments':
          result.comments = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'pull_request':
          result.pullRequest.replace(serializers.deserialize(value,
                  specifiedType: const FullType(IssueSimplePullRequest))
              as IssueSimplePullRequest);
          break;
        case 'closed_at':
          result.closedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'updated_at':
          result.updatedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'closed_by':
          result.closedBy.replace(serializers.deserialize(value,
              specifiedType: const FullType(SimpleUser)) as SimpleUser);
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
        case 'repository':
          result.repository.replace(serializers.deserialize(value,
              specifiedType: const FullType(Repository)) as Repository);
          break;
        case 'performed_via_github_app':
          result.performedViaGithubApp.replace(serializers.deserialize(value,
              specifiedType: const FullType(Integration)) as Integration);
          break;
        case 'author_association':
          result.authorAssociation = serializers.deserialize(value,
                  specifiedType: const FullType(AuthorAssociation))
              as AuthorAssociation;
          break;
        case 'reactions':
          result.reactions.replace(serializers.deserialize(value,
              specifiedType: const FullType(ReactionRollup)) as ReactionRollup);
          break;
      }
    }

    return result.build();
  }
}

class _$Issue extends Issue {
  @override
  final int id;
  @override
  final String nodeId;
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
  final int number;
  @override
  final String state;
  @override
  final String title;
  @override
  final String body;
  @override
  final SimpleUser user;
  @override
  final BuiltList labels;
  @override
  final SimpleUser assignee;
  @override
  final BuiltList<SimpleUser> assignees;
  @override
  final Milestone milestone;
  @override
  final bool locked;
  @override
  final String activeLockReason;
  @override
  final int comments;
  @override
  final IssueSimplePullRequest pullRequest;
  @override
  final DateTime closedAt;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final SimpleUser closedBy;
  @override
  final String bodyHtml;
  @override
  final String bodyText;
  @override
  final String timelineUrl;
  @override
  final Repository repository;
  @override
  final Integration performedViaGithubApp;
  @override
  final AuthorAssociation authorAssociation;
  @override
  final ReactionRollup reactions;

  factory _$Issue([void Function(IssueBuilder) updates]) =>
      (new IssueBuilder()..update(updates)).build();

  _$Issue._(
      {this.id,
      this.nodeId,
      this.url,
      this.repositoryUrl,
      this.labelsUrl,
      this.commentsUrl,
      this.eventsUrl,
      this.htmlUrl,
      this.number,
      this.state,
      this.title,
      this.body,
      this.user,
      this.labels,
      this.assignee,
      this.assignees,
      this.milestone,
      this.locked,
      this.activeLockReason,
      this.comments,
      this.pullRequest,
      this.closedAt,
      this.createdAt,
      this.updatedAt,
      this.closedBy,
      this.bodyHtml,
      this.bodyText,
      this.timelineUrl,
      this.repository,
      this.performedViaGithubApp,
      this.authorAssociation,
      this.reactions})
      : super._();

  @override
  Issue rebuild(void Function(IssueBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IssueBuilder toBuilder() => new IssueBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Issue &&
        id == other.id &&
        nodeId == other.nodeId &&
        url == other.url &&
        repositoryUrl == other.repositoryUrl &&
        labelsUrl == other.labelsUrl &&
        commentsUrl == other.commentsUrl &&
        eventsUrl == other.eventsUrl &&
        htmlUrl == other.htmlUrl &&
        number == other.number &&
        state == other.state &&
        title == other.title &&
        body == other.body &&
        user == other.user &&
        labels == other.labels &&
        assignee == other.assignee &&
        assignees == other.assignees &&
        milestone == other.milestone &&
        locked == other.locked &&
        activeLockReason == other.activeLockReason &&
        comments == other.comments &&
        pullRequest == other.pullRequest &&
        closedAt == other.closedAt &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        closedBy == other.closedBy &&
        bodyHtml == other.bodyHtml &&
        bodyText == other.bodyText &&
        timelineUrl == other.timelineUrl &&
        repository == other.repository &&
        performedViaGithubApp == other.performedViaGithubApp &&
        authorAssociation == other.authorAssociation &&
        reactions == other.reactions;
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
                                                                            $jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc(0, id.hashCode), nodeId.hashCode), url.hashCode), repositoryUrl.hashCode), labelsUrl.hashCode), commentsUrl.hashCode), eventsUrl.hashCode), htmlUrl.hashCode), number.hashCode), state.hashCode), title.hashCode), body.hashCode), user.hashCode),
                                                                                labels.hashCode),
                                                                            assignee.hashCode),
                                                                        assignees.hashCode),
                                                                    milestone.hashCode),
                                                                locked.hashCode),
                                                            activeLockReason.hashCode),
                                                        comments.hashCode),
                                                    pullRequest.hashCode),
                                                closedAt.hashCode),
                                            createdAt.hashCode),
                                        updatedAt.hashCode),
                                    closedBy.hashCode),
                                bodyHtml.hashCode),
                            bodyText.hashCode),
                        timelineUrl.hashCode),
                    repository.hashCode),
                performedViaGithubApp.hashCode),
            authorAssociation.hashCode),
        reactions.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Issue')
          ..add('id', id)
          ..add('nodeId', nodeId)
          ..add('url', url)
          ..add('repositoryUrl', repositoryUrl)
          ..add('labelsUrl', labelsUrl)
          ..add('commentsUrl', commentsUrl)
          ..add('eventsUrl', eventsUrl)
          ..add('htmlUrl', htmlUrl)
          ..add('number', number)
          ..add('state', state)
          ..add('title', title)
          ..add('body', body)
          ..add('user', user)
          ..add('labels', labels)
          ..add('assignee', assignee)
          ..add('assignees', assignees)
          ..add('milestone', milestone)
          ..add('locked', locked)
          ..add('activeLockReason', activeLockReason)
          ..add('comments', comments)
          ..add('pullRequest', pullRequest)
          ..add('closedAt', closedAt)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('closedBy', closedBy)
          ..add('bodyHtml', bodyHtml)
          ..add('bodyText', bodyText)
          ..add('timelineUrl', timelineUrl)
          ..add('repository', repository)
          ..add('performedViaGithubApp', performedViaGithubApp)
          ..add('authorAssociation', authorAssociation)
          ..add('reactions', reactions))
        .toString();
  }
}

class IssueBuilder implements Builder<Issue, IssueBuilder> {
  _$Issue _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _nodeId;
  String get nodeId => _$this._nodeId;
  set nodeId(String nodeId) => _$this._nodeId = nodeId;

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

  int _number;
  int get number => _$this._number;
  set number(int number) => _$this._number = number;

  String _state;
  String get state => _$this._state;
  set state(String state) => _$this._state = state;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _body;
  String get body => _$this._body;
  set body(String body) => _$this._body = body;

  SimpleUserBuilder _user;
  SimpleUserBuilder get user => _$this._user ??= new SimpleUserBuilder();
  set user(SimpleUserBuilder user) => _$this._user = user;

  BuiltList _labels;
  BuiltList get labels => _$this._labels;
  set labels(BuiltList labels) => _$this._labels = labels;

  SimpleUserBuilder _assignee;
  SimpleUserBuilder get assignee =>
      _$this._assignee ??= new SimpleUserBuilder();
  set assignee(SimpleUserBuilder assignee) => _$this._assignee = assignee;

  ListBuilder<SimpleUser> _assignees;
  ListBuilder<SimpleUser> get assignees =>
      _$this._assignees ??= new ListBuilder<SimpleUser>();
  set assignees(ListBuilder<SimpleUser> assignees) =>
      _$this._assignees = assignees;

  MilestoneBuilder _milestone;
  MilestoneBuilder get milestone =>
      _$this._milestone ??= new MilestoneBuilder();
  set milestone(MilestoneBuilder milestone) => _$this._milestone = milestone;

  bool _locked;
  bool get locked => _$this._locked;
  set locked(bool locked) => _$this._locked = locked;

  String _activeLockReason;
  String get activeLockReason => _$this._activeLockReason;
  set activeLockReason(String activeLockReason) =>
      _$this._activeLockReason = activeLockReason;

  int _comments;
  int get comments => _$this._comments;
  set comments(int comments) => _$this._comments = comments;

  IssueSimplePullRequestBuilder _pullRequest;
  IssueSimplePullRequestBuilder get pullRequest =>
      _$this._pullRequest ??= new IssueSimplePullRequestBuilder();
  set pullRequest(IssueSimplePullRequestBuilder pullRequest) =>
      _$this._pullRequest = pullRequest;

  DateTime _closedAt;
  DateTime get closedAt => _$this._closedAt;
  set closedAt(DateTime closedAt) => _$this._closedAt = closedAt;

  DateTime _createdAt;
  DateTime get createdAt => _$this._createdAt;
  set createdAt(DateTime createdAt) => _$this._createdAt = createdAt;

  DateTime _updatedAt;
  DateTime get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime updatedAt) => _$this._updatedAt = updatedAt;

  SimpleUserBuilder _closedBy;
  SimpleUserBuilder get closedBy =>
      _$this._closedBy ??= new SimpleUserBuilder();
  set closedBy(SimpleUserBuilder closedBy) => _$this._closedBy = closedBy;

  String _bodyHtml;
  String get bodyHtml => _$this._bodyHtml;
  set bodyHtml(String bodyHtml) => _$this._bodyHtml = bodyHtml;

  String _bodyText;
  String get bodyText => _$this._bodyText;
  set bodyText(String bodyText) => _$this._bodyText = bodyText;

  String _timelineUrl;
  String get timelineUrl => _$this._timelineUrl;
  set timelineUrl(String timelineUrl) => _$this._timelineUrl = timelineUrl;

  RepositoryBuilder _repository;
  RepositoryBuilder get repository =>
      _$this._repository ??= new RepositoryBuilder();
  set repository(RepositoryBuilder repository) =>
      _$this._repository = repository;

  IntegrationBuilder _performedViaGithubApp;
  IntegrationBuilder get performedViaGithubApp =>
      _$this._performedViaGithubApp ??= new IntegrationBuilder();
  set performedViaGithubApp(IntegrationBuilder performedViaGithubApp) =>
      _$this._performedViaGithubApp = performedViaGithubApp;

  AuthorAssociation _authorAssociation;
  AuthorAssociation get authorAssociation => _$this._authorAssociation;
  set authorAssociation(AuthorAssociation authorAssociation) =>
      _$this._authorAssociation = authorAssociation;

  ReactionRollupBuilder _reactions;
  ReactionRollupBuilder get reactions =>
      _$this._reactions ??= new ReactionRollupBuilder();
  set reactions(ReactionRollupBuilder reactions) =>
      _$this._reactions = reactions;

  IssueBuilder() {
    Issue._initializeBuilder(this);
  }

  IssueBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _nodeId = _$v.nodeId;
      _url = _$v.url;
      _repositoryUrl = _$v.repositoryUrl;
      _labelsUrl = _$v.labelsUrl;
      _commentsUrl = _$v.commentsUrl;
      _eventsUrl = _$v.eventsUrl;
      _htmlUrl = _$v.htmlUrl;
      _number = _$v.number;
      _state = _$v.state;
      _title = _$v.title;
      _body = _$v.body;
      _user = _$v.user?.toBuilder();
      _labels = _$v.labels;
      _assignee = _$v.assignee?.toBuilder();
      _assignees = _$v.assignees?.toBuilder();
      _milestone = _$v.milestone?.toBuilder();
      _locked = _$v.locked;
      _activeLockReason = _$v.activeLockReason;
      _comments = _$v.comments;
      _pullRequest = _$v.pullRequest?.toBuilder();
      _closedAt = _$v.closedAt;
      _createdAt = _$v.createdAt;
      _updatedAt = _$v.updatedAt;
      _closedBy = _$v.closedBy?.toBuilder();
      _bodyHtml = _$v.bodyHtml;
      _bodyText = _$v.bodyText;
      _timelineUrl = _$v.timelineUrl;
      _repository = _$v.repository?.toBuilder();
      _performedViaGithubApp = _$v.performedViaGithubApp?.toBuilder();
      _authorAssociation = _$v.authorAssociation;
      _reactions = _$v.reactions?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Issue other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Issue;
  }

  @override
  void update(void Function(IssueBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Issue build() {
    _$Issue _$result;
    try {
      _$result = _$v ??
          new _$Issue._(
              id: id,
              nodeId: nodeId,
              url: url,
              repositoryUrl: repositoryUrl,
              labelsUrl: labelsUrl,
              commentsUrl: commentsUrl,
              eventsUrl: eventsUrl,
              htmlUrl: htmlUrl,
              number: number,
              state: state,
              title: title,
              body: body,
              user: _user?.build(),
              labels: labels,
              assignee: _assignee?.build(),
              assignees: _assignees?.build(),
              milestone: _milestone?.build(),
              locked: locked,
              activeLockReason: activeLockReason,
              comments: comments,
              pullRequest: _pullRequest?.build(),
              closedAt: closedAt,
              createdAt: createdAt,
              updatedAt: updatedAt,
              closedBy: _closedBy?.build(),
              bodyHtml: bodyHtml,
              bodyText: bodyText,
              timelineUrl: timelineUrl,
              repository: _repository?.build(),
              performedViaGithubApp: _performedViaGithubApp?.build(),
              authorAssociation: authorAssociation,
              reactions: _reactions?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'user';
        _user?.build();

        _$failedField = 'assignee';
        _assignee?.build();
        _$failedField = 'assignees';
        _assignees?.build();
        _$failedField = 'milestone';
        _milestone?.build();

        _$failedField = 'pullRequest';
        _pullRequest?.build();

        _$failedField = 'closedBy';
        _closedBy?.build();

        _$failedField = 'repository';
        _repository?.build();
        _$failedField = 'performedViaGithubApp';
        _performedViaGithubApp?.build();

        _$failedField = 'reactions';
        _reactions?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Issue', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
