import 'package:github/src/common/util/utils.dart';
import 'package:meta/meta.dart';

class CheckRunAnnotationLevel extends EnumWithValue {
  static const notice = CheckRunAnnotationLevel._('notice');
  static const warning = CheckRunAnnotationLevel._('warning');
  static const failure = CheckRunAnnotationLevel._('failure');

  const CheckRunAnnotationLevel._(String value) : super(value);

  factory CheckRunAnnotationLevel._fromValue(String value) {
    switch (value) {
      case 'notice':
        return notice;
      case 'warning':
        return warning;
      case 'failure':
        return failure;
      default:
        throw Exception(
            'This level of check run annotation is unimplemented: $value.');
    }
  }

  bool operator <(CheckRunAnnotationLevel other) {
    if (this == failure) {
      return false;
    }
    if (this == notice) {
      return other != notice;
    }
    return other == failure;
  }

  bool operator <=(CheckRunAnnotationLevel other) =>
      this == other || this < other;
  bool operator >(CheckRunAnnotationLevel other) => !(this <= other);
  bool operator >=(CheckRunAnnotationLevel other) => !(this < other);
}

class CheckRunConclusion extends EnumWithValue {
  static const success = CheckRunConclusion._('success');
  static const failure = CheckRunConclusion._('failure');
  static const neutral = CheckRunConclusion._('neutral');
  static const cancelled = CheckRunConclusion._('cancelled');
  static const timedOut = CheckRunConclusion._('timed_out');
  static const actionRequired = CheckRunConclusion._('action_required');

  const CheckRunConclusion._(String value) : super(value);

  factory CheckRunConclusion._fromValue(String value) {
    for (final level in const [
      success,
      failure,
      neutral,
      cancelled,
      timedOut,
      actionRequired
    ]) {
      if (level.value == value) {
        return level;
      }
    }
    throw Exception(
        'This level of check run conclusion is unimplemented: $value.');
  }
}

class CheckRunStatus extends EnumWithValue {
  static const queued = CheckRunStatus._('queued');
  static const inProgress = CheckRunStatus._('in_progress');
  static const completed = CheckRunStatus._('completed');
  const CheckRunStatus._(String value) : super(value);
}

class CheckRunFilter extends EnumWithValue {
  static const all = CheckRunFilter._('all');
  static const latest = CheckRunFilter._('latest');
  const CheckRunFilter._(String value) : super(value);
}

@immutable
class CheckRun {
  final String name;
  final int id;
  final String externalId;
  final String headSha;
  final CheckRunStatus status;
  final int checkSuiteId;
  final String detailsUrl;
  final DateTime startedAt;

  const CheckRun._({
    @required this.id,
    @required this.externalId,
    @required this.headSha,
    @required this.status,
    @required this.checkSuiteId,
    @required this.name,
    @required this.detailsUrl,
    @required this.startedAt,
  });

  factory CheckRun.fromJson(Map<String, dynamic> input) {
    CheckRunStatus status;
    for (final s in const [
      CheckRunStatus.completed,
      CheckRunStatus.inProgress,
      CheckRunStatus.queued
    ]) {
      if (s.toString() == input['status']) {
        status = s;
        break;
      }
    }
    return CheckRun._(
      name: input['name'],
      id: input['id'],
      externalId: input['external_id'],
      status: status,
      headSha: input['head_sha'],
      checkSuiteId: input['check_suite']['id'],
      detailsUrl: input['details_url'],
      startedAt: DateTime.parse(input['started_at']),
    );
  }
}

@immutable
class CheckRunOutput {
  /// The title of the check run.
  final String title;

  /// The summary of the check run. This parameter supports Markdown.
  final String summary;

  /// The details of the check run. This parameter supports Markdown.
  final String text;

  /// Adds information from your analysis to specific lines of code.
  /// Annotations are visible on GitHub in the Checks and Files changed tab of the pull request.
  /// The Checks API limits the number of annotations to a maximum of 50 per API request.
  /// To create more than 50 annotations, you have to make multiple requests to the Update a check run endpoint.
  /// Each time you update the check run, annotations are appended to the list of annotations that already exist for the check run.
  final List<CheckRunAnnotation> annotations;

  /// Adds images to the output displayed in the GitHub pull request UI.
  final List<CheckRunImage> images;

  const CheckRunOutput({
    @required this.title,
    @required this.summary,
    this.text,
    this.annotations,
    this.images,
  })  : assert(title != null),
        assert(summary != null);

  Map<String, dynamic> toJson() {
    return createNonNullMap(<String, dynamic>{
      'title': title,
      'summary': summary,
      'text': text,
      'annotations': annotations?.map((a) => a.toJson())?.toList(),
      'images': images?.map((i) => i.toJson())?.toList(),
    });
  }
}

@immutable
class CheckRunAnnotation {
  /// The path of the file to add an annotation to. For example, assets/css/main.css.
  final String path;

  /// The start line of the annotation.
  final int startLine;

  /// The end line of the annotation.
  final int endLine;

  /// The start column of the annotation.
  /// Annotations only support start_column and end_column on the same line.
  /// Omit this parameter if start_line and end_line have different values.
  final int startColumn;

