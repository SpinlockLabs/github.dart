/// Representation of an OpenAPI operation normalized for REST contract verification.
class RestOperation {
  final String operationId;
  final String summary;
  final String description;
  final String method;
  final String path;
  final List<String> tags;
  final List<String> pathParams;
  final List<String> queryParams;
  final List<String> headerParams;
  final bool hasRequestBody;
  final List<String> requestMediaTypes;
  final List<int> successStatuses;
  final List<int> errorStatuses;
  final bool deprecated;
  final bool isMultiSegmentPath;

  const RestOperation({
    required this.operationId,
    required this.method,
    required this.path,
    this.summary = '',
    this.description = '',
    this.tags = const [],
    this.pathParams = const [],
    this.queryParams = const [],
    this.headerParams = const [],
    this.hasRequestBody = false,
    this.requestMediaTypes = const [],
    this.successStatuses = const [200],
    this.errorStatuses = const [],
    this.deprecated = false,
    this.isMultiSegmentPath = false,
  });

  Map<String, dynamic> toJson() => {
        'operationId': operationId,
        'summary': summary,
        'description': description,
        'method': method,
        'path': path,
        'tags': tags,
        'pathParams': pathParams,
        'queryParams': queryParams,
        'headerParams': headerParams,
        'hasRequestBody': hasRequestBody,
        'requestMediaTypes': requestMediaTypes,
        'successStatuses': successStatuses,
        'errorStatuses': errorStatuses,
        'deprecated': deprecated,
        'isMultiSegmentPath': isMultiSegmentPath,
      };

  factory RestOperation.fromJson(Map<String, dynamic> json) => RestOperation(
        operationId: json['operationId'] as String,
        method: json['method'] as String,
        path: json['path'] as String,
        summary: json['summary'] as String? ?? '',
        description: json['description'] as String? ?? '',
        tags: (json['tags'] as List?)?.cast<String>() ?? const [],
        pathParams: (json['pathParams'] as List?)?.cast<String>() ?? const [],
        queryParams: (json['queryParams'] as List?)?.cast<String>() ?? const [],
        headerParams:
            (json['headerParams'] as List?)?.cast<String>() ?? const [],
        hasRequestBody: json['hasRequestBody'] as bool? ?? false,
        requestMediaTypes:
            (json['requestMediaTypes'] as List?)?.cast<String>() ?? const [],
        successStatuses:
            (json['successStatuses'] as List?)?.cast<int>() ?? const [200],
        errorStatuses:
            (json['errorStatuses'] as List?)?.cast<int>() ?? const [],
        deprecated: json['deprecated'] as bool? ?? false,
        isMultiSegmentPath: json['isMultiSegmentPath'] as bool? ?? false,
      );
}
