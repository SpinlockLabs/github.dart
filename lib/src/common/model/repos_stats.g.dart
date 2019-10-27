// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repos_stats.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContributorStatistics _$ContributorStatisticsFromJson(
    Map<String, dynamic> json) {
  return ContributorStatistics(
    json['author'] == null
        ? null
        : User.fromJson(json['author'] as Map<String, dynamic>),
    json['total'] as int,
    (json['weeks'] as List)
        ?.map((e) => e == null
            ? null
            : ContributorWeekStatistics.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

ContributorWeekStatistics _$ContributorWeekStatisticsFromJson(
    Map<String, dynamic> json) {
  return ContributorWeekStatistics(
    json['w'] as int,
    json['a'] as int,
    json['d'] as int,
    json['c'] as int,
  );
}
