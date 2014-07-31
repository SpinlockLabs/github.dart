part of github.client;

class GitignoreTemplate {
  final GitHub github;
  String name;
  String source;
  
  GitignoreTemplate(this.github);
  
  static GitignoreTemplate fromJSON(GitHub github, input) {
    var template = new GitignoreTemplate(github);
    template.name = input['name'];
    template.source = input['source'];
    return template;
  }
}