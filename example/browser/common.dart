import "dart:html";
import "dart:js";
import "dart:convert" show HtmlEscape;

void init(String script) {

  document.querySelector("#view-source").onClick.listen((_) {

    if (!window.navigator.userAgent.contains("(Dart)")) {
      JsObject popup = context.callMethod("open", ["about:blank", "View Source"]);

      JsObject doc = popup['document'];

      HttpRequest.getString(script).then((code) {
        doc.callMethod("write", ["""
        <h1>${script}</h1>

        <pre class="prettyprint lang-dart">${new HtmlEscape().convert(code)}</pre>

        <script src="https://google-code-prettify.googlecode.com/svn/loader/run_prettify.js"></script>
        """]);
      });
      return;
    } else {
      Window popup = window.open("about:blank", "View Source");

      var textArea = new PreElement();
      textArea.classes.addAll(["prettyprint", "lang-dart"]);
      var body = popup.document.querySelector("body");
      body.append(new HeadingElement.h1()..appendText(script));
      body.append(new ScriptElement()..src = "https://google-code-prettify.googlecode.com/svn/loader/run_prettify.js");
      body.append(textArea);
      HttpRequest.getString(script).then((data) {
        textArea.appendText(data);
      });
    }
  });
}
