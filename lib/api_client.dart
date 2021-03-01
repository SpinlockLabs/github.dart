//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ApiClient {
  ApiClient({this.basePath = 'https://api.github.com'}) {
  }

  final String basePath;

  var _client = Client();

  /// Returns the current HTTP [Client] instance to use in this class.
  ///
  /// The return value is guaranteed to never be null.
  Client get client => _client;

  /// Requests to use a new HTTP [Client] in this class.
  ///
  /// If the [newClient] is null, an [ArgumentError] is thrown.
  set client(Client newClient) {
    if (newClient == null) {
      throw ArgumentError('New client instance cannot be null.');
    }
    _client = newClient;
  }

  final _defaultHeaderMap = <String, String>{};
  final _authentications = <String, Authentication>{};

  void addDefaultHeader(String key, String value) {
     _defaultHeaderMap[key] = value;
  }

  Map<String,String> get defaultHeaderMap => _defaultHeaderMap;

  /// returns an unmodifiable view of the authentications, since none should be added
  /// nor deleted
  Map<String, Authentication> get authentications =>
      Map.unmodifiable(_authentications);

  dynamic deserialize(String json, String targetType, {bool growable}) {
    // Remove all spaces.  Necessary for reg expressions as well.
    targetType = targetType.replaceAll(' ', '');

    return targetType == 'String'
      ? json
      : _deserialize(jsonDecode(json), targetType, growable: true == growable);
  }

  String serialize(Object obj) => obj == null ? '' : json.encode(obj);

  T getAuthentication<T extends Authentication>(String name) {
    final authentication = _authentications[name];
    return authentication is T ? authentication : null;
  }

  // We don’t use a Map<String, String> for queryParams.
  // If collectionFormat is 'multi', a key might appear multiple times.
  Future<Response> invokeAPI(
    String path,
    String method,
    Iterable<QueryParam> queryParams,
    Object body,
    Map<String, String> headerParams,
    Map<String, String> formParams,
    String nullableContentType,
    List<String> authNames,
  ) async {
    _updateParamsForAuth(authNames, queryParams, headerParams);

    headerParams.addAll(_defaultHeaderMap);

    final urlEncodedQueryParams = queryParams
      .where((param) => param.value != null)
      .map((param) => '$param');

    final queryString = urlEncodedQueryParams.isNotEmpty
      ? '?${urlEncodedQueryParams.join('&')}'
      : '';

    final url = '$basePath$path$queryString';

    if (nullableContentType != null) {
      headerParams['Content-Type'] = nullableContentType;
    }

    try {
      // Special case for uploading a single file which isn’t a 'multipart/form-data'.
      if (
        body is MultipartFile && (nullableContentType == null ||
        !nullableContentType.toLowerCase().startsWith('multipart/form-data'))
      ) {
        final request = StreamedRequest(method, Uri.parse(url));
        request.headers.addAll(headerParams);
        request.contentLength = body.length;
        body.finalize().listen(
          request.sink.add,
          onDone: request.sink.close,
          onError: (error, trace) => request.sink.close(),
          cancelOnError: true,
        );
        final response = await _client.send(request);
        return Response.fromStream(response);
      }

      if (body is MultipartRequest) {
        final request = MultipartRequest(method, Uri.parse(url));
        request.fields.addAll(body.fields);
        request.files.addAll(body.files);
        request.headers.addAll(body.headers);
        request.headers.addAll(headerParams);
        final response = await _client.send(request);
        return Response.fromStream(response);
      }

      final msgBody = nullableContentType == 'application/x-www-form-urlencoded'
        ? formParams
        : serialize(body);
      final nullableHeaderParams = headerParams.isEmpty ? null : headerParams;

      switch(method) {
        case 'POST': return await _client.post(url, headers: nullableHeaderParams, body: msgBody,);
        case 'PUT': return await _client.put(url, headers: nullableHeaderParams, body: msgBody,);
        case 'DELETE': return await _client.delete(url, headers: nullableHeaderParams,);
        case 'PATCH': return await _client.patch(url, headers: nullableHeaderParams, body: msgBody,);
        case 'HEAD': return await _client.head(url, headers: nullableHeaderParams,);
        case 'GET': return await _client.get(url, headers: nullableHeaderParams,);
      }
    } on SocketException catch (e, trace) {
      throw ApiException.withInner(HttpStatus.badRequest, 'Socket operation failed: $method $path', e, trace,);
    } on TlsException catch (e, trace) {
      throw ApiException.withInner(HttpStatus.badRequest, 'TLS/SSL communication failed: $method $path', e, trace,);
    } on IOException catch (e, trace) {
      throw ApiException.withInner(HttpStatus.badRequest, 'I/O operation failed: $method $path', e, trace,);
    } on ClientException catch (e, trace) {
      throw ApiException.withInner(HttpStatus.badRequest, 'HTTP connection failed: $method $path', e, trace,);
    } on Exception catch (e, trace) {
      throw ApiException.withInner(HttpStatus.badRequest, 'Exception occurred: $method $path', e, trace,);
    }

    throw ApiException(HttpStatus.badRequest, 'Invalid HTTP operation: $method $path',);
  }

  dynamic _deserialize(dynamic value, String targetType, {bool growable}) {
    try {
      switch (targetType) {
        case 'String':
          return '$value';
        case 'int':
          return value is int ? value : int.parse('$value');
        case 'bool':
          if (value is bool) {
            return value;
          }
          final valueString = '$value'.toLowerCase();
          return valueString == 'true' || valueString == '1';
          break;
        case 'double':
          return value is double ? value : double.parse('$value');
        case 'ActionsBillingUsage':
          return ActionsBillingUsage.fromJson(value);
        case 'ActionsBillingUsageMinutesUsedBreakdown':
          return ActionsBillingUsageMinutesUsedBreakdown.fromJson(value);
        case 'ActionsEnterprisePermissions':
          return ActionsEnterprisePermissions.fromJson(value);
        case 'ActionsOrganizationPermissions':
          return ActionsOrganizationPermissions.fromJson(value);
        case 'ActionsPublicKey':
          return ActionsPublicKey.fromJson(value);
        case 'ActionsRepositoryPermissions':
          return ActionsRepositoryPermissions.fromJson(value);
        case 'ActionsSecret':
          return ActionsSecret.fromJson(value);
        case 'Actor':
          return Actor.fromJson(value);
        case 'AllowedActions':
          return AllowedActionsTypeTransformer().decode(value);
        case 'ApiOverview':
          return ApiOverview.fromJson(value);
        case 'ApiOverviewSshKeyFingerprints':
          return ApiOverviewSshKeyFingerprints.fromJson(value);
        case 'AppPermissions':
          return AppPermissions.fromJson(value);
        case 'ApplicationGrant':
          return ApplicationGrant.fromJson(value);
        case 'ApplicationGrantApp':
          return ApplicationGrantApp.fromJson(value);
        case 'Artifact':
          return Artifact.fromJson(value);
        case 'AuditLogEvent':
          return AuditLogEvent.fromJson(value);
        case 'AuthenticationToken':
          return AuthenticationToken.fromJson(value);
        case 'AuthorAssociation':
          return AuthorAssociationTypeTransformer().decode(value);
        case 'Authorization':
          return Authorization.fromJson(value);
        case 'AutoMerge':
          return AutoMerge.fromJson(value);
        case 'BaseGist':
          return BaseGist.fromJson(value);
        case 'BaseGistFiles':
          return BaseGistFiles.fromJson(value);
        case 'BasicError':
          return BasicError.fromJson(value);
        case 'Blob':
          return Blob.fromJson(value);
        case 'BranchProtection':
          return BranchProtection.fromJson(value);
        case 'BranchProtectionRequiredLinearHistory':
          return BranchProtectionRequiredLinearHistory.fromJson(value);
        case 'BranchProtectionRequiredStatusChecks':
          return BranchProtectionRequiredStatusChecks.fromJson(value);
        case 'BranchRestrictionPolicy':
          return BranchRestrictionPolicy.fromJson(value);
        case 'BranchRestrictionPolicyApps':
          return BranchRestrictionPolicyApps.fromJson(value);
        case 'BranchRestrictionPolicyOwner':
          return BranchRestrictionPolicyOwner.fromJson(value);
        case 'BranchRestrictionPolicyPermissions':
          return BranchRestrictionPolicyPermissions.fromJson(value);
        case 'BranchRestrictionPolicyTeams':
          return BranchRestrictionPolicyTeams.fromJson(value);
        case 'BranchShort':
          return BranchShort.fromJson(value);
        case 'BranchShortCommit':
          return BranchShortCommit.fromJson(value);
        case 'BranchWithProtection':
          return BranchWithProtection.fromJson(value);
        case 'BranchWithProtectionLinks':
          return BranchWithProtectionLinks.fromJson(value);
        case 'CheckAnnotation':
          return CheckAnnotation.fromJson(value);
        case 'CheckRun':
          return CheckRun.fromJson(value);
        case 'CheckRunCheckSuite':
          return CheckRunCheckSuite.fromJson(value);
        case 'CheckRunOutput':
          return CheckRunOutput.fromJson(value);
        case 'CheckSuite':
          return CheckSuite.fromJson(value);
        case 'CheckSuitePreference':
          return CheckSuitePreference.fromJson(value);
        case 'CheckSuitePreferencePreferences':
          return CheckSuitePreferencePreferences.fromJson(value);
        case 'CheckSuitePreferencePreferencesAutoTriggerChecks':
          return CheckSuitePreferencePreferencesAutoTriggerChecks.fromJson(value);
        case 'CloneTraffic':
          return CloneTraffic.fromJson(value);
        case 'CodeOfConduct':
          return CodeOfConduct.fromJson(value);
        case 'CodeOfConductSimple':
          return CodeOfConductSimple.fromJson(value);
        case 'CodeScanningAlert':
          return CodeScanningAlert.fromJson(value);
        case 'CodeScanningAlertClassification':
          return CodeScanningAlertClassificationTypeTransformer().decode(value);
        case 'CodeScanningAlertDismissedReason':
          return CodeScanningAlertDismissedReason.fromJson(value);
        case 'CodeScanningAlertDismissedReasonOneOf':
          return CodeScanningAlertDismissedReasonOneOfTypeTransformer().decode(value);
        case 'CodeScanningAlertDismissedReasonOneOf1':
          return CodeScanningAlertDismissedReasonOneOf1TypeTransformer().decode(value);
        case 'CodeScanningAlertInstance':
          return CodeScanningAlertInstance.fromJson(value);
        case 'CodeScanningAlertInstanceMessage':
          return CodeScanningAlertInstanceMessage.fromJson(value);
        case 'CodeScanningAlertItems':
          return CodeScanningAlertItems.fromJson(value);
        case 'CodeScanningAlertLocation':
          return CodeScanningAlertLocation.fromJson(value);
        case 'CodeScanningAlertRule':
          return CodeScanningAlertRule.fromJson(value);
        case 'CodeScanningAlertRuleSummary':
          return CodeScanningAlertRuleSummary.fromJson(value);
        case 'CodeScanningAlertSetState':
          return CodeScanningAlertSetStateTypeTransformer().decode(value);
        case 'CodeScanningAlertState':
          return CodeScanningAlertStateTypeTransformer().decode(value);
        case 'CodeScanningAnalysis':
          return CodeScanningAnalysis.fromJson(value);
        case 'CodeScanningAnalysisDeletion':
          return CodeScanningAnalysisDeletion.fromJson(value);
        case 'CodeScanningAnalysisTool':
          return CodeScanningAnalysisTool.fromJson(value);
        case 'CodeScanningSarifsReceipt':
          return CodeScanningSarifsReceipt.fromJson(value);
        case 'CodeScanningSarifsStatus':
          return CodeScanningSarifsStatus.fromJson(value);
        case 'CodeSearchResultItem':
          return CodeSearchResultItem.fromJson(value);
        case 'Collaborator':
          return Collaborator.fromJson(value);
        case 'CollaboratorPermissions':
          return CollaboratorPermissions.fromJson(value);
        case 'CombinedBillingUsage':
          return CombinedBillingUsage.fromJson(value);
        case 'CombinedCommitStatus':
          return CombinedCommitStatus.fromJson(value);
        case 'Commit':
          return Commit.fromJson(value);
        case 'CommitActivity':
          return CommitActivity.fromJson(value);
        case 'CommitComment':
          return CommitComment.fromJson(value);
        case 'CommitCommit':
          return CommitCommit.fromJson(value);
        case 'CommitCommitTree':
          return CommitCommitTree.fromJson(value);
        case 'CommitComparison':
          return CommitComparison.fromJson(value);
        case 'CommitFiles':
          return CommitFiles.fromJson(value);
        case 'CommitParents':
          return CommitParents.fromJson(value);
        case 'CommitSearchResultItem':
          return CommitSearchResultItem.fromJson(value);
        case 'CommitSearchResultItemCommit':
          return CommitSearchResultItemCommit.fromJson(value);
        case 'CommitSearchResultItemCommitAuthor':
          return CommitSearchResultItemCommitAuthor.fromJson(value);
        case 'CommitStats':
          return CommitStats.fromJson(value);
        case 'CommunityHealthFile':
          return CommunityHealthFile.fromJson(value);
        case 'CommunityProfile':
          return CommunityProfile.fromJson(value);
        case 'CommunityProfileFiles':
          return CommunityProfileFiles.fromJson(value);
        case 'ContainerMetadata':
          return ContainerMetadata.fromJson(value);
        case 'ContentFile':
          return ContentFile.fromJson(value);
        case 'ContentReferenceAttachment':
          return ContentReferenceAttachment.fromJson(value);
        case 'ContentSubmodule':
          return ContentSubmodule.fromJson(value);
        case 'ContentSymlink':
          return ContentSymlink.fromJson(value);
        case 'ContentTraffic':
          return ContentTraffic.fromJson(value);
        case 'ContentTree':
          return ContentTree.fromJson(value);
        case 'ContentTreeEntries':
          return ContentTreeEntries.fromJson(value);
        case 'ContentTreeLinks':
          return ContentTreeLinks.fromJson(value);
        case 'Contributor':
          return Contributor.fromJson(value);
        case 'ContributorActivity':
          return ContributorActivity.fromJson(value);
        case 'ContributorActivityWeeks':
          return ContributorActivityWeeks.fromJson(value);
        case 'CredentialAuthorization':
          return CredentialAuthorization.fromJson(value);
        case 'DeployKey':
          return DeployKey.fromJson(value);
        case 'Deployment':
          return Deployment.fromJson(value);
        case 'DeploymentBranchPolicy':
          return DeploymentBranchPolicy.fromJson(value);
        case 'DeploymentReviewerType':
          return DeploymentReviewerTypeTypeTransformer().decode(value);
        case 'DeploymentSimple':
          return DeploymentSimple.fromJson(value);
        case 'DeploymentStatus':
          return DeploymentStatus.fromJson(value);
        case 'DiffEntry':
          return DiffEntry.fromJson(value);
        case 'DockerMetadata':
          return DockerMetadata.fromJson(value);
        case 'Email':
          return Email.fromJson(value);
        case 'EnabledOrganizations':
          return EnabledOrganizationsTypeTransformer().decode(value);
        case 'EnabledRepositories':
          return EnabledRepositoriesTypeTransformer().decode(value);
        case 'Enterprise':
          return Enterprise.fromJson(value);
        case 'Environment':
          return Environment.fromJson(value);
        case 'EnvironmentApprovals':
          return EnvironmentApprovals.fromJson(value);
        case 'EnvironmentApprovalsEnvironments':
          return EnvironmentApprovalsEnvironments.fromJson(value);
        case 'Event':
          return Event.fromJson(value);
        case 'EventPayload':
          return EventPayload.fromJson(value);
        case 'EventPayloadPages':
          return EventPayloadPages.fromJson(value);
        case 'EventRepo':
          return EventRepo.fromJson(value);
        case 'Feed':
          return Feed.fromJson(value);
        case 'FeedLinks':
          return FeedLinks.fromJson(value);
        case 'FileCommit':
          return FileCommit.fromJson(value);
        case 'FileCommitCommit':
          return FileCommitCommit.fromJson(value);
        case 'FileCommitCommitAuthor':
          return FileCommitCommitAuthor.fromJson(value);
        case 'FileCommitCommitParents':
          return FileCommitCommitParents.fromJson(value);
        case 'FileCommitCommitTree':
          return FileCommitCommitTree.fromJson(value);
        case 'FileCommitCommitVerification':
          return FileCommitCommitVerification.fromJson(value);
        case 'FileCommitContent':
          return FileCommitContent.fromJson(value);
        case 'FileCommitContentLinks':
          return FileCommitContentLinks.fromJson(value);
        case 'FullRepository':
          return FullRepository.fromJson(value);
        case 'FullRepositoryPermissions':
          return FullRepositoryPermissions.fromJson(value);
        case 'GistComment':
          return GistComment.fromJson(value);
        case 'GistCommit':
          return GistCommit.fromJson(value);
        case 'GistCommitChangeStatus':
          return GistCommitChangeStatus.fromJson(value);
        case 'GistSimple':
          return GistSimple.fromJson(value);
        case 'GistSimpleFiles':
          return GistSimpleFiles.fromJson(value);
        case 'GistsFiles':
          return GistsFiles.fromJson(value);
        case 'GitCommit':
          return GitCommit.fromJson(value);
        case 'GitCommitAuthor':
          return GitCommitAuthor.fromJson(value);
        case 'GitCommitParents':
          return GitCommitParents.fromJson(value);
        case 'GitCommitTree':
          return GitCommitTree.fromJson(value);
        case 'GitCommitVerification':
          return GitCommitVerification.fromJson(value);
        case 'GitRef':
          return GitRef.fromJson(value);
        case 'GitRefObject':
          return GitRefObject.fromJson(value);
        case 'GitTag':
          return GitTag.fromJson(value);
        case 'GitTagObject':
          return GitTagObject.fromJson(value);
        case 'GitTagTagger':
          return GitTagTagger.fromJson(value);
        case 'GitTree':
          return GitTree.fromJson(value);
        case 'GitTreeTree':
          return GitTreeTree.fromJson(value);
        case 'GitUser':
          return GitUser.fromJson(value);
        case 'GitignoreTemplate':
          return GitignoreTemplate.fromJson(value);
        case 'GpgKey':
          return GpgKey.fromJson(value);
        case 'GpgKeyEmails':
          return GpgKeyEmails.fromJson(value);
        case 'GpgKeySubkeys':
          return GpgKeySubkeys.fromJson(value);
        case 'GroupMapping':
          return GroupMapping.fromJson(value);
        case 'GroupMappingGroups':
          return GroupMappingGroups.fromJson(value);
        case 'Hook':
          return Hook.fromJson(value);
        case 'HookConfig':
          return HookConfig.fromJson(value);
        case 'HookResponse':
          return HookResponse.fromJson(value);
        case 'Hovercard':
          return Hovercard.fromJson(value);
        case 'HovercardContexts':
          return HovercardContexts.fromJson(value);
        case 'ImportProjectChoices':
          return ImportProjectChoices.fromJson(value);
        case 'InlineObject':
          return InlineObject.fromJson(value);
        case 'InlineObject1':
          return InlineObject1.fromJson(value);
        case 'InlineObject10':
          return InlineObject10.fromJson(value);
        case 'InlineObject100':
          return InlineObject100.fromJson(value);
        case 'InlineObject101':
          return InlineObject101.fromJson(value);
        case 'InlineObject102':
          return InlineObject102.fromJson(value);
        case 'InlineObject103':
          return InlineObject103.fromJson(value);
        case 'InlineObject104':
          return InlineObject104.fromJson(value);
        case 'InlineObject105':
          return InlineObject105.fromJson(value);
        case 'InlineObject106':
          return InlineObject106.fromJson(value);
        case 'InlineObject107':
          return InlineObject107.fromJson(value);
        case 'InlineObject108':
          return InlineObject108.fromJson(value);
        case 'InlineObject109':
          return InlineObject109.fromJson(value);
        case 'InlineObject11':
          return InlineObject11.fromJson(value);
        case 'InlineObject110':
          return InlineObject110.fromJson(value);
        case 'InlineObject111':
          return InlineObject111.fromJson(value);
        case 'InlineObject112':
          return InlineObject112.fromJson(value);
        case 'InlineObject113':
          return InlineObject113.fromJson(value);
        case 'InlineObject114':
          return InlineObject114.fromJson(value);
        case 'InlineObject115':
          return InlineObject115.fromJson(value);
        case 'InlineObject116':
          return InlineObject116.fromJson(value);
        case 'InlineObject117':
          return InlineObject117.fromJson(value);
        case 'InlineObject118':
          return InlineObject118.fromJson(value);
        case 'InlineObject119':
          return InlineObject119.fromJson(value);
        case 'InlineObject12':
          return InlineObject12.fromJson(value);
        case 'InlineObject120':
          return InlineObject120.fromJson(value);
        case 'InlineObject121':
          return InlineObject121.fromJson(value);
        case 'InlineObject122':
          return InlineObject122.fromJson(value);
        case 'InlineObject123':
          return InlineObject123.fromJson(value);
        case 'InlineObject124':
          return InlineObject124.fromJson(value);
        case 'InlineObject125':
          return InlineObject125.fromJson(value);
        case 'InlineObject126':
          return InlineObject126.fromJson(value);
        case 'InlineObject127':
          return InlineObject127.fromJson(value);
        case 'InlineObject128':
          return InlineObject128.fromJson(value);
        case 'InlineObject129':
          return InlineObject129.fromJson(value);
        case 'InlineObject13':
          return InlineObject13.fromJson(value);
        case 'InlineObject130':
          return InlineObject130.fromJson(value);
        case 'InlineObject131':
          return InlineObject131.fromJson(value);
        case 'InlineObject132':
          return InlineObject132.fromJson(value);
        case 'InlineObject133':
          return InlineObject133.fromJson(value);
        case 'InlineObject134':
          return InlineObject134.fromJson(value);
        case 'InlineObject135':
          return InlineObject135.fromJson(value);
        case 'InlineObject136':
          return InlineObject136.fromJson(value);
        case 'InlineObject137':
          return InlineObject137.fromJson(value);
        case 'InlineObject138':
          return InlineObject138.fromJson(value);
        case 'InlineObject139':
          return InlineObject139.fromJson(value);
        case 'InlineObject14':
          return InlineObject14.fromJson(value);
        case 'InlineObject140':
          return InlineObject140.fromJson(value);
        case 'InlineObject141':
          return InlineObject141.fromJson(value);
        case 'InlineObject142':
          return InlineObject142.fromJson(value);
        case 'InlineObject143':
          return InlineObject143.fromJson(value);
        case 'InlineObject144':
          return InlineObject144.fromJson(value);
        case 'InlineObject145':
          return InlineObject145.fromJson(value);
        case 'InlineObject146':
          return InlineObject146.fromJson(value);
        case 'InlineObject147':
          return InlineObject147.fromJson(value);
        case 'InlineObject148':
          return InlineObject148.fromJson(value);
        case 'InlineObject149':
          return InlineObject149.fromJson(value);
        case 'InlineObject15':
          return InlineObject15.fromJson(value);
        case 'InlineObject150':
          return InlineObject150.fromJson(value);
        case 'InlineObject151':
          return InlineObject151.fromJson(value);
        case 'InlineObject152':
          return InlineObject152.fromJson(value);
        case 'InlineObject153':
          return InlineObject153.fromJson(value);
        case 'InlineObject154':
          return InlineObject154.fromJson(value);
        case 'InlineObject155':
          return InlineObject155.fromJson(value);
        case 'InlineObject156':
          return InlineObject156.fromJson(value);
        case 'InlineObject157':
          return InlineObject157.fromJson(value);
        case 'InlineObject158':
          return InlineObject158.fromJson(value);
        case 'InlineObject159':
          return InlineObject159.fromJson(value);
        case 'InlineObject16':
          return InlineObject16.fromJson(value);
        case 'InlineObject160':
          return InlineObject160.fromJson(value);
        case 'InlineObject161':
          return InlineObject161.fromJson(value);
        case 'InlineObject162':
          return InlineObject162.fromJson(value);
        case 'InlineObject163':
          return InlineObject163.fromJson(value);
        case 'InlineObject164':
          return InlineObject164.fromJson(value);
        case 'InlineObject165':
          return InlineObject165.fromJson(value);
        case 'InlineObject166':
          return InlineObject166.fromJson(value);
        case 'InlineObject167':
          return InlineObject167.fromJson(value);
        case 'InlineObject168':
          return InlineObject168.fromJson(value);
        case 'InlineObject169':
          return InlineObject169.fromJson(value);
        case 'InlineObject17':
          return InlineObject17.fromJson(value);
        case 'InlineObject170':
          return InlineObject170.fromJson(value);
        case 'InlineObject171':
          return InlineObject171.fromJson(value);
        case 'InlineObject172':
          return InlineObject172.fromJson(value);
        case 'InlineObject173':
          return InlineObject173.fromJson(value);
        case 'InlineObject174':
          return InlineObject174.fromJson(value);
        case 'InlineObject175':
          return InlineObject175.fromJson(value);
        case 'InlineObject176':
          return InlineObject176.fromJson(value);
        case 'InlineObject177':
          return InlineObject177.fromJson(value);
        case 'InlineObject178':
          return InlineObject178.fromJson(value);
        case 'InlineObject179':
          return InlineObject179.fromJson(value);
        case 'InlineObject18':
          return InlineObject18.fromJson(value);
        case 'InlineObject180':
          return InlineObject180.fromJson(value);
        case 'InlineObject181':
          return InlineObject181.fromJson(value);
        case 'InlineObject19':
          return InlineObject19.fromJson(value);
        case 'InlineObject2':
          return InlineObject2.fromJson(value);
        case 'InlineObject20':
          return InlineObject20.fromJson(value);
        case 'InlineObject21':
          return InlineObject21.fromJson(value);
        case 'InlineObject22':
          return InlineObject22.fromJson(value);
        case 'InlineObject23':
          return InlineObject23.fromJson(value);
        case 'InlineObject24':
          return InlineObject24.fromJson(value);
        case 'InlineObject25':
          return InlineObject25.fromJson(value);
        case 'InlineObject26':
          return InlineObject26.fromJson(value);
        case 'InlineObject27':
          return InlineObject27.fromJson(value);
        case 'InlineObject28':
          return InlineObject28.fromJson(value);
        case 'InlineObject29':
          return InlineObject29.fromJson(value);
        case 'InlineObject3':
          return InlineObject3.fromJson(value);
        case 'InlineObject30':
          return InlineObject30.fromJson(value);
        case 'InlineObject31':
          return InlineObject31.fromJson(value);
        case 'InlineObject32':
          return InlineObject32.fromJson(value);
        case 'InlineObject33':
          return InlineObject33.fromJson(value);
        case 'InlineObject34':
          return InlineObject34.fromJson(value);
        case 'InlineObject35':
          return InlineObject35.fromJson(value);
        case 'InlineObject36':
          return InlineObject36.fromJson(value);
        case 'InlineObject37':
          return InlineObject37.fromJson(value);
        case 'InlineObject38':
          return InlineObject38.fromJson(value);
        case 'InlineObject39':
          return InlineObject39.fromJson(value);
        case 'InlineObject4':
          return InlineObject4.fromJson(value);
        case 'InlineObject40':
          return InlineObject40.fromJson(value);
        case 'InlineObject41':
          return InlineObject41.fromJson(value);
        case 'InlineObject42':
          return InlineObject42.fromJson(value);
        case 'InlineObject43':
          return InlineObject43.fromJson(value);
        case 'InlineObject44':
          return InlineObject44.fromJson(value);
        case 'InlineObject45':
          return InlineObject45.fromJson(value);
        case 'InlineObject46':
          return InlineObject46.fromJson(value);
        case 'InlineObject47':
          return InlineObject47.fromJson(value);
        case 'InlineObject48':
          return InlineObject48.fromJson(value);
        case 'InlineObject49':
          return InlineObject49.fromJson(value);
        case 'InlineObject5':
          return InlineObject5.fromJson(value);
        case 'InlineObject50':
          return InlineObject50.fromJson(value);
        case 'InlineObject51':
          return InlineObject51.fromJson(value);
        case 'InlineObject52':
          return InlineObject52.fromJson(value);
        case 'InlineObject53':
          return InlineObject53.fromJson(value);
        case 'InlineObject54':
          return InlineObject54.fromJson(value);
        case 'InlineObject55':
          return InlineObject55.fromJson(value);
        case 'InlineObject56':
          return InlineObject56.fromJson(value);
        case 'InlineObject57':
          return InlineObject57.fromJson(value);
        case 'InlineObject58':
          return InlineObject58.fromJson(value);
        case 'InlineObject59':
          return InlineObject59.fromJson(value);
        case 'InlineObject6':
          return InlineObject6.fromJson(value);
        case 'InlineObject60':
          return InlineObject60.fromJson(value);
        case 'InlineObject61':
          return InlineObject61.fromJson(value);
        case 'InlineObject62':
          return InlineObject62.fromJson(value);
        case 'InlineObject63':
          return InlineObject63.fromJson(value);
        case 'InlineObject64':
          return InlineObject64.fromJson(value);
        case 'InlineObject65':
          return InlineObject65.fromJson(value);
        case 'InlineObject66':
          return InlineObject66.fromJson(value);
        case 'InlineObject67':
          return InlineObject67.fromJson(value);
        case 'InlineObject68':
          return InlineObject68.fromJson(value);
        case 'InlineObject69':
          return InlineObject69.fromJson(value);
        case 'InlineObject7':
          return InlineObject7.fromJson(value);
        case 'InlineObject70':
          return InlineObject70.fromJson(value);
        case 'InlineObject71':
          return InlineObject71.fromJson(value);
        case 'InlineObject72':
          return InlineObject72.fromJson(value);
        case 'InlineObject73':
          return InlineObject73.fromJson(value);
        case 'InlineObject74':
          return InlineObject74.fromJson(value);
        case 'InlineObject75':
          return InlineObject75.fromJson(value);
        case 'InlineObject76':
          return InlineObject76.fromJson(value);
        case 'InlineObject77':
          return InlineObject77.fromJson(value);
        case 'InlineObject78':
          return InlineObject78.fromJson(value);
        case 'InlineObject79':
          return InlineObject79.fromJson(value);
        case 'InlineObject8':
          return InlineObject8.fromJson(value);
        case 'InlineObject80':
          return InlineObject80.fromJson(value);
        case 'InlineObject81':
          return InlineObject81.fromJson(value);
        case 'InlineObject82':
          return InlineObject82.fromJson(value);
        case 'InlineObject83':
          return InlineObject83.fromJson(value);
        case 'InlineObject84':
          return InlineObject84.fromJson(value);
        case 'InlineObject85':
          return InlineObject85.fromJson(value);
        case 'InlineObject86':
          return InlineObject86.fromJson(value);
        case 'InlineObject87':
          return InlineObject87.fromJson(value);
        case 'InlineObject88':
          return InlineObject88.fromJson(value);
        case 'InlineObject89':
          return InlineObject89.fromJson(value);
        case 'InlineObject9':
          return InlineObject9.fromJson(value);
        case 'InlineObject90':
          return InlineObject90.fromJson(value);
        case 'InlineObject91':
          return InlineObject91.fromJson(value);
        case 'InlineObject92':
          return InlineObject92.fromJson(value);
        case 'InlineObject93':
          return InlineObject93.fromJson(value);
        case 'InlineObject94':
          return InlineObject94.fromJson(value);
        case 'InlineObject95':
          return InlineObject95.fromJson(value);
        case 'InlineObject96':
          return InlineObject96.fromJson(value);
        case 'InlineObject97':
          return InlineObject97.fromJson(value);
        case 'InlineObject98':
          return InlineObject98.fromJson(value);
        case 'InlineObject99':
          return InlineObject99.fromJson(value);
        case 'InlineResponse200':
          return InlineResponse200.fromJson(value);
        case 'InlineResponse2001':
          return InlineResponse2001.fromJson(value);
        case 'InlineResponse20010':
          return InlineResponse20010.fromJson(value);
        case 'InlineResponse20011':
          return InlineResponse20011.fromJson(value);
        case 'InlineResponse20012':
          return InlineResponse20012.fromJson(value);
        case 'InlineResponse20013':
          return InlineResponse20013.fromJson(value);
        case 'InlineResponse20014':
          return InlineResponse20014.fromJson(value);
        case 'InlineResponse20015':
          return InlineResponse20015.fromJson(value);
        case 'InlineResponse20016':
          return InlineResponse20016.fromJson(value);
        case 'InlineResponse20017':
          return InlineResponse20017.fromJson(value);
        case 'InlineResponse20018':
          return InlineResponse20018.fromJson(value);
        case 'InlineResponse20019':
          return InlineResponse20019.fromJson(value);
        case 'InlineResponse2002':
          return InlineResponse2002.fromJson(value);
        case 'InlineResponse20020':
          return InlineResponse20020.fromJson(value);
        case 'InlineResponse20021':
          return InlineResponse20021.fromJson(value);
        case 'InlineResponse20022':
          return InlineResponse20022.fromJson(value);
        case 'InlineResponse20023':
          return InlineResponse20023.fromJson(value);
        case 'InlineResponse20024':
          return InlineResponse20024.fromJson(value);
        case 'InlineResponse20025':
          return InlineResponse20025.fromJson(value);
        case 'InlineResponse20026':
          return InlineResponse20026.fromJson(value);
        case 'InlineResponse20027':
          return InlineResponse20027.fromJson(value);
        case 'InlineResponse2003':
          return InlineResponse2003.fromJson(value);
        case 'InlineResponse2004':
          return InlineResponse2004.fromJson(value);
        case 'InlineResponse2005':
          return InlineResponse2005.fromJson(value);
        case 'InlineResponse2006':
          return InlineResponse2006.fromJson(value);
        case 'InlineResponse2007':
          return InlineResponse2007.fromJson(value);
        case 'InlineResponse2008':
          return InlineResponse2008.fromJson(value);
        case 'InlineResponse2009':
          return InlineResponse2009.fromJson(value);
        case 'InlineResponse202':
          return InlineResponse202.fromJson(value);
        case 'InlineResponse2021':
          return InlineResponse2021.fromJson(value);
        case 'InlineResponse403':
          return InlineResponse403.fromJson(value);
        case 'InlineResponse4031':
          return InlineResponse4031.fromJson(value);
        case 'InlineResponse4032':
          return InlineResponse4032.fromJson(value);
        case 'InlineResponse4033':
          return InlineResponse4033.fromJson(value);
        case 'InlineResponse4033Errors':
          return InlineResponse4033Errors.fromJson(value);
        case 'InlineResponse403Block':
          return InlineResponse403Block.fromJson(value);
        case 'InlineResponse404':
          return InlineResponse404.fromJson(value);
        case 'InlineResponse409':
          return InlineResponse409.fromJson(value);
        case 'InlineResponse415':
          return InlineResponse415.fromJson(value);
        case 'InlineResponse422':
          return InlineResponse422.fromJson(value);
        case 'InlineResponse4221':
          return InlineResponse4221.fromJson(value);
        case 'InlineResponse4222':
          return InlineResponse4222.fromJson(value);
        case 'InlineResponse422Errors':
          return InlineResponse422Errors.fromJson(value);
        case 'InlineResponse503':
          return InlineResponse503.fromJson(value);
        case 'InlineResponse5031':
          return InlineResponse5031.fromJson(value);
        case 'InlineResponse5031Errors':
          return InlineResponse5031Errors.fromJson(value);
        case 'Installation':
          return Installation.fromJson(value);
        case 'InstallationPermissions':
          return InstallationPermissions.fromJson(value);
        case 'InstallationToken':
          return InstallationToken.fromJson(value);
        case 'InstallationTokenPermissions':
          return InstallationTokenPermissions.fromJson(value);
        case 'Integration':
          return Integration.fromJson(value);
        case 'InteractionExpiry':
          return InteractionExpiryTypeTransformer().decode(value);
        case 'InteractionGroup':
          return InteractionGroupTypeTransformer().decode(value);
        case 'InteractionLimit':
          return InteractionLimit.fromJson(value);
        case 'InteractionLimitResponse':
          return InteractionLimitResponse.fromJson(value);
        case 'Issue':
          return Issue.fromJson(value);
        case 'IssueComment':
          return IssueComment.fromJson(value);
        case 'IssueEvent':
          return IssueEvent.fromJson(value);
        case 'IssueEventDismissedReview':
          return IssueEventDismissedReview.fromJson(value);
        case 'IssueEventForIssue':
          return IssueEventForIssue.fromJson(value);
        case 'IssueEventLabel':
          return IssueEventLabel.fromJson(value);
        case 'IssueEventMilestone':
          return IssueEventMilestone.fromJson(value);
        case 'IssueEventProjectCard':
          return IssueEventProjectCard.fromJson(value);
        case 'IssueEventRename':
          return IssueEventRename.fromJson(value);
        case 'IssueSearchResultItem':
          return IssueSearchResultItem.fromJson(value);
        case 'IssueSearchResultItemLabels':
          return IssueSearchResultItemLabels.fromJson(value);
        case 'IssueSimple':
          return IssueSimple.fromJson(value);
        case 'IssueSimplePullRequest':
          return IssueSimplePullRequest.fromJson(value);
        case 'Job':
          return Job.fromJson(value);
        case 'JobSteps':
          return JobSteps.fromJson(value);
        case 'Key':
          return Key.fromJson(value);
        case 'KeySimple':
          return KeySimple.fromJson(value);
        case 'Label':
          return Label.fromJson(value);
        case 'LabelSearchResultItem':
          return LabelSearchResultItem.fromJson(value);
        case 'License':
          return License.fromJson(value);
        case 'LicenseContent':
          return LicenseContent.fromJson(value);
        case 'LicenseSimple':
          return LicenseSimple.fromJson(value);
        case 'Link':
          return Link.fromJson(value);
        case 'LinkWithType':
          return LinkWithType.fromJson(value);
        case 'MarketplaceAccount':
          return MarketplaceAccount.fromJson(value);
        case 'MarketplaceListingPlan':
          return MarketplaceListingPlan.fromJson(value);
        case 'MarketplacePurchase':
          return MarketplacePurchase.fromJson(value);
        case 'MarketplacePurchaseMarketplacePendingChange':
          return MarketplacePurchaseMarketplacePendingChange.fromJson(value);
        case 'MarketplacePurchaseMarketplacePurchase':
          return MarketplacePurchaseMarketplacePurchase.fromJson(value);
        case 'Migration':
          return Migration.fromJson(value);
        case 'Milestone':
          return Milestone.fromJson(value);
        case 'MinimalRepository':
          return MinimalRepository.fromJson(value);
        case 'MinimalRepositoryLicense':
          return MinimalRepositoryLicense.fromJson(value);
        case 'ModelImport':
          return ModelImport.fromJson(value);
        case 'OrgHook':
          return OrgHook.fromJson(value);
        case 'OrgHookConfig':
          return OrgHookConfig.fromJson(value);
        case 'OrgMembership':
          return OrgMembership.fromJson(value);
        case 'OrgMembershipPermissions':
          return OrgMembershipPermissions.fromJson(value);
        case 'OrganizationActionsSecret':
          return OrganizationActionsSecret.fromJson(value);
        case 'OrganizationFull':
          return OrganizationFull.fromJson(value);
        case 'OrganizationFullPlan':
          return OrganizationFullPlan.fromJson(value);
        case 'OrganizationInvitation':
          return OrganizationInvitation.fromJson(value);
        case 'OrganizationSimple':
          return OrganizationSimple.fromJson(value);
        case 'OrgsOrgHooksConfig':
          return OrgsOrgHooksConfig.fromJson(value);
        case 'OrgsOrgHooksHookIdConfig':
          return OrgsOrgHooksHookIdConfig.fromJson(value);
        case 'OrgsOrgTeamsTeamSlugTeamSyncGroupMappingsGroups':
          return OrgsOrgTeamsTeamSlugTeamSyncGroupMappingsGroups.fromJson(value);
        case 'Package':
          return Package.fromJson(value);
        case 'PackageVersion':
          return PackageVersion.fromJson(value);
        case 'PackageVersionMetadata':
          return PackageVersionMetadata.fromJson(value);
        case 'PackagesBillingUsage':
          return PackagesBillingUsage.fromJson(value);
        case 'Page':
          return Page.fromJson(value);
        case 'PageBuild':
          return PageBuild.fromJson(value);
        case 'PageBuildError':
          return PageBuildError.fromJson(value);
        case 'PageBuildStatus':
          return PageBuildStatus.fromJson(value);
        case 'PagesSourceHash':
          return PagesSourceHash.fromJson(value);
        case 'ParticipationStats':
          return ParticipationStats.fromJson(value);
        case 'PendingDeployment':
          return PendingDeployment.fromJson(value);
        case 'PendingDeploymentEnvironment':
          return PendingDeploymentEnvironment.fromJson(value);
        case 'PendingDeploymentReviewers':
          return PendingDeploymentReviewers.fromJson(value);
        case 'PorterAuthor':
          return PorterAuthor.fromJson(value);
        case 'PorterLargeFile':
          return PorterLargeFile.fromJson(value);
        case 'PrivateUser':
          return PrivateUser.fromJson(value);
        case 'PrivateUserPlan':
          return PrivateUserPlan.fromJson(value);
        case 'Project':
          return Project.fromJson(value);
        case 'ProjectCard':
          return ProjectCard.fromJson(value);
        case 'ProjectColumn':
          return ProjectColumn.fromJson(value);
        case 'ProtectedBranch':
          return ProtectedBranch.fromJson(value);
        case 'ProtectedBranchAdminEnforced':
          return ProtectedBranchAdminEnforced.fromJson(value);
        case 'ProtectedBranchEnforceAdmins':
          return ProtectedBranchEnforceAdmins.fromJson(value);
        case 'ProtectedBranchPullRequestReview':
          return ProtectedBranchPullRequestReview.fromJson(value);
        case 'ProtectedBranchPullRequestReviewDismissalRestrictions':
          return ProtectedBranchPullRequestReviewDismissalRestrictions.fromJson(value);
        case 'ProtectedBranchRequiredLinearHistory':
          return ProtectedBranchRequiredLinearHistory.fromJson(value);
        case 'ProtectedBranchRequiredPullRequestReviews':
          return ProtectedBranchRequiredPullRequestReviews.fromJson(value);
        case 'ProtectedBranchRequiredPullRequestReviewsDismissalRestrictions':
          return ProtectedBranchRequiredPullRequestReviewsDismissalRestrictions.fromJson(value);
        case 'ProtectedBranchRequiredSignatures':
          return ProtectedBranchRequiredSignatures.fromJson(value);
        case 'PublicUser':
          return PublicUser.fromJson(value);
        case 'PullRequest':
          return PullRequest.fromJson(value);
        case 'PullRequestBase':
          return PullRequestBase.fromJson(value);
        case 'PullRequestBaseRepo':
          return PullRequestBaseRepo.fromJson(value);
        case 'PullRequestHead':
          return PullRequestHead.fromJson(value);
        case 'PullRequestHeadRepo':
          return PullRequestHeadRepo.fromJson(value);
        case 'PullRequestHeadRepoLicense':
          return PullRequestHeadRepoLicense.fromJson(value);
        case 'PullRequestHeadRepoOwner':
          return PullRequestHeadRepoOwner.fromJson(value);
        case 'PullRequestLabels':
          return PullRequestLabels.fromJson(value);
        case 'PullRequestMergeResult':
          return PullRequestMergeResult.fromJson(value);
        case 'PullRequestMinimal':
          return PullRequestMinimal.fromJson(value);
        case 'PullRequestMinimalHead':
          return PullRequestMinimalHead.fromJson(value);
        case 'PullRequestMinimalHeadRepo':
          return PullRequestMinimalHeadRepo.fromJson(value);
        case 'PullRequestReview':
          return PullRequestReview.fromJson(value);
        case 'PullRequestReviewComment':
          return PullRequestReviewComment.fromJson(value);
        case 'PullRequestReviewCommentLinks':
          return PullRequestReviewCommentLinks.fromJson(value);
        case 'PullRequestReviewCommentLinksHtml':
          return PullRequestReviewCommentLinksHtml.fromJson(value);
        case 'PullRequestReviewCommentLinksPullRequest':
          return PullRequestReviewCommentLinksPullRequest.fromJson(value);
        case 'PullRequestReviewCommentLinksSelf':
          return PullRequestReviewCommentLinksSelf.fromJson(value);
        case 'PullRequestReviewLinks':
          return PullRequestReviewLinks.fromJson(value);
        case 'PullRequestReviewLinksHtml':
          return PullRequestReviewLinksHtml.fromJson(value);
        case 'PullRequestReviewRequest':
          return PullRequestReviewRequest.fromJson(value);
        case 'PullRequestSimple':
          return PullRequestSimple.fromJson(value);
        case 'PullRequestSimpleHead':
          return PullRequestSimpleHead.fromJson(value);
        case 'PullRequestSimpleLabels':
          return PullRequestSimpleLabels.fromJson(value);
        case 'PullRequestSimpleLinks':
          return PullRequestSimpleLinks.fromJson(value);
        case 'RateLimit':
          return RateLimit.fromJson(value);
        case 'RateLimitOverview':
          return RateLimitOverview.fromJson(value);
        case 'RateLimitOverviewResources':
          return RateLimitOverviewResources.fromJson(value);
        case 'Reaction':
          return Reaction.fromJson(value);
        case 'ReactionRollup':
          return ReactionRollup.fromJson(value);
        case 'ReferrerTraffic':
          return ReferrerTraffic.fromJson(value);
        case 'Release':
          return Release.fromJson(value);
        case 'ReleaseAsset':
          return ReleaseAsset.fromJson(value);
        case 'RepoSearchResultItem':
          return RepoSearchResultItem.fromJson(value);
        case 'ReposOwnerRepoBranchesBranchProtectionRequiredPullRequestReviews':
          return ReposOwnerRepoBranchesBranchProtectionRequiredPullRequestReviews.fromJson(value);
        case 'ReposOwnerRepoBranchesBranchProtectionRequiredPullRequestReviewsDismissalRestrictions':
          return ReposOwnerRepoBranchesBranchProtectionRequiredPullRequestReviewsDismissalRestrictions.fromJson(value);
        case 'ReposOwnerRepoBranchesBranchProtectionRequiredStatusChecks':
          return ReposOwnerRepoBranchesBranchProtectionRequiredStatusChecks.fromJson(value);
        case 'ReposOwnerRepoBranchesBranchProtectionRestrictions':
          return ReposOwnerRepoBranchesBranchProtectionRestrictions.fromJson(value);
        case 'ReposOwnerRepoCheckSuitesPreferencesAutoTriggerChecks':
          return ReposOwnerRepoCheckSuitesPreferencesAutoTriggerChecks.fromJson(value);
        case 'ReposOwnerRepoContentsPathAuthor':
          return ReposOwnerRepoContentsPathAuthor.fromJson(value);
        case 'ReposOwnerRepoContentsPathAuthor1':
          return ReposOwnerRepoContentsPathAuthor1.fromJson(value);
        case 'ReposOwnerRepoContentsPathCommitter':
          return ReposOwnerRepoContentsPathCommitter.fromJson(value);
        case 'ReposOwnerRepoContentsPathCommitter1':
          return ReposOwnerRepoContentsPathCommitter1.fromJson(value);
        case 'ReposOwnerRepoEnvironmentsEnvironmentNameReviewers':
          return ReposOwnerRepoEnvironmentsEnvironmentNameReviewers.fromJson(value);
        case 'ReposOwnerRepoGitCommitsAuthor':
          return ReposOwnerRepoGitCommitsAuthor.fromJson(value);
        case 'ReposOwnerRepoGitCommitsCommitter':
          return ReposOwnerRepoGitCommitsCommitter.fromJson(value);
        case 'ReposOwnerRepoGitTagsTagger':
          return ReposOwnerRepoGitTagsTagger.fromJson(value);
        case 'ReposOwnerRepoGitTreesTree':
          return ReposOwnerRepoGitTreesTree.fromJson(value);
        case 'ReposOwnerRepoHooksConfig':
          return ReposOwnerRepoHooksConfig.fromJson(value);
        case 'ReposOwnerRepoHooksHookIdConfig':
          return ReposOwnerRepoHooksHookIdConfig.fromJson(value);
        case 'ReposOwnerRepoPagesSource':
          return ReposOwnerRepoPagesSource.fromJson(value);
        case 'ReposOwnerRepoPullsPullNumberReviewsComments':
          return ReposOwnerRepoPullsPullNumberReviewsComments.fromJson(value);
        case 'Repository':
          return Repository.fromJson(value);
        case 'RepositoryCollaboratorPermission':
          return RepositoryCollaboratorPermission.fromJson(value);
        case 'RepositoryInvitation':
          return RepositoryInvitation.fromJson(value);
        case 'RepositoryPermissions':
          return RepositoryPermissions.fromJson(value);
        case 'RepositorySubscription':
          return RepositorySubscription.fromJson(value);
        case 'RepositoryTemplateRepository':
          return RepositoryTemplateRepository.fromJson(value);
        case 'RepositoryTemplateRepositoryOwner':
          return RepositoryTemplateRepositoryOwner.fromJson(value);
        case 'RepositoryTemplateRepositoryPermissions':
          return RepositoryTemplateRepositoryPermissions.fromJson(value);
        case 'ReviewComment':
          return ReviewComment.fromJson(value);
        case 'ReviewCommentLinks':
          return ReviewCommentLinks.fromJson(value);
        case 'Runner':
          return Runner.fromJson(value);
        case 'RunnerApplication':
          return RunnerApplication.fromJson(value);
        case 'RunnerGroupsEnterprise':
          return RunnerGroupsEnterprise.fromJson(value);
        case 'RunnerGroupsOrg':
          return RunnerGroupsOrg.fromJson(value);
        case 'RunnerLabels':
          return RunnerLabels.fromJson(value);
        case 'ScimEnterpriseGroup':
          return ScimEnterpriseGroup.fromJson(value);
        case 'ScimEnterpriseUser':
          return ScimEnterpriseUser.fromJson(value);
        case 'ScimEnterpriseUserEmails':
          return ScimEnterpriseUserEmails.fromJson(value);
        case 'ScimError':
          return ScimError.fromJson(value);
        case 'ScimGroupListEnterprise':
          return ScimGroupListEnterprise.fromJson(value);
        case 'ScimGroupListEnterpriseMembers':
          return ScimGroupListEnterpriseMembers.fromJson(value);
        case 'ScimGroupListEnterpriseMeta':
          return ScimGroupListEnterpriseMeta.fromJson(value);
        case 'ScimGroupListEnterpriseResources':
          return ScimGroupListEnterpriseResources.fromJson(value);
        case 'ScimUser':
          return ScimUser.fromJson(value);
        case 'ScimUserEmails':
          return ScimUserEmails.fromJson(value);
        case 'ScimUserList':
          return ScimUserList.fromJson(value);
        case 'ScimUserListEnterprise':
          return ScimUserListEnterprise.fromJson(value);
        case 'ScimUserListEnterpriseEmails':
          return ScimUserListEnterpriseEmails.fromJson(value);
        case 'ScimUserListEnterpriseName':
          return ScimUserListEnterpriseName.fromJson(value);
        case 'ScimUserListEnterpriseResources':
          return ScimUserListEnterpriseResources.fromJson(value);
        case 'ScimUserMeta':
          return ScimUserMeta.fromJson(value);
        case 'ScimUserName':
          return ScimUserName.fromJson(value);
        case 'ScimUserOperations':
          return ScimUserOperations.fromJson(value);
        case 'ScimV2EnterprisesEnterpriseGroupsMembers':
          return ScimV2EnterprisesEnterpriseGroupsMembers.fromJson(value);
        case 'ScimV2EnterprisesEnterpriseUsersEmails':
          return ScimV2EnterprisesEnterpriseUsersEmails.fromJson(value);
        case 'ScimV2EnterprisesEnterpriseUsersGroups':
          return ScimV2EnterprisesEnterpriseUsersGroups.fromJson(value);
        case 'ScimV2EnterprisesEnterpriseUsersName':
          return ScimV2EnterprisesEnterpriseUsersName.fromJson(value);
        case 'ScimV2OrganizationsOrgUsersEmails':
          return ScimV2OrganizationsOrgUsersEmails.fromJson(value);
        case 'ScimV2OrganizationsOrgUsersName':
          return ScimV2OrganizationsOrgUsersName.fromJson(value);
        case 'ScimV2OrganizationsOrgUsersScimUserIdEmails':
          return ScimV2OrganizationsOrgUsersScimUserIdEmails.fromJson(value);
        case 'ScimV2OrganizationsOrgUsersScimUserIdOperations':
          return ScimV2OrganizationsOrgUsersScimUserIdOperations.fromJson(value);
        case 'ScopedInstallation':
          return ScopedInstallation.fromJson(value);
        case 'SecretScanningAlert':
          return SecretScanningAlert.fromJson(value);
        case 'SecretScanningAlertResolution':
          return SecretScanningAlertResolution.fromJson(value);
        case 'SecretScanningAlertResolutionOneOf':
          return SecretScanningAlertResolutionOneOfTypeTransformer().decode(value);
        case 'SecretScanningAlertState':
          return SecretScanningAlertStateTypeTransformer().decode(value);
        case 'SelectedActions':
          return SelectedActions.fromJson(value);
        case 'ShortBlob':
          return ShortBlob.fromJson(value);
        case 'ShortBranch':
          return ShortBranch.fromJson(value);
        case 'ShortBranchCommit':
          return ShortBranchCommit.fromJson(value);
        case 'SimpleCommit':
          return SimpleCommit.fromJson(value);
        case 'SimpleCommitAuthor':
          return SimpleCommitAuthor.fromJson(value);
        case 'SimpleCommitStatus':
          return SimpleCommitStatus.fromJson(value);
        case 'SimpleUser':
          return SimpleUser.fromJson(value);
        case 'Stargazer':
          return Stargazer.fromJson(value);
        case 'StarredRepository':
          return StarredRepository.fromJson(value);
        case 'Status':
          return Status.fromJson(value);
        case 'StatusCheckPolicy':
          return StatusCheckPolicy.fromJson(value);
        case 'Tag':
          return Tag.fromJson(value);
        case 'Team':
          return Team.fromJson(value);
        case 'TeamDiscussion':
          return TeamDiscussion.fromJson(value);
        case 'TeamDiscussionComment':
          return TeamDiscussionComment.fromJson(value);
        case 'TeamFull':
          return TeamFull.fromJson(value);
        case 'TeamMembership':
          return TeamMembership.fromJson(value);
        case 'TeamProject':
          return TeamProject.fromJson(value);
        case 'TeamProjectPermissions':
          return TeamProjectPermissions.fromJson(value);
        case 'TeamRepository':
          return TeamRepository.fromJson(value);
        case 'TeamSimple':
          return TeamSimple.fromJson(value);
        case 'TeamsTeamIdTeamSyncGroupMappingsGroups':
          return TeamsTeamIdTeamSyncGroupMappingsGroups.fromJson(value);
        case 'Thread':
          return Thread.fromJson(value);
        case 'ThreadSubject':
          return ThreadSubject.fromJson(value);
        case 'ThreadSubscription':
          return ThreadSubscription.fromJson(value);
        case 'Topic':
          return Topic.fromJson(value);
        case 'TopicSearchResultItem':
          return TopicSearchResultItem.fromJson(value);
        case 'TopicSearchResultItemRelated':
          return TopicSearchResultItemRelated.fromJson(value);
        case 'TopicSearchResultItemTopicRelation':
          return TopicSearchResultItemTopicRelation.fromJson(value);
        case 'Traffic':
          return Traffic.fromJson(value);
        case 'UserMarketplacePurchase':
          return UserMarketplacePurchase.fromJson(value);
        case 'UserSearchResultItem':
          return UserSearchResultItem.fromJson(value);
        case 'ValidationError':
          return ValidationError.fromJson(value);
        case 'ValidationErrorErrors':
          return ValidationErrorErrors.fromJson(value);
        case 'ValidationErrorSimple':
          return ValidationErrorSimple.fromJson(value);
        case 'Verification':
          return Verification.fromJson(value);
        case 'ViewTraffic':
          return ViewTraffic.fromJson(value);
        case 'WebhookConfig':
          return WebhookConfig.fromJson(value);
        case 'Workflow':
          return Workflow.fromJson(value);
        case 'WorkflowRun':
          return WorkflowRun.fromJson(value);
        case 'WorkflowRunUsage':
          return WorkflowRunUsage.fromJson(value);
        case 'WorkflowRunUsageBillable':
          return WorkflowRunUsageBillable.fromJson(value);
        case 'WorkflowRunUsageBillableUBUNTU':
          return WorkflowRunUsageBillableUBUNTU.fromJson(value);
        case 'WorkflowUsage':
          return WorkflowUsage.fromJson(value);
        case 'WorkflowUsageBillable':
          return WorkflowUsageBillable.fromJson(value);
        case 'WorkflowUsageBillableUBUNTU':
          return WorkflowUsageBillableUBUNTU.fromJson(value);
        default:
          Match match;
          if (value is List && (match = _regList.firstMatch(targetType)) != null) {
            final newTargetType = match[1];
            return value
              .map((v) => _deserialize(v, newTargetType, growable: growable))
              .toList(growable: true == growable);
          }
          if (value is Set && (match = _regSet.firstMatch(targetType)) != null) {
            final newTargetType = match[1];
            return value
              .map((v) => _deserialize(v, newTargetType, growable: growable))
              .toSet();
          }
          if (value is Map && (match = _regMap.firstMatch(targetType)) != null) {
            final newTargetType = match[1];
            return Map.fromIterables(
              value.keys,
              value.values.map((v) => _deserialize(v, newTargetType, growable: growable)),
            );
          }
          break;
      }
    } on Exception catch (e, stack) {
      throw ApiException.withInner(HttpStatus.internalServerError, 'Exception during deserialization.', e, stack,);
    }
    throw ApiException(HttpStatus.internalServerError, 'Could not find a suitable class for deserialization',);
  }

  /// Update query and header parameters based on authentication settings.
  /// @param authNames The authentications to apply
  void _updateParamsForAuth(
    List<String> authNames,
    List<QueryParam> queryParams,
    Map<String, String> headerParams,
  ) {
    authNames.forEach((authName) {
      final auth = _authentications[authName];
      if (auth == null) {
        throw ArgumentError('Authentication undefined: $authName');
      }
      auth.applyToParams(queryParams, headerParams);
    });
  }
}
