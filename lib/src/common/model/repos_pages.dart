part of github.common;

/// GitHub Pages Information
class RepositoryPages {
  /// Pages CNAME
  final String cname;

  /// Pages Status
  final String status;

  /// If the repo has a custom 404
  @JsonKey(name: "custom_404")
  final bool hasCustom404;

  RepositoryPages._({
    @required this.cname,
    @required this.status,
    @required this.hasCustom404,
  });

  static RepositoryPages fromJSON(Map<String, dynamic> input) {
    if (input == null) return null;

    return RepositoryPages._(
      cname: input['cname'],
      status: input['status'],
      hasCustom404: input['custom_404'],
    );
  }
}