  /// The end column of the annotation.
  /// Annotations only support start_column and end_column on the same line.
  /// Omit this parameter if start_line and end_line have different values.
  final int endColumn;

  /// The level of the annotation.
  /// Can be one of notice, warning, or failure.
  final CheckRunAnnotationLevel annotationLevel;

  /// A short description of the feedback for these lines of code.
  /// The maximum size is 64 KB.
  final String message;

  /// The title that represents the annotation.
  /// The maximum size is 255 characters.
  final String title;

  /// Details about this annotation.
  /// The maximum size is 64 KB.
  final String rawDetails;

  const CheckRunAnnotation({
    @required this.annotationLevel,
    @required this.endLine,
    @required this.message,
    @required this.path,
    @required this.startLine,
    this.startColumn,
    this.endColumn,
    this.title,
    this.rawDetails,
  })  : assert(path != null),
        assert(startLine != null),
        assert(endLine != null),
        assert(annotationLevel != null),
        assert(message != null),
        assert(startColumn == null || startLine == endLine,
            'Annotations only support start_column and end_column on the same line.'),
        assert(endColumn == null || startLine == endLine,
            'Annotations only support start_column and end_column on the same line.'),
        assert(title.length <= 255);

  @override
  bool operator ==(dynamic other) {
    if (other is CheckRunAnnotation) {
      return other.annotationLevel == annotationLevel &&
          other.path == path &&
          other.startColumn == startColumn &&
          other.endColumn == endColumn &&
          other.startLine == startLine &&
          other.endLine == endLine &&
          other.title == title &&
          other.message == message &&
          other.rawDetails == rawDetails;
    }
    return false;
  }

  @override
  int get hashCode => path.hashCode;

  factory CheckRunAnnotation.fromJSON(Map<String, dynamic> input) {
    if (input == null) {
      return null;
    }
    return CheckRunAnnotation(
      path: input['path'],
      startLine: input['start_line'],
      endLine: input['end_line'],
      startColumn: input['start_column'],
      endColumn: input['end_column'],
      annotationLevel:
          CheckRunAnnotationLevel._fromValue(input['annotation_level']),
      title: input['title'],
      message: input['message'],
      rawDetails: input['raw_details'],
    );
  }

  Map<String, dynamic> toJson() {
    return createNonNullMap(<String, dynamic>{
      'path': path,
      'start_line': startLine,
      'end_line': endLine,
      'start_column': startColumn,
      'end_column': endColumn,
      'annotation_level': annotationLevel.toString(),
      'message': message,
      'title': title,
      'rax_details': rawDetails,
    });
  }
}

@immutable
class CheckRunImage {
  /// The alternative text for the image.
  final String alternativeText;

  /// The full URL of the image.
  final String imageUrl;

  /// A short image description.
  final String caption;

  const CheckRunImage({
    @required this.alternativeText,
    @required this.imageUrl,
    this.caption,
  })  : assert(alternativeText != null),
        assert(imageUrl != null);

  Map<String, dynamic> toJson() {
    return createNonNullMap(<String, dynamic>{
      'alt': alternativeText,
      'image_url': imageUrl,
      'caption': caption,
    });
  }
}

@immutable
class CheckRunAction {
  /// The text to be displayed on a button in the web UI.
  /// The maximum size is 20 characters.
  final String label;

  /// A short explanation of what this action would do.
  /// The maximum size is 40 characters.
  final String description;

  /// A reference for the action on the integrator's system.
  /// The maximum size is 20 characters.
  final String identifier;

  const CheckRunAction({
    @required this.label,
    @required this.description,
    @required this.identifier,
  })  : assert(label != null),
        assert(description != null),
        assert(identifier != null),
        assert(label.length <= 20),
        assert(description.length <= 40),
        assert(identifier.length <= 20);

  Map<String, dynamic> toJson() {
    return createNonNullMap(<String, dynamic>{
      'label': label,
      'description': description,
      'identifier': identifier,
    });
  }
}

@immutable
class CheckSuite {
  final int id;
  final String headSha;
  final CheckRunConclusion conclusion;

  const CheckSuite({
    @required this.conclusion,
    @required this.headSha,
    @required this.id,
  });

  factory CheckSuite.fromJson(Map<String, dynamic> input) {
    if (input == null) {
      return null;
    }
    return CheckSuite(
      conclusion: CheckRunConclusion._fromValue(input['conclusion']),
      headSha: input['head_sha'],
      id: input['id'],
    );
  }
}

@immutable
class AutoTriggerChecks {
  /// The id of the GitHub App.
  final int appId;

  /// Set to true to enable automatic creation of CheckSuite events upon pushes to the repository, or false to disable them.
  final bool setting;

  const AutoTriggerChecks({
    @required this.appId,
    this.setting = true,
  }) : assert(appId != null);

  factory AutoTriggerChecks.fromJson(Map<String, dynamic> input) {
    if (input == null) {
      return null;
    }
    return AutoTriggerChecks(
      appId: input['app_id'],
      setting: input['setting'],
    );
  }

  Map<String, dynamic> toJson() => {'app_id': appId, 'setting': setting};
}
