part of github.browser;

class GitHubBrowserHelper {
  static void renderMarkdown(GitHub github, String selector, {int indent: 4}) {
    ElementList elements = document.querySelectorAll(selector);
    
    elements.removeWhere((Element it) => it.attributes.containsKey("rendered"));
    
    for (Element e in elements) {
      var txt = e.text;
      
      var md = txt.split("\n").map((it) {
        return it.length >= indent ? it.substring(indent) : it;
      }).join("\n");
      
      github.renderMarkdown(md).then((html) {
        e.hidden = false;
        e.setAttribute("rendered", "");
        e.classes.add("markdown-body");
        e.innerHtml = html;
      });
    }
  }
  
  static ImageElement createAvatarImage(User user, {int width: 128, int height: 128}) {
    return new ImageElement(src: user.avatarUrl, width: width, height: height);
  }
}
