part of github.common;

class TrendingRepository {
  String rank;
  html.Element titleObject;
  String get title => titleObject.text;

  String get url => "https://github.com/${title}";
  String description;
}

class ShowcaseInfo {
  String title;
  String description;
  String url;
}

class Showcase extends ShowcaseInfo {
  DateTime lastUpdated;
  List<ShowcaseItem> items;
}

class ShowcaseItem {
  String name;
  String url;
}
