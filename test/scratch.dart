import "package:github/server.dart";

void main() {
  initGitHub();
  
  showcases().listen((info) {
    showcase(info).then((showcase) {
      print(showcase.title + ":");
      for (var item in showcase.items) {
        print(" - ${item.name}");
      }
    });
  });
}