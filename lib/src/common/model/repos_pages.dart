part of github.common;

/// GitHub Pages Information
class RepositoryPages {
  /// Pages CNAME
  String cname;

  /// Pages Status
  String status;

  /// If the repo has a custom 404
  @ApiName("custom_404")
  bool hasCustom404;

  static RepositoryPages fromJSON(Map<String, dynamic> input) {
    if (input == null) return null;

    var pages = new RepositoryPages();
    pages.cname = input['cname'];
    pages.status = input['status'];
    pages.hasCustom404 = input['custom_404'];
    return pages;
  }
}
