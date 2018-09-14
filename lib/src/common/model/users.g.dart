// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) {
  return User()
    ..login = json['login'] as String
    ..id = json['id'] as int
    ..avatarUrl = json['avatar_url'] as String
    ..htmlUrl = json['html_url'] as String
    ..siteAdmin = json['site_admin'] as bool
    ..name = json['name'] as String
    ..company = json['company'] as String
    ..blog = json['blog'] as String
    ..location = json['location'] as String
    ..email = json['email'] as String
    ..hirable = json['hirable'] as bool
    ..bio = json['bio'] as String
    ..publicReposCount = json['public_repos'] as int
    ..publicGistsCount = json['public_gists'] as int
    ..followersCount = json['followers'] as int
    ..followingCount = json['following'] as int
    ..createdAt = json['created_at'] == null
        ? null
        : DateTime.parse(json['created_at'] as String)
    ..updatedAt = json['updated_at'] == null
        ? null
        : DateTime.parse(json['updated_at'] as String);
}

CurrentUser _$CurrentUserFromJson(Map<String, dynamic> json) {
  return CurrentUser()
    ..login = json['login'] as String
    ..id = json['id'] as int
    ..avatarUrl = json['avatar_url'] as String
    ..htmlUrl = json['html_url'] as String
    ..siteAdmin = json['site_admin'] as bool
    ..name = json['name'] as String
    ..company = json['company'] as String
    ..blog = json['blog'] as String
    ..location = json['location'] as String
    ..email = json['email'] as String
    ..hirable = json['hirable'] as bool
    ..bio = json['bio'] as String
    ..publicReposCount = json['public_repos'] as int
    ..publicGistsCount = json['public_gists'] as int
    ..followersCount = json['followers'] as int
    ..followingCount = json['following'] as int
    ..createdAt = json['created_at'] == null
        ? null
        : DateTime.parse(json['created_at'] as String)
    ..updatedAt = json['updated_at'] == null
        ? null
        : DateTime.parse(json['updated_at'] as String)
    ..privateReposCount = json['total_private_repos'] as int
    ..ownedPrivateReposCount = json['owned_private_repos'] as int
    ..diskUsage = json['disk_usage'] as int
    ..plan = json['plan'] == null
        ? null
        : UserPlan.fromJson(json['plan'] as Map<String, dynamic>);
}

UserPlan _$UserPlanFromJson(Map<String, dynamic> json) {
  return UserPlan()
    ..name = json['name'] as String
    ..space = json['space'] as int
    ..privateReposCount = json['private_repos'] as int
    ..collaboratorsCount = json['collaborators'] as int;
}

UserEmail _$UserEmailFromJson(Map<String, dynamic> json) {
  return UserEmail()
    ..email = json['email'] as String
    ..verified = json['verified'] as bool
    ..primary = json['primary'] as bool;
}
