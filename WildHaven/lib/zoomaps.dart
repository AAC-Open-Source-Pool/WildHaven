import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class GoogleMapsWebView extends StatelessWidget {
  final String url;

  GoogleMapsWebView({required this.url});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Google Maps WebView"),
      ),
      body: WebView(
        initialUrl: url, // Dynamic URL for Google Maps
        javascriptMode: JavascriptMode.unrestricted, // Enable JavaScript
      ),
    );
  }
}
