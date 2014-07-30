import "dart:html";

void init(String script) {
  
  document.querySelector("#view-source").onClick.listen((_) {
    
    if (!window.navigator.userAgent.contains("(Dart)")) {
      window.alert("Sorry! At the moment, viewing the source when compiled to JavaScript is not available.");
      return;
    }
    
    Window popup = window.open("about:blank", "View Source");
    print(popup);
    var textArea = new PreElement();
    textArea.classes.addAll(["prettyprint", "lang-dart"]);
    var body = popup.document.querySelector("body");
    body.append(new HeadingElement.h1()..appendText(script));
    body.append(new ScriptElement()..src = "https://google-code-prettify.googlecode.com/svn/loader/run_prettify.js");
    body.append(textArea);
    HttpRequest.getString(script).then((data) {
      textArea.appendText(data);
    });
  });
}