import 'dart:html';

Future<void> openUrl(String url) async {
  window.open(url, '_self');
}

Future<void> openUrlInNewTab(String url) async {
  window.open(url, '_blank');
}