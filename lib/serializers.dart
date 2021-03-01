//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

library serializers;

import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/standard_json_plugin.dart';

import 'package:github/model/actions_billing_usage.dart';
import 'package:github/model/actions_billing_usage_minutes_used_breakdown.dart';
import 'package:github/model/actions_enterprise_permissions.dart';
import 'package:github/model/actions_organization_permissions.dart';
import 'package:github/model/actions_public_key.dart';
import 'package:github/model/actions_repository_permissions.dart';
import 'package:github/model/actions_secret.dart';
import 'package:github/model/actor.dart';
import 'package:github/model/allowed_actions.dart';
import 'package:github/model/api_overview.dart';
import 'package:github/model/api_overview_ssh_key_fingerprints.dart';
import 'package:github/model/app_permissions.dart';
import 'package:github/model/application_grant.dart';
import 'package:github/model/application_grant_app.dart';
import 'package:github/model/artifact.dart';
import 'package:github/model/audit_log_event.dart';
import 'package:github/model/authentication_token.dart';
import 'package:github/model/author_association.dart';
import 'package:github/model/authorization.dart';
import 'package:github/model/auto_merge.dart';
import 'package:github/model/base_gist.dart';
import 'package:github/model/base_gist_files.dart';
import 'package:github/model/basic_error.dart';
import 'package:github/model/blob.dart';
import 'package:github/model/branch_protection.dart';
import 'package:github/model/branch_protection_required_linear_history.dart';
import 'package:github/model/branch_protection_required_status_checks.dart';
import 'package:github/model/branch_restriction_policy.dart';
import 'package:github/model/branch_restriction_policy_apps.dart';
import 'package:github/model/branch_restriction_policy_owner.dart';
import 'package:github/model/branch_restriction_policy_permissions.dart';
import 'package:github/model/branch_restriction_policy_teams.dart';
import 'package:github/model/branch_short.dart';
import 'package:github/model/branch_short_commit.dart';
import 'package:github/model/branch_with_protection.dart';
import 'package:github/model/branch_with_protection_links.dart';
import 'package:github/model/check_annotation.dart';
import 'package:github/model/check_run.dart';
import 'package:github/model/check_run_check_suite.dart';
import 'package:github/model/check_run_output.dart';
import 'package:github/model/check_suite.dart';
import 'package:github/model/check_suite_preference.dart';
import 'package:github/model/check_suite_preference_preferences.dart';
import 'package:github/model/check_suite_preference_preferences_auto_trigger_checks.dart';
import 'package:github/model/clone_traffic.dart';
import 'package:github/model/code_of_conduct.dart';
import 'package:github/model/code_of_conduct_simple.dart';
import 'package:github/model/code_scanning_alert.dart';
import 'package:github/model/code_scanning_alert_classification.dart';
import 'package:github/model/code_scanning_alert_dismissed_reason.dart';
import 'package:github/model/code_scanning_alert_dismissed_reason_one_of.dart';
import 'package:github/model/code_scanning_alert_dismissed_reason_one_of1.dart';
import 'package:github/model/code_scanning_alert_instance.dart';
import 'package:github/model/code_scanning_alert_instance_message.dart';
import 'package:github/model/code_scanning_alert_items.dart';
import 'package:github/model/code_scanning_alert_location.dart';
import 'package:github/model/code_scanning_alert_rule.dart';
import 'package:github/model/code_scanning_alert_rule_summary.dart';
import 'package:github/model/code_scanning_alert_set_state.dart';
import 'package:github/model/code_scanning_alert_state.dart';
import 'package:github/model/code_scanning_analysis.dart';
import 'package:github/model/code_scanning_analysis_deletion.dart';
import 'package:github/model/code_scanning_analysis_tool.dart';
import 'package:github/model/code_scanning_sarifs_receipt.dart';
import 'package:github/model/code_scanning_sarifs_status.dart';
import 'package:github/model/code_search_result_item.dart';
import 'package:github/model/collaborator.dart';
import 'package:github/model/collaborator_permissions.dart';
import 'package:github/model/combined_billing_usage.dart';
import 'package:github/model/combined_commit_status.dart';
import 'package:github/model/commit.dart';
import 'package:github/model/commit_activity.dart';
import 'package:github/model/commit_comment.dart';
import 'package:github/model/commit_commit.dart';
import 'package:github/model/commit_commit_tree.dart';
import 'package:github/model/commit_comparison.dart';
import 'package:github/model/commit_files.dart';
import 'package:github/model/commit_parents.dart';
import 'package:github/model/commit_search_result_item.dart';
import 'package:github/model/commit_search_result_item_commit.dart';
import 'package:github/model/commit_search_result_item_commit_author.dart';
import 'package:github/model/commit_stats.dart';
import 'package:github/model/community_health_file.dart';
import 'package:github/model/community_profile.dart';
import 'package:github/model/community_profile_files.dart';
import 'package:github/model/container_metadata.dart';
import 'package:github/model/content_file.dart';
import 'package:github/model/content_reference_attachment.dart';
import 'package:github/model/content_submodule.dart';
import 'package:github/model/content_symlink.dart';
import 'package:github/model/content_traffic.dart';
import 'package:github/model/content_tree.dart';
import 'package:github/model/content_tree_entries.dart';
import 'package:github/model/content_tree_links.dart';
import 'package:github/model/contributor.dart';
import 'package:github/model/contributor_activity.dart';
import 'package:github/model/contributor_activity_weeks.dart';
import 'package:github/model/credential_authorization.dart';
import 'package:github/model/deploy_key.dart';
import 'package:github/model/deployment.dart';
import 'package:github/model/deployment_branch_policy.dart';
import 'package:github/model/deployment_reviewer_type.dart';
import 'package:github/model/deployment_simple.dart';
import 'package:github/model/deployment_status.dart';
import 'package:github/model/diff_entry.dart';
import 'package:github/model/docker_metadata.dart';
import 'package:github/model/email.dart';
import 'package:github/model/enabled_organizations.dart';
import 'package:github/model/enabled_repositories.dart';
import 'package:github/model/enterprise.dart';
import 'package:github/model/environment.dart';
import 'package:github/model/environment_approvals.dart';
import 'package:github/model/environment_approvals_environments.dart';
import 'package:github/model/event.dart';
import 'package:github/model/event_payload.dart';
import 'package:github/model/event_payload_pages.dart';
import 'package:github/model/event_repo.dart';
import 'package:github/model/feed.dart';
import 'package:github/model/feed_links.dart';
import 'package:github/model/file_commit.dart';
import 'package:github/model/file_commit_commit.dart';
import 'package:github/model/file_commit_commit_author.dart';
import 'package:github/model/file_commit_commit_parents.dart';
import 'package:github/model/file_commit_commit_tree.dart';
import 'package:github/model/file_commit_commit_verification.dart';
import 'package:github/model/file_commit_content.dart';
import 'package:github/model/file_commit_content_links.dart';
import 'package:github/model/full_repository.dart';
import 'package:github/model/full_repository_permissions.dart';
import 'package:github/model/gist_comment.dart';
import 'package:github/model/gist_commit.dart';
import 'package:github/model/gist_commit_change_status.dart';
import 'package:github/model/gist_simple.dart';
import 'package:github/model/gist_simple_files.dart';
import 'package:github/model/gists_files.dart';
import 'package:github/model/git_commit.dart';
import 'package:github/model/git_commit_author.dart';
import 'package:github/model/git_commit_parents.dart';
import 'package:github/model/git_commit_tree.dart';
import 'package:github/model/git_commit_verification.dart';
import 'package:github/model/git_ref.dart';
import 'package:github/model/git_ref_object.dart';
import 'package:github/model/git_tag.dart';
import 'package:github/model/git_tag_object.dart';
import 'package:github/model/git_tag_tagger.dart';
import 'package:github/model/git_tree.dart';
import 'package:github/model/git_tree_tree.dart';
import 'package:github/model/git_user.dart';
import 'package:github/model/gitignore_template.dart';
import 'package:github/model/gpg_key.dart';
import 'package:github/model/gpg_key_emails.dart';
import 'package:github/model/gpg_key_subkeys.dart';
import 'package:github/model/group_mapping.dart';
import 'package:github/model/group_mapping_groups.dart';
import 'package:github/model/hook.dart';
import 'package:github/model/hook_config.dart';
import 'package:github/model/hook_response.dart';
import 'package:github/model/hovercard.dart';
import 'package:github/model/hovercard_contexts.dart';
import 'package:github/model/import_project_choices.dart';
import 'package:github/model/inline_object.dart';
import 'package:github/model/inline_object1.dart';
import 'package:github/model/inline_object10.dart';
import 'package:github/model/inline_object100.dart';
import 'package:github/model/inline_object101.dart';
import 'package:github/model/inline_object102.dart';
import 'package:github/model/inline_object103.dart';
import 'package:github/model/inline_object104.dart';
import 'package:github/model/inline_object105.dart';
import 'package:github/model/inline_object106.dart';
import 'package:github/model/inline_object107.dart';
import 'package:github/model/inline_object108.dart';
import 'package:github/model/inline_object109.dart';
import 'package:github/model/inline_object11.dart';
import 'package:github/model/inline_object110.dart';
import 'package:github/model/inline_object111.dart';
import 'package:github/model/inline_object112.dart';
import 'package:github/model/inline_object113.dart';
import 'package:github/model/inline_object114.dart';
import 'package:github/model/inline_object115.dart';
import 'package:github/model/inline_object116.dart';
import 'package:github/model/inline_object117.dart';
import 'package:github/model/inline_object118.dart';
import 'package:github/model/inline_object119.dart';
import 'package:github/model/inline_object12.dart';
import 'package:github/model/inline_object120.dart';
import 'package:github/model/inline_object121.dart';
import 'package:github/model/inline_object122.dart';
import 'package:github/model/inline_object123.dart';
import 'package:github/model/inline_object124.dart';
import 'package:github/model/inline_object125.dart';
import 'package:github/model/inline_object126.dart';
import 'package:github/model/inline_object127.dart';
import 'package:github/model/inline_object128.dart';
import 'package:github/model/inline_object129.dart';
import 'package:github/model/inline_object13.dart';
import 'package:github/model/inline_object130.dart';
import 'package:github/model/inline_object131.dart';
import 'package:github/model/inline_object132.dart';
import 'package:github/model/inline_object133.dart';
import 'package:github/model/inline_object134.dart';
import 'package:github/model/inline_object135.dart';
import 'package:github/model/inline_object136.dart';
import 'package:github/model/inline_object137.dart';
import 'package:github/model/inline_object138.dart';
import 'package:github/model/inline_object139.dart';
import 'package:github/model/inline_object14.dart';
import 'package:github/model/inline_object140.dart';
import 'package:github/model/inline_object141.dart';
import 'package:github/model/inline_object142.dart';
import 'package:github/model/inline_object143.dart';
import 'package:github/model/inline_object144.dart';
import 'package:github/model/inline_object145.dart';
import 'package:github/model/inline_object146.dart';
import 'package:github/model/inline_object147.dart';
import 'package:github/model/inline_object148.dart';
import 'package:github/model/inline_object149.dart';
import 'package:github/model/inline_object15.dart';
import 'package:github/model/inline_object150.dart';
import 'package:github/model/inline_object151.dart';
import 'package:github/model/inline_object152.dart';
import 'package:github/model/inline_object153.dart';
import 'package:github/model/inline_object154.dart';
import 'package:github/model/inline_object155.dart';
import 'package:github/model/inline_object156.dart';
import 'package:github/model/inline_object157.dart';
import 'package:github/model/inline_object158.dart';
import 'package:github/model/inline_object159.dart';
import 'package:github/model/inline_object16.dart';
import 'package:github/model/inline_object160.dart';
import 'package:github/model/inline_object161.dart';
import 'package:github/model/inline_object162.dart';
import 'package:github/model/inline_object163.dart';
import 'package:github/model/inline_object164.dart';
import 'package:github/model/inline_object165.dart';
import 'package:github/model/inline_object166.dart';
import 'package:github/model/inline_object167.dart';
import 'package:github/model/inline_object168.dart';
import 'package:github/model/inline_object169.dart';
import 'package:github/model/inline_object17.dart';
import 'package:github/model/inline_object170.dart';
import 'package:github/model/inline_object171.dart';
import 'package:github/model/inline_object172.dart';
import 'package:github/model/inline_object173.dart';
import 'package:github/model/inline_object174.dart';
import 'package:github/model/inline_object175.dart';
import 'package:github/model/inline_object176.dart';
import 'package:github/model/inline_object177.dart';
import 'package:github/model/inline_object178.dart';
import 'package:github/model/inline_object179.dart';
import 'package:github/model/inline_object18.dart';
import 'package:github/model/inline_object180.dart';
import 'package:github/model/inline_object181.dart';
import 'package:github/model/inline_object19.dart';
import 'package:github/model/inline_object2.dart';
import 'package:github/model/inline_object20.dart';
import 'package:github/model/inline_object21.dart';
import 'package:github/model/inline_object22.dart';
import 'package:github/model/inline_object23.dart';
import 'package:github/model/inline_object24.dart';
import 'package:github/model/inline_object25.dart';
import 'package:github/model/inline_object26.dart';
import 'package:github/model/inline_object27.dart';
import 'package:github/model/inline_object28.dart';
import 'package:github/model/inline_object29.dart';
import 'package:github/model/inline_object3.dart';
import 'package:github/model/inline_object30.dart';
import 'package:github/model/inline_object31.dart';
import 'package:github/model/inline_object32.dart';
import 'package:github/model/inline_object33.dart';
import 'package:github/model/inline_object34.dart';
import 'package:github/model/inline_object35.dart';
import 'package:github/model/inline_object36.dart';
import 'package:github/model/inline_object37.dart';
import 'package:github/model/inline_object38.dart';
import 'package:github/model/inline_object39.dart';
import 'package:github/model/inline_object4.dart';
import 'package:github/model/inline_object40.dart';
import 'package:github/model/inline_object41.dart';
import 'package:github/model/inline_object42.dart';
import 'package:github/model/inline_object43.dart';
import 'package:github/model/inline_object44.dart';
import 'package:github/model/inline_object45.dart';
import 'package:github/model/inline_object46.dart';
import 'package:github/model/inline_object47.dart';
import 'package:github/model/inline_object48.dart';
import 'package:github/model/inline_object49.dart';
import 'package:github/model/inline_object5.dart';
import 'package:github/model/inline_object50.dart';
import 'package:github/model/inline_object51.dart';
import 'package:github/model/inline_object52.dart';
import 'package:github/model/inline_object53.dart';
import 'package:github/model/inline_object54.dart';
import 'package:github/model/inline_object55.dart';
import 'package:github/model/inline_object56.dart';
import 'package:github/model/inline_object57.dart';
import 'package:github/model/inline_object58.dart';
import 'package:github/model/inline_object59.dart';
import 'package:github/model/inline_object6.dart';
import 'package:github/model/inline_object60.dart';
import 'package:github/model/inline_object61.dart';
import 'package:github/model/inline_object62.dart';
import 'package:github/model/inline_object63.dart';
import 'package:github/model/inline_object64.dart';
import 'package:github/model/inline_object65.dart';
import 'package:github/model/inline_object66.dart';
import 'package:github/model/inline_object67.dart';
import 'package:github/model/inline_object68.dart';
import 'package:github/model/inline_object69.dart';
import 'package:github/model/inline_object7.dart';
import 'package:github/model/inline_object70.dart';
import 'package:github/model/inline_object71.dart';
import 'package:github/model/inline_object72.dart';
import 'package:github/model/inline_object73.dart';
import 'package:github/model/inline_object74.dart';
import 'package:github/model/inline_object75.dart';
import 'package:github/model/inline_object76.dart';
import 'package:github/model/inline_object77.dart';
import 'package:github/model/inline_object78.dart';
import 'package:github/model/inline_object79.dart';
import 'package:github/model/inline_object8.dart';
import 'package:github/model/inline_object80.dart';
import 'package:github/model/inline_object81.dart';
import 'package:github/model/inline_object82.dart';
import 'package:github/model/inline_object83.dart';
import 'package:github/model/inline_object84.dart';
import 'package:github/model/inline_object85.dart';
import 'package:github/model/inline_object86.dart';
import 'package:github/model/inline_object87.dart';
import 'package:github/model/inline_object88.dart';
import 'package:github/model/inline_object89.dart';
import 'package:github/model/inline_object9.dart';
import 'package:github/model/inline_object90.dart';
import 'package:github/model/inline_object91.dart';
import 'package:github/model/inline_object92.dart';
import 'package:github/model/inline_object93.dart';
import 'package:github/model/inline_object94.dart';
import 'package:github/model/inline_object95.dart';
import 'package:github/model/inline_object96.dart';
import 'package:github/model/inline_object97.dart';
import 'package:github/model/inline_object98.dart';
import 'package:github/model/inline_object99.dart';
import 'package:github/model/inline_response200.dart';
import 'package:github/model/inline_response2001.dart';
import 'package:github/model/inline_response20010.dart';
import 'package:github/model/inline_response20011.dart';
import 'package:github/model/inline_response20012.dart';
import 'package:github/model/inline_response20013.dart';
import 'package:github/model/inline_response20014.dart';
import 'package:github/model/inline_response20015.dart';
import 'package:github/model/inline_response20016.dart';
import 'package:github/model/inline_response20017.dart';
import 'package:github/model/inline_response20018.dart';
import 'package:github/model/inline_response20019.dart';
import 'package:github/model/inline_response2002.dart';
import 'package:github/model/inline_response20020.dart';
import 'package:github/model/inline_response20021.dart';
import 'package:github/model/inline_response20022.dart';
import 'package:github/model/inline_response20023.dart';
import 'package:github/model/inline_response20024.dart';
import 'package:github/model/inline_response20025.dart';
import 'package:github/model/inline_response20026.dart';
import 'package:github/model/inline_response20027.dart';
import 'package:github/model/inline_response2003.dart';
import 'package:github/model/inline_response2004.dart';
import 'package:github/model/inline_response2005.dart';
import 'package:github/model/inline_response2006.dart';
import 'package:github/model/inline_response2007.dart';
import 'package:github/model/inline_response2008.dart';
import 'package:github/model/inline_response2009.dart';
import 'package:github/model/inline_response202.dart';
import 'package:github/model/inline_response2021.dart';
import 'package:github/model/inline_response403.dart';
import 'package:github/model/inline_response4031.dart';
import 'package:github/model/inline_response4032.dart';
import 'package:github/model/inline_response4033.dart';
import 'package:github/model/inline_response4033_errors.dart';
import 'package:github/model/inline_response403_block.dart';
import 'package:github/model/inline_response404.dart';
import 'package:github/model/inline_response409.dart';
import 'package:github/model/inline_response415.dart';
import 'package:github/model/inline_response422.dart';
import 'package:github/model/inline_response4221.dart';
import 'package:github/model/inline_response4222.dart';
import 'package:github/model/inline_response422_errors.dart';
import 'package:github/model/inline_response503.dart';
import 'package:github/model/inline_response5031.dart';
import 'package:github/model/inline_response5031_errors.dart';
import 'package:github/model/installation.dart';
import 'package:github/model/installation_permissions.dart';
import 'package:github/model/installation_token.dart';
import 'package:github/model/installation_token_permissions.dart';
import 'package:github/model/integration.dart';
import 'package:github/model/interaction_expiry.dart';
import 'package:github/model/interaction_group.dart';
import 'package:github/model/interaction_limit.dart';
import 'package:github/model/interaction_limit_response.dart';
import 'package:github/model/issue.dart';
import 'package:github/model/issue_comment.dart';
import 'package:github/model/issue_event.dart';
import 'package:github/model/issue_event_dismissed_review.dart';
import 'package:github/model/issue_event_for_issue.dart';
import 'package:github/model/issue_event_label.dart';
import 'package:github/model/issue_event_milestone.dart';
import 'package:github/model/issue_event_project_card.dart';
import 'package:github/model/issue_event_rename.dart';
import 'package:github/model/issue_search_result_item.dart';
import 'package:github/model/issue_search_result_item_labels.dart';
import 'package:github/model/issue_simple.dart';
import 'package:github/model/issue_simple_pull_request.dart';
import 'package:github/model/job.dart';
import 'package:github/model/job_steps.dart';
import 'package:github/model/key.dart';
import 'package:github/model/key_simple.dart';
import 'package:github/model/label.dart';
import 'package:github/model/label_search_result_item.dart';
import 'package:github/model/license.dart';
import 'package:github/model/license_content.dart';
import 'package:github/model/license_simple.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link_with_type.dart';
import 'package:github/model/marketplace_account.dart';
import 'package:github/model/marketplace_listing_plan.dart';
import 'package:github/model/marketplace_purchase.dart';
import 'package:github/model/marketplace_purchase_marketplace_pending_change.dart';
import 'package:github/model/marketplace_purchase_marketplace_purchase.dart';
import 'package:github/model/migration.dart';
import 'package:github/model/milestone.dart';
import 'package:github/model/minimal_repository.dart';
import 'package:github/model/minimal_repository_license.dart';
import 'package:github/model/model_import.dart';
import 'package:github/model/org_hook.dart';
import 'package:github/model/org_hook_config.dart';
import 'package:github/model/org_membership.dart';
import 'package:github/model/org_membership_permissions.dart';
import 'package:github/model/organization_actions_secret.dart';
import 'package:github/model/organization_full.dart';
import 'package:github/model/organization_full_plan.dart';
import 'package:github/model/organization_invitation.dart';
import 'package:github/model/organization_simple.dart';
import 'package:github/model/orgs_org_hooks_config.dart';
import 'package:github/model/orgs_org_hooks_hook_id_config.dart';
import 'package:github/model/orgs_org_teams_team_slug_team_sync_group_mappings_groups.dart';
import 'package:github/model/package.dart';
import 'package:github/model/package_version.dart';
import 'package:github/model/package_version_metadata.dart';
import 'package:github/model/packages_billing_usage.dart';
import 'package:github/model/page.dart';
import 'package:github/model/page_build.dart';
import 'package:github/model/page_build_error.dart';
import 'package:github/model/page_build_status.dart';
import 'package:github/model/pages_source_hash.dart';
import 'package:github/model/participation_stats.dart';
import 'package:github/model/pending_deployment.dart';
import 'package:github/model/pending_deployment_environment.dart';
import 'package:github/model/pending_deployment_reviewers.dart';
import 'package:github/model/porter_author.dart';
import 'package:github/model/porter_large_file.dart';
import 'package:github/model/private_user.dart';
import 'package:github/model/private_user_plan.dart';
import 'package:github/model/project.dart';
import 'package:github/model/project_card.dart';
import 'package:github/model/project_column.dart';
import 'package:github/model/protected_branch.dart';
import 'package:github/model/protected_branch_admin_enforced.dart';
import 'package:github/model/protected_branch_enforce_admins.dart';
import 'package:github/model/protected_branch_pull_request_review.dart';
import 'package:github/model/protected_branch_pull_request_review_dismissal_restrictions.dart';
import 'package:github/model/protected_branch_required_linear_history.dart';
import 'package:github/model/protected_branch_required_pull_request_reviews.dart';
import 'package:github/model/protected_branch_required_pull_request_reviews_dismissal_restrictions.dart';
import 'package:github/model/protected_branch_required_signatures.dart';
import 'package:github/model/public_user.dart';
import 'package:github/model/pull_request.dart';
import 'package:github/model/pull_request_base.dart';
import 'package:github/model/pull_request_base_repo.dart';
import 'package:github/model/pull_request_head.dart';
import 'package:github/model/pull_request_head_repo.dart';
import 'package:github/model/pull_request_head_repo_license.dart';
import 'package:github/model/pull_request_head_repo_owner.dart';
import 'package:github/model/pull_request_labels.dart';
import 'package:github/model/pull_request_merge_result.dart';
import 'package:github/model/pull_request_minimal.dart';
import 'package:github/model/pull_request_minimal_head.dart';
import 'package:github/model/pull_request_minimal_head_repo.dart';
import 'package:github/model/pull_request_review.dart';
import 'package:github/model/pull_request_review_comment.dart';
import 'package:github/model/pull_request_review_comment_links.dart';
import 'package:github/model/pull_request_review_comment_links_html.dart';
import 'package:github/model/pull_request_review_comment_links_pull_request.dart';
import 'package:github/model/pull_request_review_comment_links_self.dart';
import 'package:github/model/pull_request_review_links.dart';
import 'package:github/model/pull_request_review_links_html.dart';
import 'package:github/model/pull_request_review_request.dart';
import 'package:github/model/pull_request_simple.dart';
import 'package:github/model/pull_request_simple_head.dart';
import 'package:github/model/pull_request_simple_labels.dart';
import 'package:github/model/pull_request_simple_links.dart';
import 'package:github/model/rate_limit.dart';
import 'package:github/model/rate_limit_overview.dart';
import 'package:github/model/rate_limit_overview_resources.dart';
import 'package:github/model/reaction.dart';
import 'package:github/model/reaction_rollup.dart';
import 'package:github/model/referrer_traffic.dart';
import 'package:github/model/release.dart';
import 'package:github/model/release_asset.dart';
import 'package:github/model/repo_search_result_item.dart';
import 'package:github/model/repos_owner_repo_branches_branch_protection_required_pull_request_reviews.dart';
import 'package:github/model/repos_owner_repo_branches_branch_protection_required_pull_request_reviews_dismissal_restrictions.dart';
import 'package:github/model/repos_owner_repo_branches_branch_protection_required_status_checks.dart';
import 'package:github/model/repos_owner_repo_branches_branch_protection_restrictions.dart';
import 'package:github/model/repos_owner_repo_check_suites_preferences_auto_trigger_checks.dart';
import 'package:github/model/repos_owner_repo_contents_path_author.dart';
import 'package:github/model/repos_owner_repo_contents_path_author1.dart';
import 'package:github/model/repos_owner_repo_contents_path_committer.dart';
import 'package:github/model/repos_owner_repo_contents_path_committer1.dart';
import 'package:github/model/repos_owner_repo_environments_environment_name_reviewers.dart';
import 'package:github/model/repos_owner_repo_git_commits_author.dart';
import 'package:github/model/repos_owner_repo_git_commits_committer.dart';
import 'package:github/model/repos_owner_repo_git_tags_tagger.dart';
import 'package:github/model/repos_owner_repo_git_trees_tree.dart';
import 'package:github/model/repos_owner_repo_hooks_config.dart';
import 'package:github/model/repos_owner_repo_hooks_hook_id_config.dart';
import 'package:github/model/repos_owner_repo_pages_source.dart';
import 'package:github/model/repos_owner_repo_pulls_pull_number_reviews_comments.dart';
import 'package:github/model/repository.dart';
import 'package:github/model/repository_collaborator_permission.dart';
import 'package:github/model/repository_invitation.dart';
import 'package:github/model/repository_permissions.dart';
import 'package:github/model/repository_subscription.dart';
import 'package:github/model/repository_template_repository.dart';
import 'package:github/model/repository_template_repository_owner.dart';
import 'package:github/model/repository_template_repository_permissions.dart';
import 'package:github/model/review_comment.dart';
import 'package:github/model/review_comment_links.dart';
import 'package:github/model/runner.dart';
import 'package:github/model/runner_application.dart';
import 'package:github/model/runner_groups_enterprise.dart';
import 'package:github/model/runner_groups_org.dart';
import 'package:github/model/runner_labels.dart';
import 'package:github/model/scim_enterprise_group.dart';
import 'package:github/model/scim_enterprise_user.dart';
import 'package:github/model/scim_enterprise_user_emails.dart';
import 'package:github/model/scim_error.dart';
import 'package:github/model/scim_group_list_enterprise.dart';
import 'package:github/model/scim_group_list_enterprise_members.dart';
import 'package:github/model/scim_group_list_enterprise_meta.dart';
import 'package:github/model/scim_group_list_enterprise_resources.dart';
import 'package:github/model/scim_user.dart';
import 'package:github/model/scim_user_emails.dart';
import 'package:github/model/scim_user_list.dart';
import 'package:github/model/scim_user_list_enterprise.dart';
import 'package:github/model/scim_user_list_enterprise_emails.dart';
import 'package:github/model/scim_user_list_enterprise_name.dart';
import 'package:github/model/scim_user_list_enterprise_resources.dart';
import 'package:github/model/scim_user_meta.dart';
import 'package:github/model/scim_user_name.dart';
import 'package:github/model/scim_user_operations.dart';
import 'package:github/model/scim_v2_enterprises_enterprise_groups_members.dart';
import 'package:github/model/scim_v2_enterprises_enterprise_users_emails.dart';
import 'package:github/model/scim_v2_enterprises_enterprise_users_groups.dart';
import 'package:github/model/scim_v2_enterprises_enterprise_users_name.dart';
import 'package:github/model/scim_v2_organizations_org_users_emails.dart';
import 'package:github/model/scim_v2_organizations_org_users_name.dart';
import 'package:github/model/scim_v2_organizations_org_users_scim_user_id_emails.dart';
import 'package:github/model/scim_v2_organizations_org_users_scim_user_id_operations.dart';
import 'package:github/model/scoped_installation.dart';
import 'package:github/model/secret_scanning_alert.dart';
import 'package:github/model/secret_scanning_alert_resolution.dart';
import 'package:github/model/secret_scanning_alert_resolution_one_of.dart';
import 'package:github/model/secret_scanning_alert_state.dart';
import 'package:github/model/selected_actions.dart';
import 'package:github/model/short_blob.dart';
import 'package:github/model/short_branch.dart';
import 'package:github/model/short_branch_commit.dart';
import 'package:github/model/simple_commit.dart';
import 'package:github/model/simple_commit_author.dart';
import 'package:github/model/simple_commit_status.dart';
import 'package:github/model/simple_user.dart';
import 'package:github/model/stargazer.dart';
import 'package:github/model/starred_repository.dart';
import 'package:github/model/status.dart';
import 'package:github/model/status_check_policy.dart';
import 'package:github/model/tag.dart';
import 'package:github/model/team.dart';
import 'package:github/model/team_discussion.dart';
import 'package:github/model/team_discussion_comment.dart';
import 'package:github/model/team_full.dart';
import 'package:github/model/team_membership.dart';
import 'package:github/model/team_project.dart';
import 'package:github/model/team_project_permissions.dart';
import 'package:github/model/team_repository.dart';
import 'package:github/model/team_simple.dart';
import 'package:github/model/teams_team_id_team_sync_group_mappings_groups.dart';
import 'package:github/model/thread.dart';
import 'package:github/model/thread_subject.dart';
import 'package:github/model/thread_subscription.dart';
import 'package:github/model/topic.dart';
import 'package:github/model/topic_search_result_item.dart';
import 'package:github/model/topic_search_result_item_related.dart';
import 'package:github/model/topic_search_result_item_topic_relation.dart';
import 'package:github/model/traffic.dart';
import 'package:github/model/user_marketplace_purchase.dart';
import 'package:github/model/user_search_result_item.dart';
import 'package:github/model/validation_error.dart';
import 'package:github/model/validation_error_errors.dart';
import 'package:github/model/validation_error_simple.dart';
import 'package:github/model/verification.dart';
import 'package:github/model/view_traffic.dart';
import 'package:github/model/webhook_config.dart';
import 'package:github/model/workflow.dart';
import 'package:github/model/workflow_run.dart';
import 'package:github/model/workflow_run_usage.dart';
import 'package:github/model/workflow_run_usage_billable.dart';
import 'package:github/model/workflow_run_usage_billable_ubuntu.dart';
import 'package:github/model/workflow_usage.dart';
import 'package:github/model/workflow_usage_billable.dart';
import 'package:github/model/workflow_usage_billable_ubuntu.dart';

