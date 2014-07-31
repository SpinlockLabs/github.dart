import "dart:html";
import "dart:async" show Timer;

void init(String script) {

  document.querySelector("#view-source").onClick.listen((_) {
    var popup = window.open("view_source.html", "View Source");
    
    HttpRequest.getString(script).then((code) {
      new Timer(new Duration(seconds: 1), () {
        popup.postMessage({
          "command": "code",
          "code": code
        }, window.location.href);
      });
    });
  });
}
