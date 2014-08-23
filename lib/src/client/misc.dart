part of github.client;

/**
 * A Gitignore Template
 */
class GitignoreTemplate {
  final GitHub github;
  
  /**
   * Template Name
   */
  String name;
  
  /**
   * Template Source
   */
  String source;
  
  GitignoreTemplate(this.github);
  
  static GitignoreTemplate fromJSON(GitHub github, input) {
    var template = new GitignoreTemplate(github);
    template.name = input['name'];
    template.source = input['source'];
    return template;
  }
}