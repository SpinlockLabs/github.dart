// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'issue_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<IssueEvent> _$issueEventSerializer = new _$IssueEventSerializer();

class _$IssueEventSerializer implements StructuredSerializer<IssueEvent> {
  @override
  final Iterable<Type> types = const [IssueEvent, _$IssueEvent];
  @override
  final String wireName = 'IssueEvent';

  @override
  Iterable<Object> serialize(Serializers serializers, IssueEvent object,
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
    if (object.actor != null) {
      result
        ..add('actor')
        ..add(serializers.serialize(object.actor,
            specifiedType: const FullType(SimpleUser)));
    }
    if (object.event != null) {
      result
        ..add('event')
        ..add(serializers.serialize(object.event,
            specifiedType: const FullType(String)));
    }
    if (object.commitId != null) {
      result
        ..add('commit_id')
        ..add(serializers.serialize(object.commitId,
            specifiedType: const FullType(String)));
    }
    if (object.commitUrl != null) {
      result
        ..add('commit_url')
        ..add(serializers.serialize(object.commitUrl,
            specifiedType: const FullType(String)));
    }
    if (object.createdAt != null) {
      result
        ..add('created_at')
        ..add(serializers.serialize(object.createdAt,
            specifiedType: const FullType(DateTime)));
    }
    if (object.issue != null) {
      result
        ..add('issue')
        ..add(serializers.serialize(object.issue,
            specifiedType: const FullType(IssueSimple)));
    }
    if (object.label != null) {
      result
        ..add('label')
        ..add(serializers.serialize(object.label,
            specifiedType: const FullType(IssueEventLabel)));
    }
    if (object.assignee != null) {
      result
        ..add('assignee')
        ..add(serializers.serialize(object.assignee,
            specifiedType: const FullType(SimpleUser)));
    }
    if (object.assigner != null) {
      result
        ..add('assigner')
        ..add(serializers.serialize(object.assigner,
            specifiedType: const FullType(SimpleUser)));
    }
    if (object.reviewRequester != null) {
      result
        ..add('review_requester')
        ..add(serializers.serialize(object.reviewRequester,
            specifiedType: const FullType(SimpleUser)));
    }
    if (object.requestedReviewer != null) {
      result
        ..add('requested_reviewer')
        ..add(serializers.serialize(object.requestedReviewer,
            specifiedType: const FullType(SimpleUser)));
    }
    if (object.requestedTeam != null) {
      result
        ..add('requested_team')
        ..add(serializers.serialize(object.requestedTeam,
            specifiedType: const FullType(Team)));
    }
    if (object.dismissedReview != null) {
      result
        ..add('dismissed_review')
        ..add(serializers.serialize(object.dismissedReview,
            specifiedType: const FullType(IssueEventDismissedReview)));
    }
    if (object.milestone != null) {
      result
        ..add('milestone')
        ..add(serializers.serialize(object.milestone,
            specifiedType: const FullType(IssueEventMilestone)));
    }
    if (object.projectCard != null) {
      result
        ..add('project_card')
        ..add(serializers.serialize(object.projectCard,
            specifiedType: const FullType(IssueEventProjectCard)));
    }
    if (object.rename != null) {
      result
        ..add('rename')
        ..add(serializers.serialize(object.rename,
            specifiedType: const FullType(IssueEventRename)));
    }
    if (object.authorAssociation != null) {
      result
        ..add('author_association')
        ..add(serializers.serialize(object.authorAssociation,
            specifiedType: const FullType(AuthorAssociation)));
    }
    if (object.lockReason != null) {
      result
        ..add('lock_reason')
        ..add(serializers.serialize(object.lockReason,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  IssueEvent deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new IssueEventBuilder();

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
        case 'actor':
          result.actor.replace(serializers.deserialize(value,
              specifiedType: const FullType(SimpleUser)) as SimpleUser);
          break;
        case 'event':
          result.event = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'commit_id':
          result.commitId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'commit_url':
          result.commitUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'issue':
          result.issue.replace(serializers.deserialize(value,
              specifiedType: const FullType(IssueSimple)) as IssueSimple);
          break;
        case 'label':
          result.label.replace(serializers.deserialize(value,
                  specifiedType: const FullType(IssueEventLabel))
              as IssueEventLabel);
          break;
        case 'assignee':
          result.assignee.replace(serializers.deserialize(value,
              specifiedType: const FullType(SimpleUser)) as SimpleUser);
          break;
        case 'assigner':
          result.assigner.replace(serializers.deserialize(value,
              specifiedType: const FullType(SimpleUser)) as SimpleUser);
          break;
        case 'review_requester':
          result.reviewRequester.replace(serializers.deserialize(value,
              specifiedType: const FullType(SimpleUser)) as SimpleUser);
          break;
        case 'requested_reviewer':
          result.requestedReviewer.replace(serializers.deserialize(value,
              specifiedType: const FullType(SimpleUser)) as SimpleUser);
          break;
        case 'requested_team':
          result.requestedTeam.replace(serializers.deserialize(value,
              specifiedType: const FullType(Team)) as Team);
          break;
        case 'dismissed_review':
          result.dismissedReview.replace(serializers.deserialize(value,
                  specifiedType: const FullType(IssueEventDismissedReview))
              as IssueEventDismissedReview);
          break;
        case 'milestone':
          result.milestone.replace(serializers.deserialize(value,
                  specifiedType: const FullType(IssueEventMilestone))
              as IssueEventMilestone);
          break;
        case 'project_card':
          result.projectCard.replace(serializers.deserialize(value,
                  specifiedType: const FullType(IssueEventProjectCard))
              as IssueEventProjectCard);
          break;
        case 'rename':
          result.rename.replace(serializers.deserialize(value,
                  specifiedType: const FullType(IssueEventRename))
              as IssueEventRename);
          break;
        case 'author_association':
          result.authorAssociation = serializers.deserialize(value,
                  specifiedType: const FullType(AuthorAssociation))
              as AuthorAssociation;
          break;
        case 'lock_reason':
          result.lockReason = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$IssueEvent extends IssueEvent {
  @override
  final int id;
  @override
  final String nodeId;
  @override
  final String url;
  @override
  final SimpleUser actor;
  @override
  final String event;
  @override
  final String commitId;
  @override
  final String commitUrl;
  @override
  final DateTime createdAt;
  @override
  final IssueSimple issue;
  @override
  final IssueEventLabel label;
  @override
  final SimpleUser assignee;
  @override
  final SimpleUser assigner;
  @override
  final SimpleUser reviewRequester;
  @override
  final SimpleUser requestedReviewer;
  @override
  final Team requestedTeam;
  @override
  final IssueEventDismissedReview dismissedReview;
  @override
  final IssueEventMilestone milestone;
  @override
  final IssueEventProjectCard projectCard;
  @override
  final IssueEventRename rename;
  @override
  final AuthorAssociation authorAssociation;
  @override
  final String lockReason;

  factory _$IssueEvent([void Function(IssueEventBuilder) updates]) =>
      (new IssueEventBuilder()..update(updates)).build();

  _$IssueEvent._(
      {this.id,
      this.nodeId,
      this.url,
      this.actor,
      this.event,
      this.commitId,
      this.commitUrl,
      this.createdAt,
      this.issue,
      this.label,
      this.assignee,
      this.assigner,
      this.reviewRequester,
      this.requestedReviewer,
      this.requestedTeam,
      this.dismissedReview,
      this.milestone,
      this.projectCard,
      this.rename,
      this.authorAssociation,
      this.lockReason})
      : super._();

  @override
  IssueEvent rebuild(void Function(IssueEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IssueEventBuilder toBuilder() => new IssueEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IssueEvent &&
        id == other.id &&
        nodeId == other.nodeId &&
        url == other.url &&
        actor == other.actor &&
        event == other.event &&
        commitId == other.commitId &&
        commitUrl == other.commitUrl &&
        createdAt == other.createdAt &&
        issue == other.issue &&
        label == other.label &&
        assignee == other.assignee &&
        assigner == other.assigner &&
        reviewRequester == other.reviewRequester &&
        requestedReviewer == other.requestedReviewer &&
        requestedTeam == other.requestedTeam &&
        dismissedReview == other.dismissedReview &&
        milestone == other.milestone &&
        projectCard == other.projectCard &&
        rename == other.rename &&
        authorAssociation == other.authorAssociation &&
        lockReason == other.lockReason;
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
                                                                            $jc($jc($jc(0, id.hashCode), nodeId.hashCode),
                                                                                url.hashCode),
                                                                            actor.hashCode),
                                                                        event.hashCode),
                                                                    commitId.hashCode),
                                                                commitUrl.hashCode),
                                                            createdAt.hashCode),
                                                        issue.hashCode),
                                                    label.hashCode),
                                                assignee.hashCode),
                                            assigner.hashCode),
                                        reviewRequester.hashCode),
                                    requestedReviewer.hashCode),
                                requestedTeam.hashCode),
                            dismissedReview.hashCode),
                        milestone.hashCode),
                    projectCard.hashCode),
                rename.hashCode),
            authorAssociation.hashCode),
        lockReason.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('IssueEvent')
          ..add('id', id)
          ..add('nodeId', nodeId)
          ..add('url', url)
          ..add('actor', actor)
          ..add('event', event)
          ..add('commitId', commitId)
          ..add('commitUrl', commitUrl)
          ..add('createdAt', createdAt)
          ..add('issue', issue)
          ..add('label', label)
          ..add('assignee', assignee)
          ..add('assigner', assigner)
          ..add('reviewRequester', reviewRequester)
          ..add('requestedReviewer', requestedReviewer)
          ..add('requestedTeam', requestedTeam)
          ..add('dismissedReview', dismissedReview)
          ..add('milestone', milestone)
          ..add('projectCard', projectCard)
          ..add('rename', rename)
          ..add('authorAssociation', authorAssociation)
          ..add('lockReason', lockReason))
        .toString();
  }
}

