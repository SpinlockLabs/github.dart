import "dart:html";
import "common.dart";

DivElement $zen;

void main() {
  init("zen.dart", onReady: () {
    $zen = querySelector("#zen");
    loadZen();
  });
}

void loadZen() {
  github.misc.getZen().then((zen) => $zen.appendText(zen));
}
