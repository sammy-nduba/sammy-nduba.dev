
import 'dart:js' as js;

void openLink(String link) {
  js.context.callMethod("open", [link]);
}