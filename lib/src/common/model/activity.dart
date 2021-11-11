import 'package:github/src/common.dart';
import 'package:github/src/common/model/users.dart';
import 'package:json_annotation/json_annotation.dart';

part 'activity.g.dart';

/// Model class for an event.
@JsonSerializable()
class Event {
  Event({
    this.id,
    this.type,
    this.repo,
    this.actor,
    this.org,
    this.payload,
    this.createdAt,
  });
  String? id;
  String? type;
  Repository? repo;
  User? actor;
  Organization? org;
  Map<String, dynamic>? payload;

  @JsonKey(name: 'created_at')
  DateTime? createdAt;

  factory Event.fromJson(Map<String, dynamic> input) => _$EventFromJson(input);
  Map<String, dynamic> toJson() => _$EventToJson(this);
}

/// Model class for a repository subscription.
@JsonSerializable()
class RepositorySubscription {
  RepositorySubscription({
    this.subscribed,
    this.ignored,
    this.reason,
    this.createdAt,
  });
  bool? subscribed;
  bool? ignored;
  String? reason;

  @JsonKey(name: 'created_at')
  DateTime? createdAt;

  factory RepositorySubscription.fromJson(Map<String, dynamic> input) =>
      _$RepositorySubscriptionFromJson(input);
  Map<String, dynamic> toJson() => _$RepositorySubscriptionToJson(this);
}

@JsonSerializable()
class Feed {
  Feed({
    this.timelineUrl,
    this.userUrl,
    this.currentUserPublicUrl,
    this.currentUserUrl,
    this.currentUserActorUrl,
    this.currentUserOrganizationUrl,
    this.currentUserOrganizationUrls,
    this.securityAdvisoriesUrl,
    this.links,
  });

  @JsonKey(name: 'timeline_url')
  String? timelineUrl;

  @JsonKey(name: 'user_url')
  String? userUrl;

  @JsonKey(name: 'current_user_public_url')
  String? currentUserPublicUrl;

  @JsonKey(name: 'current_user_url')
  String? currentUserUrl;

  @JsonKey(name: 'current_user_actor_url')
  String? currentUserActorUrl;

  @JsonKey(name: 'current_user_organization_url')
  String? currentUserOrganizationUrl;

  @JsonKey(name: 'current_user_organization_urls')
  List<String>? currentUserOrganizationUrls;

  @JsonKey(name: 'security_advisories_url')
  String? securityAdvisoriesUrl;

  @JsonKey(name: '_links')
  FeedLinks? links;

  factory Feed.fromJson(Map<String, dynamic> input) => _$FeedFromJson(input);
  Map<String, dynamic> toJson() => _$FeedToJson(this);
}

@JsonSerializable()
class FeedLinks {
  FeedLinks({
    this.timeline,
    this.user,
    this.currentUserPublic,
    this.currentUser,
    this.currentUserActor,
    this.currentUserOrganization,
    this.currentUserOrganizations,
    this.securityAdvisories,
  });

  @JsonKey(name: 'timeline')
  FeedLink? timeline;

  @JsonKey(name: 'user')
  FeedLink? user;

  @JsonKey(name: 'current_user_public')
  FeedLink? currentUserPublic;

  @JsonKey(name: 'current_user')
  FeedLink? currentUser;

  @JsonKey(name: 'current_user_actor')
  FeedLink? currentUserActor;

  @JsonKey(name: 'current_user_organization')
  FeedLink? currentUserOrganization;

  @JsonKey(name: 'current_user_organizations')
  List<FeedLink>? currentUserOrganizations;

  @JsonKey(name: 'security_advisories')
  FeedLink? securityAdvisories;

  factory FeedLinks.fromJson(Map<String, dynamic> input) =>
      _$FeedLinksFromJson(input);
  Map<String, dynamic> toJson() => _$FeedLinksToJson(this);
}

@JsonSerializable()
class FeedLink {
  String? href;
  String? type;

  FeedLink(this.href, this.type);

  factory FeedLink.fromJson(Map<String, dynamic> input) =>
      _$FeedLinkFromJson(input);
  Map<String, dynamic> toJson() => _$FeedLinkToJson(this);
}
