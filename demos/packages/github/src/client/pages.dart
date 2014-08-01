part of github.client;

class RepositoryPages {
  final GitHub github;
  
  String cname;
  String status;
  
  @ApiName("custom_404")
  bool custom404;
  
  RepositoryPages(this.github);
  
  static RepositoryPages fromJSON(GitHub github, input) {
    var pages = new RepositoryPages(github);
    pages.cname = input['cname'];
    pages.status = input['status'];
    pages.custom404 = input['custom_404'];
    return pages;
  }
}