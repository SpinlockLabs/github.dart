//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/minimal_repository.dart';
import 'package:built_collection/built_collection.dart';
import 'package:github/model/pull_request_minimal.dart';
import 'package:github/model/simple_commit.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'workflow_run.g.dart';

abstract class WorkflowRun implements Built<WorkflowRun, WorkflowRunBuilder> {

    /// The ID of the workflow run.
    @nullable
    @BuiltValueField(wireName: r'id')
    int get id;

    /// The name of the workflow run.
    @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    @nullable
    @BuiltValueField(wireName: r'node_id')
    String get nodeId;

    @nullable
    @BuiltValueField(wireName: r'head_branch')
    String get headBranch;

    /// The SHA of the head commit that points to the version of the worflow being run.
    @nullable
    @BuiltValueField(wireName: r'head_sha')
    String get headSha;

    /// The auto incrementing run number for the workflow run.
    @nullable
    @BuiltValueField(wireName: r'run_number')
    int get runNumber;

    @nullable
    @BuiltValueField(wireName: r'event')
    String get event;

    @nullable
    @BuiltValueField(wireName: r'status')
    String get status;

    @nullable
    @BuiltValueField(wireName: r'conclusion')
    String get conclusion;

    /// The ID of the parent workflow.
    @nullable
    @BuiltValueField(wireName: r'workflow_id')
    int get workflowId;

    /// The URL to the workflow run.
    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    @nullable
    @BuiltValueField(wireName: r'html_url')
    String get htmlUrl;

    @nullable
    @BuiltValueField(wireName: r'pull_requests')
    BuiltList<PullRequestMinimal> get pullRequests;

    @nullable
    @BuiltValueField(wireName: r'created_at')
    DateTime get createdAt;

    @nullable
    @BuiltValueField(wireName: r'updated_at')
    DateTime get updatedAt;

    /// The URL to the jobs for the workflow run.
    @nullable
    @BuiltValueField(wireName: r'jobs_url')
    String get jobsUrl;

    /// The URL to download the logs for the workflow run.
    @nullable
    @BuiltValueField(wireName: r'logs_url')
    String get logsUrl;

    /// The URL to the associated check suite.
    @nullable
    @BuiltValueField(wireName: r'check_suite_url')
    String get checkSuiteUrl;

    /// The URL to the artifacts for the workflow run.
    @nullable
    @BuiltValueField(wireName: r'artifacts_url')
    String get artifactsUrl;

    /// The URL to cancel the workflow run.
    @nullable
    @BuiltValueField(wireName: r'cancel_url')
    String get cancelUrl;

    /// The URL to rerun the workflow run.
    @nullable
    @BuiltValueField(wireName: r'rerun_url')
    String get rerunUrl;

    /// The URL to the workflow.
    @nullable
    @BuiltValueField(wireName: r'workflow_url')
    String get workflowUrl;

    @nullable
    @BuiltValueField(wireName: r'head_commit')
    SimpleCommit get headCommit;

    @nullable
    @BuiltValueField(wireName: r'repository')
    MinimalRepository get repository;

    @nullable
    @BuiltValueField(wireName: r'head_repository')
    MinimalRepository get headRepository;

    @nullable
    @BuiltValueField(wireName: r'head_repository_id')
    int get headRepositoryId;

    // Boilerplate code needed to wire-up generated code
    WorkflowRun._();

    static void _initializeBuilder(WorkflowRunBuilder b) => b;

    factory WorkflowRun([void updates(WorkflowRunBuilder b)]) = _$WorkflowRun;
    static Serializer<WorkflowRun> get serializer => _$workflowRunSerializer;
}

