// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'model_import.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ModelImportStatusEnum _$modelImportStatusEnum_auth =
    const ModelImportStatusEnum._('auth');
const ModelImportStatusEnum _$modelImportStatusEnum_error =
    const ModelImportStatusEnum._('error');
const ModelImportStatusEnum _$modelImportStatusEnum_none =
    const ModelImportStatusEnum._('none');
const ModelImportStatusEnum _$modelImportStatusEnum_detecting =
    const ModelImportStatusEnum._('detecting');
const ModelImportStatusEnum _$modelImportStatusEnum_choose =
    const ModelImportStatusEnum._('choose');
const ModelImportStatusEnum _$modelImportStatusEnum_authFailed =
    const ModelImportStatusEnum._('authFailed');
const ModelImportStatusEnum _$modelImportStatusEnum_importing =
    const ModelImportStatusEnum._('importing');
const ModelImportStatusEnum _$modelImportStatusEnum_mapping =
    const ModelImportStatusEnum._('mapping');
const ModelImportStatusEnum _$modelImportStatusEnum_waitingToPush =
    const ModelImportStatusEnum._('waitingToPush');
const ModelImportStatusEnum _$modelImportStatusEnum_pushing =
    const ModelImportStatusEnum._('pushing');
const ModelImportStatusEnum _$modelImportStatusEnum_complete =
    const ModelImportStatusEnum._('complete');
const ModelImportStatusEnum _$modelImportStatusEnum_setup =
    const ModelImportStatusEnum._('setup');
const ModelImportStatusEnum _$modelImportStatusEnum_unknown =
    const ModelImportStatusEnum._('unknown');
const ModelImportStatusEnum _$modelImportStatusEnum_detectionFoundMultiple =
    const ModelImportStatusEnum._('detectionFoundMultiple');
const ModelImportStatusEnum _$modelImportStatusEnum_detectionFoundNothing =
    const ModelImportStatusEnum._('detectionFoundNothing');
const ModelImportStatusEnum _$modelImportStatusEnum_detectionNeedsAuth =
    const ModelImportStatusEnum._('detectionNeedsAuth');

