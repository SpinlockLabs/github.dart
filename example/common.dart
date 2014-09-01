import "dart:html";

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
    
    var fetched = false;
    var ready = false;
    
    String code;
    
    window.addEventListener("message", (event) {
      if (event.data['command'] == "ready") {
        ready = true;
        if (fetched) {
          popup.postMessage({
            "command": "code",
            "code": code
          }, window.location.href);
        }
      }
    });
    
    HttpRequest.getString(script).then((c) {
      code = c;
      fetched = true;
      if (ready) {
        popup.postMessage({
          "command": "code",
          "code": code
        }, window.location.href);
      }
    });
  });
}

Map<String, String> get queryString {
  var url = window.location.href;
  if (url.contains("?")) {
    return Uri.splitQueryString(url.substring(url.indexOf('?') + 1));
  } else {
    return {};
  }
}