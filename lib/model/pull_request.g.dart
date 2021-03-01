// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'pull_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PullRequestStateEnum _$pullRequestStateEnum_open =
    const PullRequestStateEnum._('open');
const PullRequestStateEnum _$pullRequestStateEnum_closed =
    const PullRequestStateEnum._('closed');

PullRequestStateEnum _$pullRequestStateEnumValueOf(String name) {
  switch (name) {
    case 'open':
      return _$pullRequestStateEnum_open;
    case 'closed':
      return _$pullRequestStateEnum_closed;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<PullRequestStateEnum> _$pullRequestStateEnumValues =
    new BuiltSet<PullRequestStateEnum>(const <PullRequestStateEnum>[
  _$pullRequestStateEnum_open,
  _$pullRequestStateEnum_closed,
]);

Serializer<PullRequest> _$pullRequestSerializer = new _$PullRequestSerializer();
Serializer<PullRequestStateEnum> _$pullRequestStateEnumSerializer =
    new _$PullRequestStateEnumSerializer();

class _$PullRequestSerializer implements StructuredSerializer<PullRequest> {
  @override
  final Iterable<Type> types = const [PullRequest, _$PullRequest];
  @override
  final String wireName = 'PullRequest';

  @override
  Iterable<Object> serialize(Serializers serializers, PullRequest object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.url != null) {
      result
        ..add('url')
        ..add(serializers.serialize(object.url,
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
    if (object.htmlUrl != null) {
      result
        ..add('html_url')
        ..add(serializers.serialize(object.htmlUrl,
            specifiedType: const FullType(String)));
    }
    if (object.diffUrl != null) {
      result
        ..add('diff_url')
        ..add(serializers.serialize(object.diffUrl,
            specifiedType: const FullType(String)));
    }
    if (object.patchUrl != null) {
      result
        ..add('patch_url')
        ..add(serializers.serialize(object.patchUrl,
            specifiedType: const FullType(String)));
    }
    if (object.issueUrl != null) {
      result
        ..add('issue_url')
        ..add(serializers.serialize(object.issueUrl,
            specifiedType: const FullType(String)));
    }
    if (object.commitsUrl != null) {
      result
        ..add('commits_url')
        ..add(serializers.serialize(object.commitsUrl,
            specifiedType: const FullType(String)));
    }
    if (object.reviewCommentsUrl != null) {
      result
        ..add('review_comments_url')
        ..add(serializers.serialize(object.reviewCommentsUrl,
            specifiedType: const FullType(String)));
    }
    if (object.reviewCommentUrl != null) {
      result
        ..add('review_comment_url')
        ..add(serializers.serialize(object.reviewCommentUrl,
            specifiedType: const FullType(String)));
    }
    if (object.commentsUrl != null) {
      result
        ..add('comments_url')
        ..add(serializers.serialize(object.commentsUrl,
            specifiedType: const FullType(String)));
    }
    if (object.statusesUrl != null) {
      result
        ..add('statuses_url')
        ..add(serializers.serialize(object.statusesUrl,
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
            specifiedType: const FullType(PullRequestStateEnum)));
    }
    if (object.locked != null) {
      result
        ..add('locked')
        ..add(serializers.serialize(object.locked,
            specifiedType: const FullType(bool)));
    }
    if (object.title != null) {
      result
        ..add('title')
        ..add(serializers.serialize(object.title,
            specifiedType: const FullType(String)));
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
    if (object.labels != null) {
      result
        ..add('labels')
        ..add(serializers.serialize(object.labels,
            specifiedType: const FullType(
                BuiltList, const [const FullType(PullRequestLabels)])));
    }
    if (object.milestone != null) {
      result
        ..add('milestone')
        ..add(serializers.serialize(object.milestone,
            specifiedType: const FullType(Milestone)));
    }
    if (object.activeLockReason != null) {
      result
        ..add('active_lock_reason')
        ..add(serializers.serialize(object.activeLockReason,
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
    if (object.closedAt != null) {
      result
        ..add('closed_at')
        ..add(serializers.serialize(object.closedAt,
            specifiedType: const FullType(DateTime)));
    }
    if (object.mergedAt != null) {
      result
        ..add('merged_at')
        ..add(serializers.serialize(object.mergedAt,
            specifiedType: const FullType(DateTime)));
    }
    if (object.mergeCommitSha != null) {
      result
        ..add('merge_commit_sha')
        ..add(serializers.serialize(object.mergeCommitSha,
            specifiedType: const FullType(String)));
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
    if (object.requestedReviewers != null) {
      result
        ..add('requested_reviewers')
        ..add(serializers.serialize(object.requestedReviewers,
            specifiedType:
                const FullType(BuiltList, const [const FullType(SimpleUser)])));
    }
    if (object.requestedTeams != null) {
      result
        ..add('requested_teams')
        ..add(serializers.serialize(object.requestedTeams,
            specifiedType:
                const FullType(BuiltList, const [const FullType(TeamSimple)])));
    }
    if (object.head != null) {
      result
        ..add('head')
        ..add(serializers.serialize(object.head,
            specifiedType: const FullType(PullRequestHead)));
    }
    if (object.base != null) {
      result
        ..add('base')
        ..add(serializers.serialize(object.base,
            specifiedType: const FullType(PullRequestBase)));
    }
    if (object.links != null) {
      result
        ..add('_links')
        ..add(serializers.serialize(object.links,
            specifiedType: const FullType(PullRequestSimpleLinks)));
    }
    if (object.authorAssociation != null) {
      result
        ..add('author_association')
        ..add(serializers.serialize(object.authorAssociation,
            specifiedType: const FullType(AuthorAssociation)));
    }
    if (object.autoMerge != null) {
      result
        ..add('auto_merge')
        ..add(serializers.serialize(object.autoMerge,
            specifiedType: const FullType(AutoMerge)));
    }
    if (object.draft != null) {
      result
        ..add('draft')
        ..add(serializers.serialize(object.draft,
            specifiedType: const FullType(bool)));
    }
    if (object.merged != null) {
      result
        ..add('merged')
        ..add(serializers.serialize(object.merged,
            specifiedType: const FullType(bool)));
    }
    if (object.mergeable != null) {
      result
        ..add('mergeable')
        ..add(serializers.serialize(object.mergeable,
            specifiedType: const FullType(bool)));
    }
    if (object.rebaseable != null) {
      result
        ..add('rebaseable')
        ..add(serializers.serialize(object.rebaseable,
            specifiedType: const FullType(bool)));
    }
    if (object.mergeableState != null) {
      result
        ..add('mergeable_state')
        ..add(serializers.serialize(object.mergeableState,
            specifiedType: const FullType(String)));
    }
    if (object.mergedBy != null) {
      result
        ..add('merged_by')
        ..add(serializers.serialize(object.mergedBy,
            specifiedType: const FullType(SimpleUser)));
    }
    if (object.comments != null) {
      result
        ..add('comments')
        ..add(serializers.serialize(object.comments,
            specifiedType: const FullType(int)));
    }
    if (object.reviewComments != null) {
      result
        ..add('review_comments')
        ..add(serializers.serialize(object.reviewComments,
            specifiedType: const FullType(int)));
    }
    if (object.maintainerCanModify != null) {
      result
        ..add('maintainer_can_modify')
        ..add(serializers.serialize(object.maintainerCanModify,
            specifiedType: const FullType(bool)));
    }
    if (object.commits != null) {
      result
        ..add('commits')
        ..add(serializers.serialize(object.commits,
            specifiedType: const FullType(int)));
    }
    if (object.additions != null) {
      result
        ..add('additions')
        ..add(serializers.serialize(object.additions,
            specifiedType: const FullType(int)));
    }
    if (object.deletions != null) {
      result
        ..add('deletions')
        ..add(serializers.serialize(object.deletions,
            specifiedType: const FullType(int)));
    }
    if (object.changedFiles != null) {
      result
        ..add('changed_files')
        ..add(serializers.serialize(object.changedFiles,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  PullRequest deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PullRequestBuilder();

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
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'node_id':
          result.nodeId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'html_url':
          result.htmlUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'diff_url':
          result.diffUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'patch_url':
          result.patchUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'issue_url':
          result.issueUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'commits_url':
          result.commitsUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'review_comments_url':
          result.reviewCommentsUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'review_comment_url':
          result.reviewCommentUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'comments_url':
          result.commentsUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'statuses_url':
          result.statusesUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'number':
          result.number = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'state':
          result.state = serializers.deserialize(value,
                  specifiedType: const FullType(PullRequestStateEnum))
              as PullRequestStateEnum;
          break;
        case 'locked':
          result.locked = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'user':
          result.user.replace(serializers.deserialize(value,
              specifiedType: const FullType(SimpleUser)) as SimpleUser);
          break;
        case 'body':
          result.body = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'labels':
          result.labels.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(PullRequestLabels)]))
              as BuiltList<Object>);
          break;
        case 'milestone':
          result.milestone.replace(serializers.deserialize(value,
              specifiedType: const FullType(Milestone)) as Milestone);
          break;
        case 'active_lock_reason':
          result.activeLockReason = serializers.deserialize(value,
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
        case 'closed_at':
          result.closedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'merged_at':
          result.mergedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'merge_commit_sha':
          result.mergeCommitSha = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
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
        case 'requested_reviewers':
          result.requestedReviewers.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(SimpleUser)]))
              as BuiltList<Object>);
          break;
        case 'requested_teams':
          result.requestedTeams.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(TeamSimple)]))
              as BuiltList<Object>);
          break;
        case 'head':
          result.head.replace(serializers.deserialize(value,
                  specifiedType: const FullType(PullRequestHead))
              as PullRequestHead);
          break;
        case 'base':
          result.base.replace(serializers.deserialize(value,
                  specifiedType: const FullType(PullRequestBase))
              as PullRequestBase);
          break;
        case '_links':
          result.links.replace(serializers.deserialize(value,
                  specifiedType: const FullType(PullRequestSimpleLinks))
              as PullRequestSimpleLinks);
          break;
        case 'author_association':
          result.authorAssociation = serializers.deserialize(value,
                  specifiedType: const FullType(AuthorAssociation))
              as AuthorAssociation;
          break;
        case 'auto_merge':
          result.autoMerge.replace(serializers.deserialize(value,
              specifiedType: const FullType(AutoMerge)) as AutoMerge);
          break;
        case 'draft':
          result.draft = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'merged':
          result.merged = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'mergeable':
          result.mergeable = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'rebaseable':
          result.rebaseable = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'mergeable_state':
          result.mergeableState = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'merged_by':
          result.mergedBy.replace(serializers.deserialize(value,
              specifiedType: const FullType(SimpleUser)) as SimpleUser);
          break;
        case 'comments':
          result.comments = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'review_comments':
          result.reviewComments = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'maintainer_can_modify':
          result.maintainerCanModify = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'commits':
          result.commits = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'additions':
          result.additions = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'deletions':
          result.deletions = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'changed_files':
          result.changedFiles = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$PullRequestStateEnumSerializer
    implements PrimitiveSerializer<PullRequestStateEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'open': 'open',
    'closed': 'closed',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'open': 'open',
    'closed': 'closed',
  };

  @override
  final Iterable<Type> types = const <Type>[PullRequestStateEnum];
  @override
  final String wireName = 'PullRequestStateEnum';

  @override
  Object serialize(Serializers serializers, PullRequestStateEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PullRequestStateEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PullRequestStateEnum.valueOf(
          _fromWire[serialized] ?? serialized as String);
}

class _$PullRequest extends PullRequest {
  @override
  final String url;
  @override
  final int id;
  @override
  final String nodeId;
  @override
  final String htmlUrl;
  @override
  final String diffUrl;
  @override
  final String patchUrl;
  @override
  final String issueUrl;
  @override
  final String commitsUrl;
  @override
  final String reviewCommentsUrl;
  @override
  final String reviewCommentUrl;
  @override
  final String commentsUrl;
  @override
  final String statusesUrl;
  @override
  final int number;
  @override
  final PullRequestStateEnum state;
  @override
  final bool locked;
  @override
  final String title;
  @override
  final SimpleUser user;
  @override
  final String body;
  @override
  final BuiltList<PullRequestLabels> labels;
  @override
  final Milestone milestone;
  @override
  final String activeLockReason;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final DateTime closedAt;
  @override
  final DateTime mergedAt;
  @override
  final String mergeCommitSha;
  @override
  final SimpleUser assignee;
  @override
  final BuiltList<SimpleUser> assignees;
  @override
  final BuiltList<SimpleUser> requestedReviewers;
  @override
  final BuiltList<TeamSimple> requestedTeams;
  @override
  final PullRequestHead head;
  @override
  final PullRequestBase base;
  @override
  final PullRequestSimpleLinks links;
  @override
  final AuthorAssociation authorAssociation;
  @override
  final AutoMerge autoMerge;
  @override
  final bool draft;
  @override
  final bool merged;
  @override
  final bool mergeable;
  @override
  final bool rebaseable;
  @override
  final String mergeableState;
  @override
  final SimpleUser mergedBy;
  @override
  final int comments;
  @override
  final int reviewComments;
  @override
  final bool maintainerCanModify;
  @override
  final int commits;
  @override
  final int additions;
  @override
  final int deletions;
  @override
  final int changedFiles;

  factory _$PullRequest([void Function(PullRequestBuilder) updates]) =>
      (new PullRequestBuilder()..update(updates)).build();

  _$PullRequest._(
      {this.url,
      this.id,
      this.nodeId,
      this.htmlUrl,
      this.diffUrl,
      this.patchUrl,
      this.issueUrl,
      this.commitsUrl,
      this.reviewCommentsUrl,
      this.reviewCommentUrl,
      this.commentsUrl,
      this.statusesUrl,
      this.number,
      this.state,
      this.locked,
      this.title,
      this.user,
      this.body,
      this.labels,
      this.milestone,
      this.activeLockReason,
      this.createdAt,
      this.updatedAt,
      this.closedAt,
      this.mergedAt,
      this.mergeCommitSha,
      this.assignee,
      this.assignees,
      this.requestedReviewers,
      this.requestedTeams,
      this.head,
      this.base,
      this.links,
      this.authorAssociation,
      this.autoMerge,
      this.draft,
      this.merged,
      this.mergeable,
      this.rebaseable,
      this.mergeableState,
      this.mergedBy,
      this.comments,
      this.reviewComments,
      this.maintainerCanModify,
      this.commits,
      this.additions,
      this.deletions,
      this.changedFiles})
      : super._();

  @override
  PullRequest rebuild(void Function(PullRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PullRequestBuilder toBuilder() => new PullRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PullRequest &&
        url == other.url &&
        id == other.id &&
        nodeId == other.nodeId &&
        htmlUrl == other.htmlUrl &&
        diffUrl == other.diffUrl &&
        patchUrl == other.patchUrl &&
        issueUrl == other.issueUrl &&
        commitsUrl == other.commitsUrl &&
        reviewCommentsUrl == other.reviewCommentsUrl &&
        reviewCommentUrl == other.reviewCommentUrl &&
        commentsUrl == other.commentsUrl &&
        statusesUrl == other.statusesUrl &&
        number == other.number &&
        state == other.state &&
        locked == other.locked &&
        title == other.title &&
        user == other.user &&
        body == other.body &&
        labels == other.labels &&
        milestone == other.milestone &&
        activeLockReason == other.activeLockReason &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        closedAt == other.closedAt &&
        mergedAt == other.mergedAt &&
        mergeCommitSha == other.mergeCommitSha &&
        assignee == other.assignee &&
        assignees == other.assignees &&
        requestedReviewers == other.requestedReviewers &&
        requestedTeams == other.requestedTeams &&
        head == other.head &&
        base == other.base &&
        links == other.links &&
        authorAssociation == other.authorAssociation &&
        autoMerge == other.autoMerge &&
        draft == other.draft &&
        merged == other.merged &&
        mergeable == other.mergeable &&
        rebaseable == other.rebaseable &&
        mergeableState == other.mergeableState &&
        mergedBy == other.mergedBy &&
        comments == other.comments &&
        reviewComments == other.reviewComments &&
        maintainerCanModify == other.maintainerCanModify &&
        commits == other.commits &&
        additions == other.additions &&
        deletions == other.deletions &&
        changedFiles == other.changedFiles;
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
                                                                            $jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc(0, url.hashCode), id.hashCode), nodeId.hashCode), htmlUrl.hashCode), diffUrl.hashCode), patchUrl.hashCode), issueUrl.hashCode), commitsUrl.hashCode), reviewCommentsUrl.hashCode), reviewCommentUrl.hashCode), commentsUrl.hashCode), statusesUrl.hashCode), number.hashCode), state.hashCode), locked.hashCode), title.hashCode), user.hashCode), body.hashCode), labels.hashCode), milestone.hashCode), activeLockReason.hashCode), createdAt.hashCode), updatedAt.hashCode), closedAt.hashCode), mergedAt.hashCode), mergeCommitSha.hashCode), assignee.hashCode), assignees.hashCode), requestedReviewers.hashCode),
                                                                                requestedTeams.hashCode),
                                                                            head.hashCode),
                                                                        base.hashCode),
                                                                    links.hashCode),
                                                                authorAssociation.hashCode),
                                                            autoMerge.hashCode),
                                                        draft.hashCode),
                                                    merged.hashCode),
                                                mergeable.hashCode),
                                            rebaseable.hashCode),
                                        mergeableState.hashCode),
                                    mergedBy.hashCode),
                                comments.hashCode),
                            reviewComments.hashCode),
                        maintainerCanModify.hashCode),
                    commits.hashCode),
                additions.hashCode),
            deletions.hashCode),
        changedFiles.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PullRequest')
          ..add('url', url)
          ..add('id', id)
          ..add('nodeId', nodeId)
          ..add('htmlUrl', htmlUrl)
          ..add('diffUrl', diffUrl)
          ..add('patchUrl', patchUrl)
          ..add('issueUrl', issueUrl)
          ..add('commitsUrl', commitsUrl)
          ..add('reviewCommentsUrl', reviewCommentsUrl)
          ..add('reviewCommentUrl', reviewCommentUrl)
          ..add('commentsUrl', commentsUrl)
          ..add('statusesUrl', statusesUrl)
          ..add('number', number)
          ..add('state', state)
          ..add('locked', locked)
          ..add('title', title)
          ..add('user', user)
          ..add('body', body)
          ..add('labels', labels)
          ..add('milestone', milestone)
          ..add('activeLockReason', activeLockReason)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('closedAt', closedAt)
          ..add('mergedAt', mergedAt)
          ..add('mergeCommitSha', mergeCommitSha)
          ..add('assignee', assignee)
          ..add('assignees', assignees)
          ..add('requestedReviewers', requestedReviewers)
          ..add('requestedTeams', requestedTeams)
          ..add('head', head)
          ..add('base', base)
          ..add('links', links)
          ..add('authorAssociation', authorAssociation)
          ..add('autoMerge', autoMerge)
          ..add('draft', draft)
          ..add('merged', merged)
          ..add('mergeable', mergeable)
          ..add('rebaseable', rebaseable)
          ..add('mergeableState', mergeableState)
          ..add('mergedBy', mergedBy)
          ..add('comments', comments)
          ..add('reviewComments', reviewComments)
          ..add('maintainerCanModify', maintainerCanModify)
          ..add('commits', commits)
          ..add('additions', additions)
          ..add('deletions', deletions)
          ..add('changedFiles', changedFiles))
        .toString();
  }
}

