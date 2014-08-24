import "dart:html";
import "dart:async" show Timer;

void init(String script, {void onReady()}) {
  var stopwatch = new Stopwatch();
  if (onReady != null) {
    document.onReadyStateChange.listen((event) {
      if (document.readyState == ReadyState.COMPLETE) {
        stopwatch.stop();
        print("Document Finished Loading in ${stopwatch.elapsedMilliseconds}ms");
        onReady();
      }
    });
  }

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