part 'serializers.g.dart';

@SerializersFor(const [
  ActionsBillingUsage,
  ActionsBillingUsageMinutesUsedBreakdown,
  ActionsEnterprisePermissions,
  ActionsOrganizationPermissions,
  ActionsPublicKey,
  ActionsRepositoryPermissions,
  ActionsSecret,
  Actor,
  AllowedActions,
  ApiOverview,
  ApiOverviewSshKeyFingerprints,
  AppPermissions,
  ApplicationGrant,
  ApplicationGrantApp,
  Artifact,
  AuditLogEvent,
  AuthenticationToken,
  AuthorAssociation,
  Authorization,
  AutoMerge,
  BaseGist,
  BaseGistFiles,
  BasicError,
  Blob,
  BranchProtection,
  BranchProtectionRequiredLinearHistory,
  BranchProtectionRequiredStatusChecks,
  BranchRestrictionPolicy,
  BranchRestrictionPolicyApps,
  BranchRestrictionPolicyOwner,
  BranchRestrictionPolicyPermissions,
  BranchRestrictionPolicyTeams,
  BranchShort,
  BranchShortCommit,
  BranchWithProtection,
  BranchWithProtectionLinks,
  CheckAnnotation,
  CheckRun,
  CheckRunCheckSuite,
  CheckRunOutput,
  CheckSuite,
  CheckSuitePreference,
  CheckSuitePreferencePreferences,
  CheckSuitePreferencePreferencesAutoTriggerChecks,
  CloneTraffic,
  CodeOfConduct,
  CodeOfConductSimple,
  CodeScanningAlert,
  CodeScanningAlertClassification,
  CodeScanningAlertDismissedReason,
  CodeScanningAlertDismissedReasonOneOf,
  CodeScanningAlertDismissedReasonOneOf1,
  CodeScanningAlertInstance,
  CodeScanningAlertInstanceMessage,
  CodeScanningAlertItems,
  CodeScanningAlertLocation,
  CodeScanningAlertRule,
  CodeScanningAlertRuleSummary,
  CodeScanningAlertSetState,
  CodeScanningAlertState,
  CodeScanningAnalysis,
  CodeScanningAnalysisDeletion,
  CodeScanningAnalysisTool,
  CodeScanningSarifsReceipt,
  CodeScanningSarifsStatus,
  CodeSearchResultItem,
  Collaborator,
  CollaboratorPermissions,
  CombinedBillingUsage,
  CombinedCommitStatus,
  Commit,
  CommitActivity,
  CommitComment,
  CommitCommit,
  CommitCommitTree,
  CommitComparison,
  CommitFiles,
  CommitParents,
  CommitSearchResultItem,
  CommitSearchResultItemCommit,
  CommitSearchResultItemCommitAuthor,
  CommitStats,
  CommunityHealthFile,
  CommunityProfile,
  CommunityProfileFiles,
  ContainerMetadata,
  ContentFile,
  ContentReferenceAttachment,
  ContentSubmodule,
  ContentSymlink,
  ContentTraffic,
  ContentTree,
  ContentTreeEntries,
  ContentTreeLinks,
  Contributor,
  ContributorActivity,
  ContributorActivityWeeks,
  CredentialAuthorization,
  DeployKey,
  Deployment,
  DeploymentBranchPolicy,
  DeploymentReviewerType,
  DeploymentSimple,
  DeploymentStatus,
  DiffEntry,
  DockerMetadata,
  Email,
  EnabledOrganizations,
  EnabledRepositories,
  Enterprise,
  Environment,
  EnvironmentApprovals,
  EnvironmentApprovalsEnvironments,
  Event,
  EventPayload,
  EventPayloadPages,
  EventRepo,
  Feed,
  FeedLinks,
  FileCommit,
  FileCommitCommit,
  FileCommitCommitAuthor,
  FileCommitCommitParents,
  FileCommitCommitTree,
  FileCommitCommitVerification,
  FileCommitContent,
  FileCommitContentLinks,
  FullRepository,
  FullRepositoryPermissions,
  GistComment,
  GistCommit,
  GistCommitChangeStatus,
  GistSimple,
  GistSimpleFiles,
  GistsFiles,
  GitCommit,
  GitCommitAuthor,
  GitCommitParents,
  GitCommitTree,
  GitCommitVerification,
  GitRef,
  GitRefObject,
  GitTag,
  GitTagObject,
  GitTagTagger,
  GitTree,
  GitTreeTree,
  GitUser,
  GitignoreTemplate,
  GpgKey,
  GpgKeyEmails,
  GpgKeySubkeys,
  GroupMapping,
  GroupMappingGroups,
  Hook,
  HookConfig,
  HookResponse,
  Hovercard,
  HovercardContexts,
  ImportProjectChoices,
  InlineObject,
  InlineObject1,
  InlineObject10,
  InlineObject100,
  InlineObject101,
  InlineObject102,
  InlineObject103,
  InlineObject104,
  InlineObject105,
  InlineObject106,
  InlineObject107,
  InlineObject108,
  InlineObject109,
  InlineObject11,
  InlineObject110,
  InlineObject111,
  InlineObject112,
  InlineObject113,
  InlineObject114,
  InlineObject115,
  InlineObject116,
  InlineObject117,
  InlineObject118,
  InlineObject119,
  InlineObject12,
  InlineObject120,
  InlineObject121,
  InlineObject122,
  InlineObject123,
  InlineObject124,
  InlineObject125,
  InlineObject126,
  InlineObject127,
  InlineObject128,
  InlineObject129,
  InlineObject13,
  InlineObject130,
  InlineObject131,
  InlineObject132,
  InlineObject133,
  InlineObject134,
  InlineObject135,
  InlineObject136,
  InlineObject137,
  InlineObject138,
  InlineObject139,
  InlineObject14,
  InlineObject140,
  InlineObject141,
  InlineObject142,
  InlineObject143,
  InlineObject144,
  InlineObject145,
  InlineObject146,
  InlineObject147,
  InlineObject148,
  InlineObject149,
  InlineObject15,
  InlineObject150,
  InlineObject151,
  InlineObject152,
  InlineObject153,
  InlineObject154,
  InlineObject155,
  InlineObject156,
  InlineObject157,
  InlineObject158,
  InlineObject159,
  InlineObject16,
  InlineObject160,
  InlineObject161,
  InlineObject162,
  InlineObject163,
  InlineObject164,
  InlineObject165,
  InlineObject166,
  InlineObject167,
  InlineObject168,
  InlineObject169,
  InlineObject17,
  InlineObject170,
  InlineObject171,
  InlineObject172,
  InlineObject173,
  InlineObject174,
  InlineObject175,
  InlineObject176,
  InlineObject177,
  InlineObject178,
  InlineObject179,
  InlineObject18,
  InlineObject180,
  InlineObject181,
  InlineObject19,
  InlineObject2,
  InlineObject20,
  InlineObject21,
  InlineObject22,
  InlineObject23,
  InlineObject24,
  InlineObject25,
  InlineObject26,
  InlineObject27,
  InlineObject28,
  InlineObject29,
  InlineObject3,
  InlineObject30,
  InlineObject31,
  InlineObject32,
  InlineObject33,
  InlineObject34,
  InlineObject35,
  InlineObject36,
  InlineObject37,
  InlineObject38,
  InlineObject39,
  InlineObject4,
  InlineObject40,
  InlineObject41,
  InlineObject42,
  InlineObject43,
  InlineObject44,
  InlineObject45,
  InlineObject46,
  InlineObject47,
  InlineObject48,
  InlineObject49,
  InlineObject5,
  InlineObject50,
  InlineObject51,
  InlineObject52,
  InlineObject53,
  InlineObject54,
  InlineObject55,
  InlineObject56,
  InlineObject57,
  InlineObject58,
  InlineObject59,
  InlineObject6,
  InlineObject60,
  InlineObject61,
  InlineObject62,
  InlineObject63,
  InlineObject64,
  InlineObject65,
  InlineObject66,
  InlineObject67,
  InlineObject68,
  InlineObject69,
  InlineObject7,
  InlineObject70,
  InlineObject71,
  InlineObject72,
  InlineObject73,
  InlineObject74,
  InlineObject75,
  InlineObject76,
  InlineObject77,
  InlineObject78,
  InlineObject79,
  InlineObject8,
  InlineObject80,
  InlineObject81,
  InlineObject82,
  InlineObject83,
  InlineObject84,
  InlineObject85,
  InlineObject86,
  InlineObject87,
  InlineObject88,
  InlineObject89,
  InlineObject9,
  InlineObject90,
  InlineObject91,
  InlineObject92,
  InlineObject93,
  InlineObject94,
  InlineObject95,
  InlineObject96,
  InlineObject97,
  InlineObject98,
  InlineObject99,
  InlineResponse200,
  InlineResponse2001,
  InlineResponse20010,
  InlineResponse20011,
  InlineResponse20012,
  InlineResponse20013,
  InlineResponse20014,
  InlineResponse20015,
  InlineResponse20016,
  InlineResponse20017,
  InlineResponse20018,
  InlineResponse20019,
  InlineResponse2002,
  InlineResponse20020,
  InlineResponse20021,
  InlineResponse20022,
  InlineResponse20023,
  InlineResponse20024,
  InlineResponse20025,
  InlineResponse20026,
  InlineResponse20027,
  InlineResponse2003,
  InlineResponse2004,
  InlineResponse2005,
  InlineResponse2006,
  InlineResponse2007,
  InlineResponse2008,
  InlineResponse2009,
  InlineResponse202,
  InlineResponse2021,
  InlineResponse403,
  InlineResponse4031,
  InlineResponse4032,
  InlineResponse4033,
  InlineResponse4033Errors,
  InlineResponse403Block,
  InlineResponse404,
  InlineResponse409,
  InlineResponse415,
  InlineResponse422,
  InlineResponse4221,
  InlineResponse4222,
  InlineResponse422Errors,
  InlineResponse503,
  InlineResponse5031,
  InlineResponse5031Errors,
  Installation,
  InstallationPermissions,
  InstallationToken,
  InstallationTokenPermissions,
  Integration,
  InteractionExpiry,
  InteractionGroup,
  InteractionLimit,
  InteractionLimitResponse,
  Issue,
  IssueComment,
  IssueEvent,
  IssueEventDismissedReview,
  IssueEventForIssue,
  IssueEventLabel,
  IssueEventMilestone,
  IssueEventProjectCard,
  IssueEventRename,
  IssueSearchResultItem,
  IssueSearchResultItemLabels,
  IssueSimple,
  IssueSimplePullRequest,
  Job,
  JobSteps,
  Key,
  KeySimple,
  Label,
  LabelSearchResultItem,
  License,
  LicenseContent,
  LicenseSimple,
  Link,
  LinkWithType,
  MarketplaceAccount,
  MarketplaceListingPlan,
  MarketplacePurchase,
  MarketplacePurchaseMarketplacePendingChange,
  MarketplacePurchaseMarketplacePurchase,
  Migration,
  Milestone,
  MinimalRepository,
  MinimalRepositoryLicense,
  ModelImport,
  OrgHook,
  OrgHookConfig,
  OrgMembership,
  OrgMembershipPermissions,
  OrganizationActionsSecret,
  OrganizationFull,
  OrganizationFullPlan,
  OrganizationInvitation,
  OrganizationSimple,
  OrgsOrgHooksConfig,
  OrgsOrgHooksHookIdConfig,
  OrgsOrgTeamsTeamSlugTeamSyncGroupMappingsGroups,
  Package,
  PackageVersion,
  PackageVersionMetadata,
  PackagesBillingUsage,
  Page,
  PageBuild,
  PageBuildError,
  PageBuildStatus,
  PagesSourceHash,
  ParticipationStats,
  PendingDeployment,
  PendingDeploymentEnvironment,
  PendingDeploymentReviewers,
  PorterAuthor,
  PorterLargeFile,
  PrivateUser,
  PrivateUserPlan,
  Project,
  ProjectCard,
  ProjectColumn,
  ProtectedBranch,
  ProtectedBranchAdminEnforced,
  ProtectedBranchEnforceAdmins,
  ProtectedBranchPullRequestReview,
  ProtectedBranchPullRequestReviewDismissalRestrictions,
  ProtectedBranchRequiredLinearHistory,
  ProtectedBranchRequiredPullRequestReviews,
  ProtectedBranchRequiredPullRequestReviewsDismissalRestrictions,
  ProtectedBranchRequiredSignatures,
  PublicUser,
  PullRequest,
  PullRequestBase,
  PullRequestBaseRepo,
  PullRequestHead,
  PullRequestHeadRepo,
  PullRequestHeadRepoLicense,
  PullRequestHeadRepoOwner,
  PullRequestLabels,
  PullRequestMergeResult,
  PullRequestMinimal,
  PullRequestMinimalHead,
  PullRequestMinimalHeadRepo,
  PullRequestReview,
  PullRequestReviewComment,
  PullRequestReviewCommentLinks,
  PullRequestReviewCommentLinksHtml,
  PullRequestReviewCommentLinksPullRequest,
  PullRequestReviewCommentLinksSelf,
  PullRequestReviewLinks,
  PullRequestReviewLinksHtml,
  PullRequestReviewRequest,
  PullRequestSimple,
  PullRequestSimpleHead,
  PullRequestSimpleLabels,
  PullRequestSimpleLinks,
  RateLimit,
  RateLimitOverview,
  RateLimitOverviewResources,
  Reaction,
  ReactionRollup,
  ReferrerTraffic,
  Release,
  ReleaseAsset,
  RepoSearchResultItem,
  ReposOwnerRepoBranchesBranchProtectionRequiredPullRequestReviews,
  ReposOwnerRepoBranchesBranchProtectionRequiredPullRequestReviewsDismissalRestrictions,
  ReposOwnerRepoBranchesBranchProtectionRequiredStatusChecks,
  ReposOwnerRepoBranchesBranchProtectionRestrictions,
  ReposOwnerRepoCheckSuitesPreferencesAutoTriggerChecks,
  ReposOwnerRepoContentsPathAuthor,
  ReposOwnerRepoContentsPathAuthor1,
  ReposOwnerRepoContentsPathCommitter,
  ReposOwnerRepoContentsPathCommitter1,
  ReposOwnerRepoEnvironmentsEnvironmentNameReviewers,
  ReposOwnerRepoGitCommitsAuthor,
  ReposOwnerRepoGitCommitsCommitter,
  ReposOwnerRepoGitTagsTagger,
  ReposOwnerRepoGitTreesTree,
  ReposOwnerRepoHooksConfig,
  ReposOwnerRepoHooksHookIdConfig,
  ReposOwnerRepoPagesSource,
  ReposOwnerRepoPullsPullNumberReviewsComments,
  Repository,
  RepositoryCollaboratorPermission,
  RepositoryInvitation,
  RepositoryPermissions,
  RepositorySubscription,
  RepositoryTemplateRepository,
  RepositoryTemplateRepositoryOwner,
  RepositoryTemplateRepositoryPermissions,
  ReviewComment,
  ReviewCommentLinks,
  Runner,
  RunnerApplication,
  RunnerGroupsEnterprise,
  RunnerGroupsOrg,
  RunnerLabels,
  ScimEnterpriseGroup,
  ScimEnterpriseUser,
  ScimEnterpriseUserEmails,
  ScimError,
  ScimGroupListEnterprise,
  ScimGroupListEnterpriseMembers,
  ScimGroupListEnterpriseMeta,
  ScimGroupListEnterpriseResources,
  ScimUser,
  ScimUserEmails,
  ScimUserList,
  ScimUserListEnterprise,
  ScimUserListEnterpriseEmails,
  ScimUserListEnterpriseName,
  ScimUserListEnterpriseResources,
  ScimUserMeta,
  ScimUserName,
  ScimUserOperations,
  ScimV2EnterprisesEnterpriseGroupsMembers,
  ScimV2EnterprisesEnterpriseUsersEmails,
  ScimV2EnterprisesEnterpriseUsersGroups,
  ScimV2EnterprisesEnterpriseUsersName,
  ScimV2OrganizationsOrgUsersEmails,
  ScimV2OrganizationsOrgUsersName,
  ScimV2OrganizationsOrgUsersScimUserIdEmails,
  ScimV2OrganizationsOrgUsersScimUserIdOperations,
  ScopedInstallation,
  SecretScanningAlert,
  SecretScanningAlertResolution,
  SecretScanningAlertResolutionOneOf,
  SecretScanningAlertState,
  SelectedActions,
  ShortBlob,
  ShortBranch,
  ShortBranchCommit,
  SimpleCommit,
  SimpleCommitAuthor,
  SimpleCommitStatus,
  SimpleUser,
  Stargazer,
  StarredRepository,
  Status,
  StatusCheckPolicy,
  Tag,
  Team,
  TeamDiscussion,
  TeamDiscussionComment,
  TeamFull,
  TeamMembership,
  TeamProject,
  TeamProjectPermissions,
  TeamRepository,
  TeamSimple,
  TeamsTeamIdTeamSyncGroupMappingsGroups,
  Thread,
  ThreadSubject,
  ThreadSubscription,
  Topic,
  TopicSearchResultItem,
  TopicSearchResultItemRelated,
  TopicSearchResultItemTopicRelation,
  Traffic,
  UserMarketplacePurchase,
  UserSearchResultItem,
  ValidationError,
  ValidationErrorErrors,
  ValidationErrorSimple,
  Verification,
  ViewTraffic,
  WebhookConfig,
  Workflow,
  WorkflowRun,
  WorkflowRunUsage,
  WorkflowRunUsageBillable,
  WorkflowRunUsageBillableUBUNTU,
  WorkflowUsage,
  WorkflowUsageBillable,
  WorkflowUsageBillableUBUNTU,
])
Serializers serializers = (_$serializers.toBuilder()
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(EnvironmentApprovals)]),
        () => ListBuilder<EnvironmentApprovals>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(RunnerApplication)]),
        () => ListBuilder<RunnerApplication>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(Deployment)]),
        () => ListBuilder<Deployment>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(PendingDeployment)]),
        () => ListBuilder<PendingDeployment>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(Event)]),
        () => ListBuilder<Event>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(SimpleUser)]),
        () => ListBuilder<SimpleUser>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(Repository)]),
        () => ListBuilder<Repository>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(MinimalRepository)]),
        () => ListBuilder<MinimalRepository>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(Thread)]),
        () => ListBuilder<Thread>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(MarketplaceListingPlan)]),
        () => ListBuilder<MarketplaceListingPlan>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(Installation)]),
        () => ListBuilder<Installation>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(MarketplacePurchase)]),
        () => ListBuilder<MarketplacePurchase>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(UserMarketplacePurchase)]),
        () => ListBuilder<UserMarketplacePurchase>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(AuditLogEvent)]),
        () => ListBuilder<AuditLogEvent>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(CheckAnnotation)]),
        () => ListBuilder<CheckAnnotation>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(CodeScanningAnalysis)]),
        () => ListBuilder<CodeScanningAnalysis>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(CodeScanningAlertInstance)]),
        () => ListBuilder<CodeScanningAlertInstance>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(CodeScanningAlertItems)]),
        () => ListBuilder<CodeScanningAlertItems>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(CodeOfConduct)]),
        () => ListBuilder<CodeOfConduct>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltMap, [FullType(String), FullType(String)]),
        () => MapBuilder<String, String>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(RunnerApplication)]),
        () => ListBuilder<RunnerApplication>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(GistSimple)]),
        () => ListBuilder<GistSimple>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(BaseGist)]),
        () => ListBuilder<BaseGist>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(GistCommit)]),
        () => ListBuilder<GistCommit>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(GistComment)]),
        () => ListBuilder<GistComment>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(GitRef)]),
        () => ListBuilder<GitRef>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(String)]),
        () => ListBuilder<String>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(Milestone)]),
        () => ListBuilder<Milestone>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(Label)]),
        () => ListBuilder<Label>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(SimpleUser)]),
        () => ListBuilder<SimpleUser>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(IssueSimple)]),
        () => ListBuilder<IssueSimple>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(IssueEvent)]),
        () => ListBuilder<IssueEvent>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(IssueComment)]),
        () => ListBuilder<IssueComment>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(Issue)]),
        () => ListBuilder<Issue>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(IssueEventForIssue)]),
        () => ListBuilder<IssueEventForIssue>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(LicenseSimple)]),
        () => ListBuilder<LicenseSimple>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(Migration)]),
        () => ListBuilder<Migration>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(PorterAuthor)]),
        () => ListBuilder<PorterAuthor>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(PorterLargeFile)]),
        () => ListBuilder<PorterLargeFile>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(MinimalRepository)]),
        () => ListBuilder<MinimalRepository>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(Authorization)]),
        () => ListBuilder<Authorization>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(ApplicationGrant)]),
        () => ListBuilder<ApplicationGrant>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(OrganizationInvitation)]),
        () => ListBuilder<OrganizationInvitation>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(SimpleUser)]),
        () => ListBuilder<SimpleUser>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(CredentialAuthorization)]),
        () => ListBuilder<CredentialAuthorization>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(AuditLogEvent)]),
        () => ListBuilder<AuditLogEvent>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(OrgMembership)]),
        () => ListBuilder<OrgMembership>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(Team)]),
        () => ListBuilder<Team>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(OrganizationSimple)]),
        () => ListBuilder<OrganizationSimple>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(OrgHook)]),
        () => ListBuilder<OrgHook>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(PackageVersion)]),
        () => ListBuilder<PackageVersion>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(ProjectCard)]),
        () => ListBuilder<ProjectCard>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(SimpleUser)]),
        () => ListBuilder<SimpleUser>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(Project)]),
        () => ListBuilder<Project>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(ProjectColumn)]),
        () => ListBuilder<ProjectColumn>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(PullRequestSimple)]),
        () => ListBuilder<PullRequestSimple>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(PullRequestReviewComment)]),
        () => ListBuilder<PullRequestReviewComment>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(PullRequestReview)]),
        () => ListBuilder<PullRequestReview>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(DiffEntry)]),
        () => ListBuilder<DiffEntry>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(Commit)]),
        () => ListBuilder<Commit>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(ReviewComment)]),
        () => ListBuilder<ReviewComment>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(Reaction)]),
        () => ListBuilder<Reaction>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(Repository)]),
        () => ListBuilder<Repository>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(ReleaseAsset)]),
        () => ListBuilder<ReleaseAsset>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(MinimalRepository)]),
        () => ListBuilder<MinimalRepository>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(BuiltList)]),
        () => ListBuilder<BuiltList>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(ShortBranch)]),
        () => ListBuilder<ShortBranch>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(RepositoryInvitation)]),
        () => ListBuilder<RepositoryInvitation>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(Team)]),
        () => ListBuilder<Team>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(Status)]),
        () => ListBuilder<Status>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltMap, [FullType(String), FullType(int)]),
        () => MapBuilder<String, int>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(Integration)]),
        () => ListBuilder<Integration>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(Deployment)]),
        () => ListBuilder<Deployment>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(PullRequestSimple)]),
        () => ListBuilder<PullRequestSimple>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(PageBuild)]),
        () => ListBuilder<PageBuild>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(CommitActivity)]),
        () => ListBuilder<CommitActivity>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(DeploymentStatus)]),
        () => ListBuilder<DeploymentStatus>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(Release)]),
        () => ListBuilder<Release>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(ContentTraffic)]),
        () => ListBuilder<ContentTraffic>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(ReferrerTraffic)]),
        () => ListBuilder<ReferrerTraffic>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(DeployKey)]),
        () => ListBuilder<DeployKey>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(ContributorActivity)]),
        () => ListBuilder<ContributorActivity>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(BranchShort)]),
        () => ListBuilder<BranchShort>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(CommitComment)]),
        () => ListBuilder<CommitComment>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(Contributor)]),
        () => ListBuilder<Contributor>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(String)]),
        () => ListBuilder<String>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(SimpleUser)]),
        () => ListBuilder<SimpleUser>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(Collaborator)]),
        () => ListBuilder<Collaborator>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(Commit)]),
        () => ListBuilder<Commit>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(Hook)]),
        () => ListBuilder<Hook>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(Tag)]),
        () => ListBuilder<Tag>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(SecretScanningAlert)]),
        () => ListBuilder<SecretScanningAlert>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(OrganizationInvitation)]),
        () => ListBuilder<OrganizationInvitation>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(TeamProject)]),
        () => ListBuilder<TeamProject>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(SimpleUser)]),
        () => ListBuilder<SimpleUser>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(MinimalRepository)]),
        () => ListBuilder<MinimalRepository>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(Team)]),
        () => ListBuilder<Team>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(TeamDiscussion)]),
        () => ListBuilder<TeamDiscussion>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(TeamDiscussionComment)]),
        () => ListBuilder<TeamDiscussionComment>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(TeamFull)]),
        () => ListBuilder<TeamFull>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(SimpleUser)]),
        () => ListBuilder<SimpleUser>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(Key)]),
        () => ListBuilder<Key>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(GpgKey)]),
        () => ListBuilder<GpgKey>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(KeySimple)]),
        () => ListBuilder<KeySimple>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(Email)]),
        () => ListBuilder<Email>(),
      )
      ..add(Iso8601DateTimeSerializer()))
    .build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