class IssueEventBuilder implements Builder<IssueEvent, IssueEventBuilder> {
  _$IssueEvent _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _nodeId;
  String get nodeId => _$this._nodeId;
  set nodeId(String nodeId) => _$this._nodeId = nodeId;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  SimpleUserBuilder _actor;
  SimpleUserBuilder get actor => _$this._actor ??= new SimpleUserBuilder();
  set actor(SimpleUserBuilder actor) => _$this._actor = actor;

  String _event;
  String get event => _$this._event;
  set event(String event) => _$this._event = event;

  String _commitId;
  String get commitId => _$this._commitId;
  set commitId(String commitId) => _$this._commitId = commitId;

  String _commitUrl;
  String get commitUrl => _$this._commitUrl;
  set commitUrl(String commitUrl) => _$this._commitUrl = commitUrl;

  DateTime _createdAt;
  DateTime get createdAt => _$this._createdAt;
  set createdAt(DateTime createdAt) => _$this._createdAt = createdAt;

  IssueSimpleBuilder _issue;
  IssueSimpleBuilder get issue => _$this._issue ??= new IssueSimpleBuilder();
  set issue(IssueSimpleBuilder issue) => _$this._issue = issue;

  IssueEventLabelBuilder _label;
  IssueEventLabelBuilder get label =>
      _$this._label ??= new IssueEventLabelBuilder();
  set label(IssueEventLabelBuilder label) => _$this._label = label;

