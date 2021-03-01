//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object92.g.dart';

abstract class InlineObject92 implements Built<InlineObject92, InlineObject92Builder> {

    /// The state of the status. Can be one of `error`, `failure`, `inactive`, `in_progress`, `queued` `pending`, or `success`. **Note:** To use the `inactive` state, you must provide the [`application/vnd.github.ant-man-preview+json`](https://docs.github.com/rest/overview/api-previews#enhanced-deployments) custom media type. To use the `in_progress` and `queued` states, you must provide the [`application/vnd.github.flash-preview+json`](https://docs.github.com/rest/overview/api-previews#deployment-statuses) custom media type. When you set a transient deployment to `inactive`, the deployment will be shown as `destroyed` in GitHub.
    @nullable
    @BuiltValueField(wireName: r'state')
    InlineObject92StateEnum get state;
    // enum stateEnum {  error,  failure,  inactive,  in_progress,  queued,  pending,  success,  };

    /// The target URL to associate with this status. This URL should contain output to keep the user updated while the task is running or serve as historical information for what happened in the deployment. **Note:** It's recommended to use the `log_url` parameter, which replaces `target_url`.
    @nullable
    @BuiltValueField(wireName: r'target_url')
    String get targetUrl;

    /// The full URL of the deployment's output. This parameter replaces `target_url`. We will continue to accept `target_url` to support legacy uses, but we recommend replacing `target_url` with `log_url`. Setting `log_url` will automatically set `target_url` to the same value. Default: `\"\"`   **Note:** This parameter requires you to use the [`application/vnd.github.ant-man-preview+json`](https://docs.github.com/rest/overview/api-previews#enhanced-deployments) custom media type. **Note:** This parameter requires you to use the [`application/vnd.github.ant-man-preview+json`](https://docs.github.com/rest/overview/api-previews#enhanced-deployments) custom media type.
    @nullable
    @BuiltValueField(wireName: r'log_url')
    String get logUrl;

    /// A short description of the status. The maximum description length is 140 characters.
    @nullable
    @BuiltValueField(wireName: r'description')
    String get description;

    /// Name for the target deployment environment, which can be changed when setting a deploy status. For example, `production`, `staging`, or `qa`. **Note:** This parameter requires you to use the [`application/vnd.github.flash-preview+json`](https://docs.github.com/rest/overview/api-previews#deployment-statuses) custom media type.
    @nullable
    @BuiltValueField(wireName: r'environment')
    InlineObject92EnvironmentEnum get environment;
    // enum environmentEnum {  production,  staging,  qa,  };

    /// Sets the URL for accessing your environment. Default: `\"\"`   **Note:** This parameter requires you to use the [`application/vnd.github.ant-man-preview+json`](https://docs.github.com/rest/overview/api-previews#enhanced-deployments) custom media type. **Note:** This parameter requires you to use the [`application/vnd.github.ant-man-preview+json`](https://docs.github.com/rest/overview/api-previews#enhanced-deployments) custom media type.
    @nullable
    @BuiltValueField(wireName: r'environment_url')
    String get environmentUrl;

    /// Adds a new `inactive` status to all prior non-transient, non-production environment deployments with the same repository and `environment` name as the created status's deployment. An `inactive` status is only added to deployments that had a `success` state. Default: `true`   **Note:** To add an `inactive` status to `production` environments, you must use the [`application/vnd.github.flash-preview+json`](https://docs.github.com/rest/overview/api-previews#deployment-statuses) custom media type.   **Note:** This parameter requires you to use the [`application/vnd.github.ant-man-preview+json`](https://docs.github.com/rest/overview/api-previews#enhanced-deployments) custom media type.
    @nullable
    @BuiltValueField(wireName: r'auto_inactive')
    bool get autoInactive;

    // Boilerplate code needed to wire-up generated code
    InlineObject92._();

