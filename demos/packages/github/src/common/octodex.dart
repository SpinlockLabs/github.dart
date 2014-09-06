part of github.common;

class Octocat {
  String name;
  String image;
  String url;
}

Stream<Octocat> _octocats(GitHub github, bool cors) {
  var controller = new StreamController();

  var u = "feeds.feedburner.com/Octocats.xml";
  
  github.client.request(new http.Request("${cors ? "http://www.corsproxy.com/" : "http://"}${u}")).then((response) {
    var document = htmlParser.parse(response.body);
    document.querySelectorAll("entry").forEach((entry) {
      var name = entry.querySelector("title").text;
      var c = "<html><body>" + entry.querySelector("content").innerHtml + "</body></html>";
      var content = htmlParser.parse(c);
      var image = content.querySelector("a img").attributes['src'];
      var url = entry.querySelector("link").attributes['href'];

      controller.add(new Octocat()
          ..image = image
          ..name = name
          ..url = url);
    });
    return controller.close();
  });

  return controller.stream;
}