ModelImportStatusEnum _$modelImportStatusEnumValueOf(String name) {
  switch (name) {
    case 'auth':
      return _$modelImportStatusEnum_auth;
    case 'error':
      return _$modelImportStatusEnum_error;
    case 'none':
      return _$modelImportStatusEnum_none;
    case 'detecting':
      return _$modelImportStatusEnum_detecting;
    case 'choose':
      return _$modelImportStatusEnum_choose;
    case 'authFailed':
      return _$modelImportStatusEnum_authFailed;
    case 'importing':
      return _$modelImportStatusEnum_importing;
    case 'mapping':
      return _$modelImportStatusEnum_mapping;
    case 'waitingToPush':
      return _$modelImportStatusEnum_waitingToPush;
    case 'pushing':
      return _$modelImportStatusEnum_pushing;
    case 'complete':
      return _$modelImportStatusEnum_complete;
    case 'setup':
      return _$modelImportStatusEnum_setup;
    case 'unknown':
      return _$modelImportStatusEnum_unknown;
    case 'detectionFoundMultiple':
      return _$modelImportStatusEnum_detectionFoundMultiple;
    case 'detectionFoundNothing':
      return _$modelImportStatusEnum_detectionFoundNothing;
    case 'detectionNeedsAuth':
      return _$modelImportStatusEnum_detectionNeedsAuth;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<ModelImportStatusEnum> _$modelImportStatusEnumValues =
    new BuiltSet<ModelImportStatusEnum>(const <ModelImportStatusEnum>[
  _$modelImportStatusEnum_auth,
  _$modelImportStatusEnum_error,
  _$modelImportStatusEnum_none,
  _$modelImportStatusEnum_detecting,
  _$modelImportStatusEnum_choose,
  _$modelImportStatusEnum_authFailed,
  _$modelImportStatusEnum_importing,
  _$modelImportStatusEnum_mapping,
  _$modelImportStatusEnum_waitingToPush,
  _$modelImportStatusEnum_pushing,
  _$modelImportStatusEnum_complete,
  _$modelImportStatusEnum_setup,
  _$modelImportStatusEnum_unknown,
  _$modelImportStatusEnum_detectionFoundMultiple,
  _$modelImportStatusEnum_detectionFoundNothing,
  _$modelImportStatusEnum_detectionNeedsAuth,
]);

Serializer<ModelImport> _$modelImportSerializer = new _$ModelImportSerializer();
Serializer<ModelImportStatusEnum> _$modelImportStatusEnumSerializer =
    new _$ModelImportStatusEnumSerializer();

class _$ModelImportSerializer implements StructuredSerializer<ModelImport> {
  @override
  final Iterable<Type> types = const [ModelImport, _$ModelImport];
  @override
  final String wireName = 'ModelImport';

  @override
  Iterable<Object> serialize(Serializers serializers, ModelImport object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.vcs != null) {
      result
        ..add('vcs')
        ..add(serializers.serialize(object.vcs,
            specifiedType: const FullType(String)));
    }
    if (object.useLfs != null) {
      result
        ..add('use_lfs')
        ..add(serializers.serialize(object.useLfs,
            specifiedType: const FullType(String)));
    }
    if (object.vcsUrl != null) {
      result
        ..add('vcs_url')
        ..add(serializers.serialize(object.vcsUrl,
            specifiedType: const FullType(String)));
    }
    if (object.svcRoot != null) {
      result
        ..add('svc_root')
        ..add(serializers.serialize(object.svcRoot,
            specifiedType: const FullType(String)));
    }
    if (object.tfvcProject != null) {
      result
        ..add('tfvc_project')
        ..add(serializers.serialize(object.tfvcProject,
            specifiedType: const FullType(String)));
    }
    if (object.status != null) {
      result
        ..add('status')
        ..add(serializers.serialize(object.status,
            specifiedType: const FullType(ModelImportStatusEnum)));
    }
    if (object.statusText != null) {
      result
        ..add('status_text')
        ..add(serializers.serialize(object.statusText,
            specifiedType: const FullType(String)));
    }
    if (object.failedStep != null) {
      result
        ..add('failed_step')
        ..add(serializers.serialize(object.failedStep,
            specifiedType: const FullType(String)));
    }
    if (object.errorMessage != null) {
      result
        ..add('error_message')
        ..add(serializers.serialize(object.errorMessage,
            specifiedType: const FullType(String)));
    }
    if (object.importPercent != null) {
      result
        ..add('import_percent')
        ..add(serializers.serialize(object.importPercent,
            specifiedType: const FullType(int)));
    }
    if (object.commitCount != null) {
      result
        ..add('commit_count')
        ..add(serializers.serialize(object.commitCount,
            specifiedType: const FullType(int)));
    }
    if (object.pushPercent != null) {
      result
        ..add('push_percent')
        ..add(serializers.serialize(object.pushPercent,
            specifiedType: const FullType(int)));
    }
    if (object.hasLargeFiles != null) {
      result
        ..add('has_large_files')
        ..add(serializers.serialize(object.hasLargeFiles,
            specifiedType: const FullType(bool)));
    }
    if (object.largeFilesSize != null) {
      result
        ..add('large_files_size')
        ..add(serializers.serialize(object.largeFilesSize,
            specifiedType: const FullType(int)));
    }
    if (object.largeFilesCount != null) {
      result
        ..add('large_files_count')
        ..add(serializers.serialize(object.largeFilesCount,
            specifiedType: const FullType(int)));
    }
    if (object.projectChoices != null) {
      result
        ..add('project_choices')
        ..add(serializers.serialize(object.projectChoices,
            specifiedType: const FullType(
                BuiltList, const [const FullType(ImportProjectChoices)])));
    }
    if (object.message != null) {
      result
        ..add('message')
        ..add(serializers.serialize(object.message,
            specifiedType: const FullType(String)));
    }
    if (object.authorsCount != null) {
      result
        ..add('authors_count')
        ..add(serializers.serialize(object.authorsCount,
            specifiedType: const FullType(int)));
    }
    if (object.url != null) {
      result
        ..add('url')
        ..add(serializers.serialize(object.url,
            specifiedType: const FullType(String)));
    }
    if (object.htmlUrl != null) {
      result
        ..add('html_url')
        ..add(serializers.serialize(object.htmlUrl,
            specifiedType: const FullType(String)));
    }
    if (object.authorsUrl != null) {
      result
        ..add('authors_url')
        ..add(serializers.serialize(object.authorsUrl,
            specifiedType: const FullType(String)));
    }
    if (object.repositoryUrl != null) {
      result
        ..add('repository_url')
        ..add(serializers.serialize(object.repositoryUrl,
            specifiedType: const FullType(String)));
    }
    if (object.svnRoot != null) {
      result
        ..add('svn_root')
        ..add(serializers.serialize(object.svnRoot,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ModelImport deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ModelImportBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'vcs':
          result.vcs = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'use_lfs':
          result.useLfs = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'vcs_url':
          result.vcsUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'svc_root':
          result.svcRoot = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'tfvc_project':
          result.tfvcProject = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
                  specifiedType: const FullType(ModelImportStatusEnum))
              as ModelImportStatusEnum;
          break;
        case 'status_text':
          result.statusText = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'failed_step':
          result.failedStep = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'error_message':
          result.errorMessage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'import_percent':
          result.importPercent = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'commit_count':
          result.commitCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'push_percent':
          result.pushPercent = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'has_large_files':
          result.hasLargeFiles = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'large_files_size':
          result.largeFilesSize = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'large_files_count':
          result.largeFilesCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'project_choices':
          result.projectChoices.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(ImportProjectChoices)]))
              as BuiltList<Object>);
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'authors_count':
          result.authorsCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'html_url':
          result.htmlUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'authors_url':
          result.authorsUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'repository_url':
          result.repositoryUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'svn_root':
          result.svnRoot = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ModelImportStatusEnumSerializer
    implements PrimitiveSerializer<ModelImportStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'auth': 'auth',
    'error': 'error',
    'none': 'none',
    'detecting': 'detecting',
    'choose': 'choose',
    'authFailed': 'auth_failed',
    'importing': 'importing',
    'mapping': 'mapping',
    'waitingToPush': 'waiting_to_push',
    'pushing': 'pushing',
    'complete': 'complete',
    'setup': 'setup',
    'unknown': 'unknown',
    'detectionFoundMultiple': 'detection_found_multiple',
    'detectionFoundNothing': 'detection_found_nothing',
    'detectionNeedsAuth': 'detection_needs_auth',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'auth': 'auth',
    'error': 'error',
    'none': 'none',
    'detecting': 'detecting',
    'choose': 'choose',
    'auth_failed': 'authFailed',
    'importing': 'importing',
    'mapping': 'mapping',
    'waiting_to_push': 'waitingToPush',
    'pushing': 'pushing',
    'complete': 'complete',
    'setup': 'setup',
    'unknown': 'unknown',
    'detection_found_multiple': 'detectionFoundMultiple',
    'detection_found_nothing': 'detectionFoundNothing',
    'detection_needs_auth': 'detectionNeedsAuth',
  };

  @override
  final Iterable<Type> types = const <Type>[ModelImportStatusEnum];
  @override
  final String wireName = 'ModelImportStatusEnum';

  @override
  Object serialize(Serializers serializers, ModelImportStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ModelImportStatusEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ModelImportStatusEnum.valueOf(
          _fromWire[serialized] ?? serialized as String);
}