    static void _initializeBuilder(InlineObject92Builder b) => b
        ..targetUrl = ''
        ..logUrl = ''
        ..description = ''
        ..environmentUrl = '';

    factory InlineObject92([void updates(InlineObject92Builder b)]) = _$InlineObject92;
    static Serializer<InlineObject92> get serializer => _$inlineObject92Serializer;
}

class InlineObject92StateEnum extends EnumClass {

  /// The state of the status. Can be one of `error`, `failure`, `inactive`, `in_progress`, `queued` `pending`, or `success`. **Note:** To use the `inactive` state, you must provide the [`application/vnd.github.ant-man-preview+json`](https://docs.github.com/rest/overview/api-previews#enhanced-deployments) custom media type. To use the `in_progress` and `queued` states, you must provide the [`application/vnd.github.flash-preview+json`](https://docs.github.com/rest/overview/api-previews#deployment-statuses) custom media type. When you set a transient deployment to `inactive`, the deployment will be shown as `destroyed` in GitHub.
  @BuiltValueEnumConst(wireName: r'error')
  static const InlineObject92StateEnum error = _$inlineObject92StateEnum_error;
  /// The state of the status. Can be one of `error`, `failure`, `inactive`, `in_progress`, `queued` `pending`, or `success`. **Note:** To use the `inactive` state, you must provide the [`application/vnd.github.ant-man-preview+json`](https://docs.github.com/rest/overview/api-previews#enhanced-deployments) custom media type. To use the `in_progress` and `queued` states, you must provide the [`application/vnd.github.flash-preview+json`](https://docs.github.com/rest/overview/api-previews#deployment-statuses) custom media type. When you set a transient deployment to `inactive`, the deployment will be shown as `destroyed` in GitHub.
  @BuiltValueEnumConst(wireName: r'failure')
  static const InlineObject92StateEnum failure = _$inlineObject92StateEnum_failure;
  /// The state of the status. Can be one of `error`, `failure`, `inactive`, `in_progress`, `queued` `pending`, or `success`. **Note:** To use the `inactive` state, you must provide the [`application/vnd.github.ant-man-preview+json`](https://docs.github.com/rest/overview/api-previews#enhanced-deployments) custom media type. To use the `in_progress` and `queued` states, you must provide the [`application/vnd.github.flash-preview+json`](https://docs.github.com/rest/overview/api-previews#deployment-statuses) custom media type. When you set a transient deployment to `inactive`, the deployment will be shown as `destroyed` in GitHub.
  @BuiltValueEnumConst(wireName: r'inactive')
  static const InlineObject92StateEnum inactive = _$inlineObject92StateEnum_inactive;
  /// The state of the status. Can be one of `error`, `failure`, `inactive`, `in_progress`, `queued` `pending`, or `success`. **Note:** To use the `inactive` state, you must provide the [`application/vnd.github.ant-man-preview+json`](https://docs.github.com/rest/overview/api-previews#enhanced-deployments) custom media type. To use the `in_progress` and `queued` states, you must provide the [`application/vnd.github.flash-preview+json`](https://docs.github.com/rest/overview/api-previews#deployment-statuses) custom media type. When you set a transient deployment to `inactive`, the deployment will be shown as `destroyed` in GitHub.
  @BuiltValueEnumConst(wireName: r'in_progress')
  static const InlineObject92StateEnum inProgress = _$inlineObject92StateEnum_inProgress;
  /// The state of the status. Can be one of `error`, `failure`, `inactive`, `in_progress`, `queued` `pending`, or `success`. **Note:** To use the `inactive` state, you must provide the [`application/vnd.github.ant-man-preview+json`](https://docs.github.com/rest/overview/api-previews#enhanced-deployments) custom media type. To use the `in_progress` and `queued` states, you must provide the [`application/vnd.github.flash-preview+json`](https://docs.github.com/rest/overview/api-previews#deployment-statuses) custom media type. When you set a transient deployment to `inactive`, the deployment will be shown as `destroyed` in GitHub.
  @BuiltValueEnumConst(wireName: r'queued')
  static const InlineObject92StateEnum queued = _$inlineObject92StateEnum_queued;
  /// The state of the status. Can be one of `error`, `failure`, `inactive`, `in_progress`, `queued` `pending`, or `success`. **Note:** To use the `inactive` state, you must provide the [`application/vnd.github.ant-man-preview+json`](https://docs.github.com/rest/overview/api-previews#enhanced-deployments) custom media type. To use the `in_progress` and `queued` states, you must provide the [`application/vnd.github.flash-preview+json`](https://docs.github.com/rest/overview/api-previews#deployment-statuses) custom media type. When you set a transient deployment to `inactive`, the deployment will be shown as `destroyed` in GitHub.
  @BuiltValueEnumConst(wireName: r'pending')
  static const InlineObject92StateEnum pending = _$inlineObject92StateEnum_pending;
  /// The state of the status. Can be one of `error`, `failure`, `inactive`, `in_progress`, `queued` `pending`, or `success`. **Note:** To use the `inactive` state, you must provide the [`application/vnd.github.ant-man-preview+json`](https://docs.github.com/rest/overview/api-previews#enhanced-deployments) custom media type. To use the `in_progress` and `queued` states, you must provide the [`application/vnd.github.flash-preview+json`](https://docs.github.com/rest/overview/api-previews#deployment-statuses) custom media type. When you set a transient deployment to `inactive`, the deployment will be shown as `destroyed` in GitHub.
  @BuiltValueEnumConst(wireName: r'success')
  static const InlineObject92StateEnum success = _$inlineObject92StateEnum_success;