class PullRequestBuilder implements Builder<PullRequest, PullRequestBuilder> {
  _$PullRequest _$v;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _nodeId;
  String get nodeId => _$this._nodeId;
  set nodeId(String nodeId) => _$this._nodeId = nodeId;

  String _htmlUrl;
  String get htmlUrl => _$this._htmlUrl;
  set htmlUrl(String htmlUrl) => _$this._htmlUrl = htmlUrl;

  String _diffUrl;
  String get diffUrl => _$this._diffUrl;
  set diffUrl(String diffUrl) => _$this._diffUrl = diffUrl;

  String _patchUrl;
  String get patchUrl => _$this._patchUrl;
  set patchUrl(String patchUrl) => _$this._patchUrl = patchUrl;

  String _issueUrl;
  String get issueUrl => _$this._issueUrl;
  set issueUrl(String issueUrl) => _$this._issueUrl = issueUrl;

  String _commitsUrl;
  String get commitsUrl => _$this._commitsUrl;
  set commitsUrl(String commitsUrl) => _$this._commitsUrl = commitsUrl;

  String _reviewCommentsUrl;
  String get reviewCommentsUrl => _$this._reviewCommentsUrl;
  set reviewCommentsUrl(String reviewCommentsUrl) =>
      _$this._reviewCommentsUrl = reviewCommentsUrl;