class _$ModelImport extends ModelImport {
  @override
  final String vcs;
  @override
  final String useLfs;
  @override
  final String vcsUrl;
  @override
  final String svcRoot;
  @override
  final String tfvcProject;
  @override
  final ModelImportStatusEnum status;
  @override
  final String statusText;
  @override
  final String failedStep;
  @override
  final String errorMessage;
  @override
  final int importPercent;
  @override
  final int commitCount;
  @override
  final int pushPercent;
  @override
  final bool hasLargeFiles;
  @override
  final int largeFilesSize;
  @override
  final int largeFilesCount;
  @override
  final BuiltList<ImportProjectChoices> projectChoices;
  @override
  final String message;
  @override
  final int authorsCount;
  @override
  final String url;
  @override
  final String htmlUrl;
  @override
  final String authorsUrl;
  @override
  final String repositoryUrl;
  @override
  final String svnRoot;

  factory _$ModelImport([void Function(ModelImportBuilder) updates]) =>
      (new ModelImportBuilder()..update(updates)).build();

  _$ModelImport._(
      {this.vcs,
      this.useLfs,
      this.vcsUrl,
      this.svcRoot,
      this.tfvcProject,
      this.status,
      this.statusText,
      this.failedStep,
      this.errorMessage,
      this.importPercent,
      this.commitCount,
      this.pushPercent,
      this.hasLargeFiles,
      this.largeFilesSize,
      this.largeFilesCount,
      this.projectChoices,
      this.message,
      this.authorsCount,
      this.url,
      this.htmlUrl,
      this.authorsUrl,
      this.repositoryUrl,
      this.svnRoot})
      : super._();