  static Serializer<InlineObject92StateEnum> get serializer => _$inlineObject92StateEnumSerializer;

  const InlineObject92StateEnum._(String name): super(name);

  static BuiltSet<InlineObject92StateEnum> get values => _$inlineObject92StateEnumValues;
  static InlineObject92StateEnum valueOf(String name) => _$inlineObject92StateEnumValueOf(name);
}

class InlineObject92EnvironmentEnum extends EnumClass {

  /// Name for the target deployment environment, which can be changed when setting a deploy status. For example, `production`, `staging`, or `qa`. **Note:** This parameter requires you to use the [`application/vnd.github.flash-preview+json`](https://docs.github.com/rest/overview/api-previews#deployment-statuses) custom media type.
  @BuiltValueEnumConst(wireName: r'production')
  static const InlineObject92EnvironmentEnum production = _$inlineObject92EnvironmentEnum_production;
  /// Name for the target deployment environment, which can be changed when setting a deploy status. For example, `production`, `staging`, or `qa`. **Note:** This parameter requires you to use the [`application/vnd.github.flash-preview+json`](https://docs.github.com/rest/overview/api-previews#deployment-statuses) custom media type.
  @BuiltValueEnumConst(wireName: r'staging')
  static const InlineObject92EnvironmentEnum staging = _$inlineObject92EnvironmentEnum_staging;
  /// Name for the target deployment environment, which can be changed when setting a deploy status. For example, `production`, `staging`, or `qa`. **Note:** This parameter requires you to use the [`application/vnd.github.flash-preview+json`](https://docs.github.com/rest/overview/api-previews#deployment-statuses) custom media type.
  @BuiltValueEnumConst(wireName: r'qa')
  static const InlineObject92EnvironmentEnum qa = _$inlineObject92EnvironmentEnum_qa;

  static Serializer<InlineObject92EnvironmentEnum> get serializer => _$inlineObject92EnvironmentEnumSerializer;

  const InlineObject92EnvironmentEnum._(String name): super(name);

  static BuiltSet<InlineObject92EnvironmentEnum> get values => _$inlineObject92EnvironmentEnumValues;
  static InlineObject92EnvironmentEnum valueOf(String name) => _$inlineObject92EnvironmentEnumValueOf(name);
}