  String _reviewCommentUrl;
  String get reviewCommentUrl => _$this._reviewCommentUrl;
  set reviewCommentUrl(String reviewCommentUrl) =>
      _$this._reviewCommentUrl = reviewCommentUrl;

  String _commentsUrl;
  String get commentsUrl => _$this._commentsUrl;
  set commentsUrl(String commentsUrl) => _$this._commentsUrl = commentsUrl;

  String _statusesUrl;
  String get statusesUrl => _$this._statusesUrl;
  set statusesUrl(String statusesUrl) => _$this._statusesUrl = statusesUrl;

  int _number;
  int get number => _$this._number;
  set number(int number) => _$this._number = number;

  PullRequestStateEnum _state;
  PullRequestStateEnum get state => _$this._state;
  set state(PullRequestStateEnum state) => _$this._state = state;

  bool _locked;
  bool get locked => _$this._locked;
  set locked(bool locked) => _$this._locked = locked;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  SimpleUserBuilder _user;
  SimpleUserBuilder get user => _$this._user ??= new SimpleUserBuilder();
  set user(SimpleUserBuilder user) => _$this._user = user;

  String _body;
  String get body => _$this._body;
  set body(String body) => _$this._body = body;

  ListBuilder<PullRequestLabels> _labels;
  ListBuilder<PullRequestLabels> get labels =>
      _$this._labels ??= new ListBuilder<PullRequestLabels>();
  set labels(ListBuilder<PullRequestLabels> labels) => _$this._labels = labels;