  @override
  ModelImport rebuild(void Function(ModelImportBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModelImportBuilder toBuilder() => new ModelImportBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModelImport &&
        vcs == other.vcs &&
        useLfs == other.useLfs &&
        vcsUrl == other.vcsUrl &&
        svcRoot == other.svcRoot &&
        tfvcProject == other.tfvcProject &&
        status == other.status &&
        statusText == other.statusText &&
        failedStep == other.failedStep &&
        errorMessage == other.errorMessage &&
        importPercent == other.importPercent &&
        commitCount == other.commitCount &&
        pushPercent == other.pushPercent &&
        hasLargeFiles == other.hasLargeFiles &&
        largeFilesSize == other.largeFilesSize &&
        largeFilesCount == other.largeFilesCount &&
        projectChoices == other.projectChoices &&
        message == other.message &&
        authorsCount == other.authorsCount &&
        url == other.url &&
        htmlUrl == other.htmlUrl &&
        authorsUrl == other.authorsUrl &&
        repositoryUrl == other.repositoryUrl &&
        svnRoot == other.svnRoot;
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
                                                                            $jc($jc($jc($jc($jc(0, vcs.hashCode), useLfs.hashCode), vcsUrl.hashCode), svcRoot.hashCode),
                                                                                tfvcProject.hashCode),
                                                                            status.hashCode),
                                                                        statusText.hashCode),
                                                                    failedStep.hashCode),
                                                                errorMessage.hashCode),
                                                            importPercent.hashCode),
                                                        commitCount.hashCode),
                                                    pushPercent.hashCode),
                                                hasLargeFiles.hashCode),
                                            largeFilesSize.hashCode),
                                        largeFilesCount.hashCode),
                                    projectChoices.hashCode),
                                message.hashCode),
                            authorsCount.hashCode),
                        url.hashCode),
                    htmlUrl.hashCode),
                authorsUrl.hashCode),
            repositoryUrl.hashCode),
        svnRoot.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ModelImport')
          ..add('vcs', vcs)
          ..add('useLfs', useLfs)
          ..add('vcsUrl', vcsUrl)
          ..add('svcRoot', svcRoot)
          ..add('tfvcProject', tfvcProject)
          ..add('status', status)
          ..add('statusText', statusText)
          ..add('failedStep', failedStep)
          ..add('errorMessage', errorMessage)
          ..add('importPercent', importPercent)
          ..add('commitCount', commitCount)
          ..add('pushPercent', pushPercent)
          ..add('hasLargeFiles', hasLargeFiles)
          ..add('largeFilesSize', largeFilesSize)
          ..add('largeFilesCount', largeFilesCount)
          ..add('projectChoices', projectChoices)
          ..add('message', message)
          ..add('authorsCount', authorsCount)
          ..add('url', url)
          ..add('htmlUrl', htmlUrl)
          ..add('authorsUrl', authorsUrl)
          ..add('repositoryUrl', repositoryUrl)
          ..add('svnRoot', svnRoot))
        .toString();
  }
}

class ModelImportBuilder implements Builder<ModelImport, ModelImportBuilder> {
  _$ModelImport _$v;

  String _vcs;
  String get vcs => _$this._vcs;
  set vcs(String vcs) => _$this._vcs = vcs;

  String _useLfs;
  String get useLfs => _$this._useLfs;
  set useLfs(String useLfs) => _$this._useLfs = useLfs;

  String _vcsUrl;
  String get vcsUrl => _$this._vcsUrl;
  set vcsUrl(String vcsUrl) => _$this._vcsUrl = vcsUrl;

  String _svcRoot;
  String get svcRoot => _$this._svcRoot;
  set svcRoot(String svcRoot) => _$this._svcRoot = svcRoot;

  String _tfvcProject;
  String get tfvcProject => _$this._tfvcProject;
  set tfvcProject(String tfvcProject) => _$this._tfvcProject = tfvcProject;

  ModelImportStatusEnum _status;
  ModelImportStatusEnum get status => _$this._status;
  set status(ModelImportStatusEnum status) => _$this._status = status;

  String _statusText;
  String get statusText => _$this._statusText;
  set statusText(String statusText) => _$this._statusText = statusText;

  String _failedStep;
  String get failedStep => _$this._failedStep;
  set failedStep(String failedStep) => _$this._failedStep = failedStep;

  String _errorMessage;
  String get errorMessage => _$this._errorMessage;
  set errorMessage(String errorMessage) => _$this._errorMessage = errorMessage;

  int _importPercent;
  int get importPercent => _$this._importPercent;
  set importPercent(int importPercent) => _$this._importPercent = importPercent;