  SimpleUserBuilder _assignee;
  SimpleUserBuilder get assignee =>
      _$this._assignee ??= new SimpleUserBuilder();
  set assignee(SimpleUserBuilder assignee) => _$this._assignee = assignee;

  SimpleUserBuilder _assigner;
  SimpleUserBuilder get assigner =>
      _$this._assigner ??= new SimpleUserBuilder();
  set assigner(SimpleUserBuilder assigner) => _$this._assigner = assigner;

  SimpleUserBuilder _reviewRequester;
  SimpleUserBuilder get reviewRequester =>
      _$this._reviewRequester ??= new SimpleUserBuilder();
  set reviewRequester(SimpleUserBuilder reviewRequester) =>
      _$this._reviewRequester = reviewRequester;

  SimpleUserBuilder _requestedReviewer;
  SimpleUserBuilder get requestedReviewer =>
      _$this._requestedReviewer ??= new SimpleUserBuilder();
  set requestedReviewer(SimpleUserBuilder requestedReviewer) =>
      _$this._requestedReviewer = requestedReviewer;

  TeamBuilder _requestedTeam;
  TeamBuilder get requestedTeam => _$this._requestedTeam ??= new TeamBuilder();
  set requestedTeam(TeamBuilder requestedTeam) =>
      _$this._requestedTeam = requestedTeam;