  MilestoneBuilder _milestone;
  MilestoneBuilder get milestone =>
      _$this._milestone ??= new MilestoneBuilder();
  set milestone(MilestoneBuilder milestone) => _$this._milestone = milestone;

  String _activeLockReason;
  String get activeLockReason => _$this._activeLockReason;
  set activeLockReason(String activeLockReason) =>
      _$this._activeLockReason = activeLockReason;

  DateTime _createdAt;
  DateTime get createdAt => _$this._createdAt;
  set createdAt(DateTime createdAt) => _$this._createdAt = createdAt;

  DateTime _updatedAt;
  DateTime get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime updatedAt) => _$this._updatedAt = updatedAt;

  DateTime _closedAt;
  DateTime get closedAt => _$this._closedAt;
  set closedAt(DateTime closedAt) => _$this._closedAt = closedAt;

  DateTime _mergedAt;
  DateTime get mergedAt => _$this._mergedAt;
  set mergedAt(DateTime mergedAt) => _$this._mergedAt = mergedAt;

  String _mergeCommitSha;
  String get mergeCommitSha => _$this._mergeCommitSha;
  set mergeCommitSha(String mergeCommitSha) =>
      _$this._mergeCommitSha = mergeCommitSha;

  SimpleUserBuilder _assignee;
  SimpleUserBuilder get assignee =>
      _$this._assignee ??= new SimpleUserBuilder();
  set assignee(SimpleUserBuilder assignee) => _$this._assignee = assignee;

  ListBuilder<SimpleUser> _assignees;
  ListBuilder<SimpleUser> get assignees =>
      _$this._assignees ??= new ListBuilder<SimpleUser>();
  set assignees(ListBuilder<SimpleUser> assignees) =>
      _$this._assignees = assignees;

  ListBuilder<SimpleUser> _requestedReviewers;
  ListBuilder<SimpleUser> get requestedReviewers =>
      _$this._requestedReviewers ??= new ListBuilder<SimpleUser>();
  set requestedReviewers(ListBuilder<SimpleUser> requestedReviewers) =>
      _$this._requestedReviewers = requestedReviewers;

  ListBuilder<TeamSimple> _requestedTeams;
  ListBuilder<TeamSimple> get requestedTeams =>
      _$this._requestedTeams ??= new ListBuilder<TeamSimple>();
  set requestedTeams(ListBuilder<TeamSimple> requestedTeams) =>
      _$this._requestedTeams = requestedTeams;

  PullRequestHeadBuilder _head;
  PullRequestHeadBuilder get head =>
      _$this._head ??= new PullRequestHeadBuilder();
  set head(PullRequestHeadBuilder head) => _$this._head = head;

  PullRequestBaseBuilder _base;
  PullRequestBaseBuilder get base =>
      _$this._base ??= new PullRequestBaseBuilder();
  set base(PullRequestBaseBuilder base) => _$this._base = base;

  PullRequestSimpleLinksBuilder _links;
  PullRequestSimpleLinksBuilder get links =>
      _$this._links ??= new PullRequestSimpleLinksBuilder();
  set links(PullRequestSimpleLinksBuilder links) => _$this._links = links;

  AuthorAssociation _authorAssociation;
  AuthorAssociation get authorAssociation => _$this._authorAssociation;
  set authorAssociation(AuthorAssociation authorAssociation) =>
      _$this._authorAssociation = authorAssociation;

  AutoMergeBuilder _autoMerge;
  AutoMergeBuilder get autoMerge =>
      _$this._autoMerge ??= new AutoMergeBuilder();
  set autoMerge(AutoMergeBuilder autoMerge) => _$this._autoMerge = autoMerge;

  bool _draft;
  bool get draft => _$this._draft;
  set draft(bool draft) => _$this._draft = draft;

  bool _merged;
  bool get merged => _$this._merged;
  set merged(bool merged) => _$this._merged = merged;

  bool _mergeable;
  bool get mergeable => _$this._mergeable;
  set mergeable(bool mergeable) => _$this._mergeable = mergeable;

  bool _rebaseable;
  bool get rebaseable => _$this._rebaseable;
  set rebaseable(bool rebaseable) => _$this._rebaseable = rebaseable;

  String _mergeableState;
  String get mergeableState => _$this._mergeableState;
  set mergeableState(String mergeableState) =>
      _$this._mergeableState = mergeableState;

  SimpleUserBuilder _mergedBy;
  SimpleUserBuilder get mergedBy =>
      _$this._mergedBy ??= new SimpleUserBuilder();
  set mergedBy(SimpleUserBuilder mergedBy) => _$this._mergedBy = mergedBy;

  int _comments;
  int get comments => _$this._comments;
  set comments(int comments) => _$this._comments = comments;

  int _reviewComments;
  int get reviewComments => _$this._reviewComments;
  set reviewComments(int reviewComments) =>
      _$this._reviewComments = reviewComments;

  bool _maintainerCanModify;
  bool get maintainerCanModify => _$this._maintainerCanModify;
  set maintainerCanModify(bool maintainerCanModify) =>
      _$this._maintainerCanModify = maintainerCanModify;

  int _commits;
  int get commits => _$this._commits;
  set commits(int commits) => _$this._commits = commits;

  int _additions;
  int get additions => _$this._additions;
  set additions(int additions) => _$this._additions = additions;

  int _deletions;
  int get deletions => _$this._deletions;
  set deletions(int deletions) => _$this._deletions = deletions;

  int _changedFiles;
  int get changedFiles => _$this._changedFiles;
  set changedFiles(int changedFiles) => _$this._changedFiles = changedFiles;

  PullRequestBuilder() {
    PullRequest._initializeBuilder(this);
  }

  PullRequestBuilder get _$this {
    if (_$v != null) {
      _url = _$v.url;
      _id = _$v.id;
      _nodeId = _$v.nodeId;
      _htmlUrl = _$v.htmlUrl;
      _diffUrl = _$v.diffUrl;
      _patchUrl = _$v.patchUrl;
      _issueUrl = _$v.issueUrl;
      _commitsUrl = _$v.commitsUrl;
      _reviewCommentsUrl = _$v.reviewCommentsUrl;
      _reviewCommentUrl = _$v.reviewCommentUrl;
      _commentsUrl = _$v.commentsUrl;
      _statusesUrl = _$v.statusesUrl;
      _number = _$v.number;
      _state = _$v.state;
      _locked = _$v.locked;
      _title = _$v.title;
      _user = _$v.user?.toBuilder();
      _body = _$v.body;
      _labels = _$v.labels?.toBuilder();
      _milestone = _$v.milestone?.toBuilder();
      _activeLockReason = _$v.activeLockReason;
      _createdAt = _$v.createdAt;
      _updatedAt = _$v.updatedAt;
      _closedAt = _$v.closedAt;
      _mergedAt = _$v.mergedAt;
      _mergeCommitSha = _$v.mergeCommitSha;
      _assignee = _$v.assignee?.toBuilder();
      _assignees = _$v.assignees?.toBuilder();
      _requestedReviewers = _$v.requestedReviewers?.toBuilder();
      _requestedTeams = _$v.requestedTeams?.toBuilder();
      _head = _$v.head?.toBuilder();
      _base = _$v.base?.toBuilder();
      _links = _$v.links?.toBuilder();
      _authorAssociation = _$v.authorAssociation;
      _autoMerge = _$v.autoMerge?.toBuilder();
      _draft = _$v.draft;
      _merged = _$v.merged;
      _mergeable = _$v.mergeable;
      _rebaseable = _$v.rebaseable;
      _mergeableState = _$v.mergeableState;
      _mergedBy = _$v.mergedBy?.toBuilder();
      _comments = _$v.comments;
      _reviewComments = _$v.reviewComments;
      _maintainerCanModify = _$v.maintainerCanModify;
      _commits = _$v.commits;
      _additions = _$v.additions;
      _deletions = _$v.deletions;
      _changedFiles = _$v.changedFiles;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PullRequest other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PullRequest;
  }

  @override
  void update(void Function(PullRequestBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PullRequest build() {
    _$PullRequest _$result;
    try {
      _$result = _$v ??
          new _$PullRequest._(
              url: url,
              id: id,
              nodeId: nodeId,
              htmlUrl: htmlUrl,
              diffUrl: diffUrl,
              patchUrl: patchUrl,
              issueUrl: issueUrl,
              commitsUrl: commitsUrl,
              reviewCommentsUrl: reviewCommentsUrl,
              reviewCommentUrl: reviewCommentUrl,
              commentsUrl: commentsUrl,
              statusesUrl: statusesUrl,
              number: number,
              state: state,
              locked: locked,
              title: title,
              user: _user?.build(),
              body: body,
              labels: _labels?.build(),
              milestone: _milestone?.build(),
              activeLockReason: activeLockReason,
              createdAt: createdAt,
              updatedAt: updatedAt,
              closedAt: closedAt,
              mergedAt: mergedAt,
              mergeCommitSha: mergeCommitSha,
              assignee: _assignee?.build(),
              assignees: _assignees?.build(),
              requestedReviewers: _requestedReviewers?.build(),
              requestedTeams: _requestedTeams?.build(),
              head: _head?.build(),
              base: _base?.build(),
              links: _links?.build(),
              authorAssociation: authorAssociation,
              autoMerge: _autoMerge?.build(),
              draft: draft,
              merged: merged,
              mergeable: mergeable,
              rebaseable: rebaseable,
              mergeableState: mergeableState,
              mergedBy: _mergedBy?.build(),
              comments: comments,
              reviewComments: reviewComments,
              maintainerCanModify: maintainerCanModify,
              commits: commits,
              additions: additions,
              deletions: deletions,
              changedFiles: changedFiles);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'user';
        _user?.build();

        _$failedField = 'labels';
        _labels?.build();
        _$failedField = 'milestone';
        _milestone?.build();

        _$failedField = 'assignee';
        _assignee?.build();
        _$failedField = 'assignees';
        _assignees?.build();
        _$failedField = 'requestedReviewers';
        _requestedReviewers?.build();
        _$failedField = 'requestedTeams';
        _requestedTeams?.build();
        _$failedField = 'head';
        _head?.build();
        _$failedField = 'base';
        _base?.build();
        _$failedField = 'links';
        _links?.build();

        _$failedField = 'autoMerge';
        _autoMerge?.build();

        _$failedField = 'mergedBy';
        _mergedBy?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'PullRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