  int _commitCount;
  int get commitCount => _$this._commitCount;
  set commitCount(int commitCount) => _$this._commitCount = commitCount;

  int _pushPercent;
  int get pushPercent => _$this._pushPercent;
  set pushPercent(int pushPercent) => _$this._pushPercent = pushPercent;

  bool _hasLargeFiles;
  bool get hasLargeFiles => _$this._hasLargeFiles;
  set hasLargeFiles(bool hasLargeFiles) =>
      _$this._hasLargeFiles = hasLargeFiles;

  int _largeFilesSize;
  int get largeFilesSize => _$this._largeFilesSize;
  set largeFilesSize(int largeFilesSize) =>
      _$this._largeFilesSize = largeFilesSize;

  int _largeFilesCount;
  int get largeFilesCount => _$this._largeFilesCount;
  set largeFilesCount(int largeFilesCount) =>
      _$this._largeFilesCount = largeFilesCount;

  ListBuilder<ImportProjectChoices> _projectChoices;
  ListBuilder<ImportProjectChoices> get projectChoices =>
      _$this._projectChoices ??= new ListBuilder<ImportProjectChoices>();
  set projectChoices(ListBuilder<ImportProjectChoices> projectChoices) =>
      _$this._projectChoices = projectChoices;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  int _authorsCount;
  int get authorsCount => _$this._authorsCount;
  set authorsCount(int authorsCount) => _$this._authorsCount = authorsCount;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _htmlUrl;
  String get htmlUrl => _$this._htmlUrl;
  set htmlUrl(String htmlUrl) => _$this._htmlUrl = htmlUrl;

  String _authorsUrl;
  String get authorsUrl => _$this._authorsUrl;
  set authorsUrl(String authorsUrl) => _$this._authorsUrl = authorsUrl;

  String _repositoryUrl;
  String get repositoryUrl => _$this._repositoryUrl;
  set repositoryUrl(String repositoryUrl) =>
      _$this._repositoryUrl = repositoryUrl;

  String _svnRoot;
  String get svnRoot => _$this._svnRoot;
  set svnRoot(String svnRoot) => _$this._svnRoot = svnRoot;

  ModelImportBuilder() {
    ModelImport._initializeBuilder(this);
  }

  ModelImportBuilder get _$this {
    if (_$v != null) {
      _vcs = _$v.vcs;
      _useLfs = _$v.useLfs;
      _vcsUrl = _$v.vcsUrl;
      _svcRoot = _$v.svcRoot;
      _tfvcProject = _$v.tfvcProject;
      _status = _$v.status;
      _statusText = _$v.statusText;
      _failedStep = _$v.failedStep;
      _errorMessage = _$v.errorMessage;
      _importPercent = _$v.importPercent;
      _commitCount = _$v.commitCount;
      _pushPercent = _$v.pushPercent;
      _hasLargeFiles = _$v.hasLargeFiles;
      _largeFilesSize = _$v.largeFilesSize;
      _largeFilesCount = _$v.largeFilesCount;
      _projectChoices = _$v.projectChoices?.toBuilder();
      _message = _$v.message;
      _authorsCount = _$v.authorsCount;
      _url = _$v.url;
      _htmlUrl = _$v.htmlUrl;
      _authorsUrl = _$v.authorsUrl;
      _repositoryUrl = _$v.repositoryUrl;
      _svnRoot = _$v.svnRoot;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModelImport other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ModelImport;
  }

  @override
  void update(void Function(ModelImportBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ModelImport build() {
    _$ModelImport _$result;
    try {
      _$result = _$v ??
          new _$ModelImport._(
              vcs: vcs,
              useLfs: useLfs,
              vcsUrl: vcsUrl,
              svcRoot: svcRoot,
              tfvcProject: tfvcProject,
              status: status,
              statusText: statusText,
              failedStep: failedStep,
              errorMessage: errorMessage,
              importPercent: importPercent,
              commitCount: commitCount,
              pushPercent: pushPercent,
              hasLargeFiles: hasLargeFiles,
              largeFilesSize: largeFilesSize,
              largeFilesCount: largeFilesCount,
              projectChoices: _projectChoices?.build(),
              message: message,
              authorsCount: authorsCount,
              url: url,
              htmlUrl: htmlUrl,
              authorsUrl: authorsUrl,
              repositoryUrl: repositoryUrl,
              svnRoot: svnRoot);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'projectChoices';
        _projectChoices?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ModelImport', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