  IssueEventDismissedReviewBuilder _dismissedReview;
  IssueEventDismissedReviewBuilder get dismissedReview =>
      _$this._dismissedReview ??= new IssueEventDismissedReviewBuilder();
  set dismissedReview(IssueEventDismissedReviewBuilder dismissedReview) =>
      _$this._dismissedReview = dismissedReview;

  IssueEventMilestoneBuilder _milestone;
  IssueEventMilestoneBuilder get milestone =>
      _$this._milestone ??= new IssueEventMilestoneBuilder();
  set milestone(IssueEventMilestoneBuilder milestone) =>
      _$this._milestone = milestone;

  IssueEventProjectCardBuilder _projectCard;
  IssueEventProjectCardBuilder get projectCard =>
      _$this._projectCard ??= new IssueEventProjectCardBuilder();
  set projectCard(IssueEventProjectCardBuilder projectCard) =>
      _$this._projectCard = projectCard;

  IssueEventRenameBuilder _rename;
  IssueEventRenameBuilder get rename =>
      _$this._rename ??= new IssueEventRenameBuilder();
  set rename(IssueEventRenameBuilder rename) => _$this._rename = rename;

  AuthorAssociation _authorAssociation;
  AuthorAssociation get authorAssociation => _$this._authorAssociation;
  set authorAssociation(AuthorAssociation authorAssociation) =>
      _$this._authorAssociation = authorAssociation;

  String _lockReason;
  String get lockReason => _$this._lockReason;
  set lockReason(String lockReason) => _$this._lockReason = lockReason;

  IssueEventBuilder() {
    IssueEvent._initializeBuilder(this);
  }

  IssueEventBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _nodeId = _$v.nodeId;
      _url = _$v.url;
      _actor = _$v.actor?.toBuilder();
      _event = _$v.event;
      _commitId = _$v.commitId;
      _commitUrl = _$v.commitUrl;
      _createdAt = _$v.createdAt;
      _issue = _$v.issue?.toBuilder();
      _label = _$v.label?.toBuilder();
      _assignee = _$v.assignee?.toBuilder();
      _assigner = _$v.assigner?.toBuilder();
      _reviewRequester = _$v.reviewRequester?.toBuilder();
      _requestedReviewer = _$v.requestedReviewer?.toBuilder();
      _requestedTeam = _$v.requestedTeam?.toBuilder();
      _dismissedReview = _$v.dismissedReview?.toBuilder();
      _milestone = _$v.milestone?.toBuilder();
      _projectCard = _$v.projectCard?.toBuilder();
      _rename = _$v.rename?.toBuilder();
      _authorAssociation = _$v.authorAssociation;
      _lockReason = _$v.lockReason;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IssueEvent other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$IssueEvent;
  }

  @override
  void update(void Function(IssueEventBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$IssueEvent build() {
    _$IssueEvent _$result;
    try {
      _$result = _$v ??
          new _$IssueEvent._(
              id: id,
              nodeId: nodeId,
              url: url,
              actor: _actor?.build(),
              event: event,
              commitId: commitId,
              commitUrl: commitUrl,
              createdAt: createdAt,
              issue: _issue?.build(),
              label: _label?.build(),
              assignee: _assignee?.build(),
              assigner: _assigner?.build(),
              reviewRequester: _reviewRequester?.build(),
              requestedReviewer: _requestedReviewer?.build(),
              requestedTeam: _requestedTeam?.build(),
              dismissedReview: _dismissedReview?.build(),
              milestone: _milestone?.build(),
              projectCard: _projectCard?.build(),
              rename: _rename?.build(),
              authorAssociation: authorAssociation,
              lockReason: lockReason);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'actor';
        _actor?.build();

        _$failedField = 'issue';
        _issue?.build();
        _$failedField = 'label';
        _label?.build();
        _$failedField = 'assignee';
        _assignee?.build();
        _$failedField = 'assigner';
        _assigner?.build();
        _$failedField = 'reviewRequester';
        _reviewRequester?.build();
        _$failedField = 'requestedReviewer';
        _requestedReviewer?.build();
        _$failedField = 'requestedTeam';
        _requestedTeam?.build();
        _$failedField = 'dismissedReview';
        _dismissedReview?.build();
        _$failedField = 'milestone';
        _milestone?.build();
        _$failedField = 'projectCard';
        _projectCard?.build();
        _$failedField = 'rename';
        _rename?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'IssueEvent', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
