import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebView extends StatelessWidget {
  const WebView({super.key, required this.link});
  final dynamic link;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text(' Web View Page',style: TextStyle(color: Colors.black54),))),
      body: WebViewWidget(
        controller: WebViewController()..loadRequest(Uri.parse(link)),
      ),
    );
  }
}
